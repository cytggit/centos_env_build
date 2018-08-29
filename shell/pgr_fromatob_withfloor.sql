CREATE OR REPLACE FUNCTION "public"."pgr_fromatob_withfloor"(IN tbl1 varchar, IN tbl2 varchar, IN startfloor varchar, IN endfloor varchar, IN startx float8, IN starty float8, IN endx float8, IN endy float8, OUT line1 "public"."geometry", OUT line2 "public"."geometry")
  RETURNS "pg_catalog"."record" AS $BODY$	
	declare    
		v_sql varchar;
		
		v_firstFid  varchar;--起点最近电梯的fid    
		v_endFid varchar;--起点最近电梯的fid    
		v_enddummyFid varchar;--临时起点最近电梯的fid    
		
		v_firstFloor varchar;--起点最近电梯的floorid
		v_endFloor varchar;--起点最近电梯的floorid
		v_enddummyFloor varchar;--临时起点最近电梯的floorid
		
		v_firstGeom geometry;--起点最近电梯的geom   
		v_endGeom geometry;--起点最近电梯的geom   
		v_enddummyGeom geometry;--临时起点最近电梯的geom   
		
		v_Node integer;--可到达终点的楼梯或电梯编号
		
		v_startx double precision;
		v_starty double precision;
		v_endx double precision;
		v_endy double precision;
		
		v_record record;--起点所在楼层可上下楼的所有记录
		v_dummydistance float;--临时存放起点到终点总距离
		v_dummydistancefirst float;--临时存放起点到电梯距离
		v_dummydistanceend float;--临时存放电梯到终点距离
		v_distance float;--存放起点到终点总距离
	begin    
		-- 初始化最短距离
		v_distance = 300;
		
		-- 查找起点同楼层可上下楼的电梯
		v_sql = 'select fid ,floor_id ,geom ,node from ' ||tbl1||
				' where feature_id in (''30050300'',''30050200'') and floor_id = '''||startfloor||'''';
			
		for v_record in EXECUTE v_sql loop
			EXECUTE 'select fid ,floor_id ,geom from '||tbl1||' where floor_id = '''||endfloor||''' and node = '||v_record.node||''
			into v_enddummyFid ,v_enddummyFloor ,v_enddummyGeom;
			
			if (v_enddummyFid is null)then 
				continue;
			end if;
			
			-- 计算起点到楼梯的距离
			select ST_Distance(v_record.geom,ST_GeometryFromText('point('|| startx ||' '|| starty ||')',4326))
			into v_dummydistancefirst;
			
			-- 计算终点到楼梯的距离
			select ST_Distance(v_enddummyGeom,ST_GeometryFromText('point('|| endx ||' '|| endy ||')',4326))
			into v_dummydistanceend;
						
			-- 距离之和判断是否最短
			v_dummydistance = v_dummydistancefirst + v_dummydistanceend;
			if (v_dummydistance < v_distance) then
				v_firstFid = v_record.fid;
				v_firstFloor = v_record.floor_id;
				v_firstGeom = v_record.geom; 
				
				v_endFid = v_enddummyFid;
				v_endFloor = v_enddummyFloor;
				v_endGeom = v_enddummyGeom;
				
				v_Node = v_record.node;
				v_distance = v_dummydistance;
			end if;
		end loop;				
		
		select st_x(v_firstGeom) into v_startx;
		select st_y(v_firstGeom) into v_starty;
		select st_x(v_endGeom) into v_endx;
		select st_y(v_endGeom) into v_endy;
		
		EXECUTE
			'select ST_MakeLine(route1.geom) as line1, ST_MakeLine(route2.geom) as line2 '
			'from '
				'(select geom from pgr_fromatob('''||tbl2||''','''||startfloor||''','|| startx ||','|| starty ||', '||v_startx||', '||v_starty||' )as geom)as route1,'
				'(select geom from pgr_fromatob('''||tbl2||''','''||endfloor||''','||v_endx||', '||v_endy||', '|| endx ||', '|| endy ||' )as geom )as route2'
		into line1,line2;

		return;	
	end;    
	$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

