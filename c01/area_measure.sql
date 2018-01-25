/*measures area in a natural earth datalayer for name
 'ne_10m_admin_1_states_provinces_lakes'
 by Megan Reed
 January 25, 2018*/

select
name,
ST_Area(ST_Transform(geom, 5070))/1000000 As "area in square kilometers"
from
ne_10m_admin_1_states_provinces_lakes
where
name in ('Texas', 'Alaska', 'Kentucky') --name is the attribute name
order by
"area in square kilometers" desc 
