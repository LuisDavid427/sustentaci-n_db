select distinct c.nombre 
from clientes c
join ventas v on c.id_cliente = v.id_cliente
join detalle_ventas dv on v.id_venta = dv.id_venta
where dv.id_producto = (select id_producto from productos order by precio desc limit 1);