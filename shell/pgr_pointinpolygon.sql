CREATE OR REPLACE FUNCTION "public"."pgr_pointinpolygon"(tbl bpchar, locatex float8, locatey float8, locatefloor bpchar)
  RETURNS "pg_catalog"."bpchar" AS $BODY$    declare     
        v_fid character varying;
    begin       
     
	execute	'SELECT fid FROM ' ||tbl||
		' WHERE floor_id = '''||locatefloor||''''
 		' AND ST_Within (ST_Geometryfromtext(''point('||locatex||' '||locatey||')'',4326),geom) = ''t'''
--  		' AND ST_Within (st_setsrid(st_makepoint('||locatex||','||locatey||'),4326),geom) = ''t'''
		into v_fid;
  
        return v_fid;          
            
    end; $BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;