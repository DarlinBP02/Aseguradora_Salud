select extract(year from fecha_atencion) as año,
count (id_atencion) as atencion
from atencion
group by extract (year from fecha_atencion)