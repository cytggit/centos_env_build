CREATE OR REPLACE FUNCTION "public"."pgr_fromatob"(tbl varchar, floorid varchar, startx float8, starty float8, endx float8, endy float8)
  RETURNS "public"."geometry" AS $BODY$     
    declare    
        v_startLine geometry;--离起点最近的线    
        v_endLine geometry;--离终点最近的线    
            
        v_startTarget integer;--距离起点最近线的终点    
        v_endSource integer;--距离终点最近线的起点    
        
        v_statpoint geometry;--在v_startLine上距离起点最近的点    
        v_endpoint geometry;--在v_endLine上距离终点最近的点    
            
        v_res geometry;--最短路径分析结果    
        
        
        v_perStart float;--v_statpoint在v_res上的百分比    
        v_perEnd float;--v_endpoint在v_res上的百分比    
        
        v_shPath geometry;--最终结果  
        tempnode float;   
    begin       
                
        --查询离起点最近的线    
        execute 'select geom ,target  from ' ||tbl||  
                ' where   floor_id = '''||floorid||'''and
                ST_DWithin(geom,ST_Geometryfromtext(''point('|| startx ||' ' || starty||') '',4326),15)   
                order by ST_Distance(geom,ST_GeometryFromText(''point('|| startx ||' '|| starty ||')'',4326))  limit 1'   
                into v_startLine ,v_startTarget;    
            
        --查询离终点最近的线    
        execute 'select geom,source  from ' ||tbl||  
                ' where  floor_id = '''||floorid||'''and
ST_DWithin(geom,ST_Geometryfromtext(''point('|| endx || ' ' || endy ||') '',4326),15)   
                order by ST_Distance(geom,ST_GeometryFromText(''point('|| endx ||' ' || endy ||')'',4326))  limit 1'   
                into v_endLine,v_endSource;    
        
        --如果没找到最近的线，就返回null    
        if (v_startLine is null) or (v_endLine is null) then    
            return null;    
        end if ;    
        
        select  ST_ClosestPoint(v_startLine, ST_Geometryfromtext('point('|| startx ||' ' || starty ||')',4326)) into v_statpoint;    
        select  ST_ClosestPoint(v_endLine, ST_GeometryFromText('point('|| endx ||' ' || endy ||')',4326)) into v_endpoint;    
        
            
        --最短路径    
        execute 'SELECT st_linemerge(st_union(st_astext(b.geom))) ' ||   
        'FROM pgr_kdijkstraPath(    
        ''SELECT id as id, source, target, length as cost FROM ' || tbl ||''','    
        ||v_startTarget || ', ' ||'array['||v_endSource||'] , false, false    
        ) a, '    
        || tbl || ' b    
        WHERE a.id3=b.id     
        GROUP by id1    
        ORDER by id1' into v_res ;    

        select st_setsrid(st_astext(v_res), 4326) into v_res ;

        --如果v_res已包含  v_startLine或 v_endLine，不做拼接
        if(v_res is null) or (ST_Distance(v_res,v_statpoint) > 0.000000001) then    
            --将v_res,v_startLine进行拼接    
            select  st_linemerge(ST_Union(array[st_astext(v_res),st_astext(v_startLine)])) into v_res;    
            select st_setsrid(st_astext(v_res), 4326) into v_res ;
        end if;    
        if(v_res is null) or (ST_Distance(v_res,v_endpoint) > 0.000000001) then 
            --将v_res,v_endLine进行拼接    
            select  st_linemerge(ST_Union(array[st_astext(v_res),st_astext(v_endLine)])) into v_res;   
            select st_setsrid(st_astext(v_res), 4326) into v_res ;
        end if;  
            
        select  ST_Line_Locate_Point(v_res, v_statpoint) into v_perStart;    
        select  ST_Line_Locate_Point(v_res, v_endpoint) into v_perEnd;    
          
        if(v_perStart > v_perEnd) then    
			select ST_Reverse(v_res) into v_res;--反序line
            --tempnode =  v_perStart;  
            --v_perStart = v_perEnd;  
			v_perStart = 1 - v_perStart;
            --v_perEnd = tempnode;  
			v_perEnd = 1 - v_perEnd;
        end if;  
          
        --截取v_res    
        SELECT ST_Line_SubString(v_res,v_perStart, v_perEnd) into v_shPath;    
             
        return v_shPath;    
        
            
            
    end;    
    $BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100;