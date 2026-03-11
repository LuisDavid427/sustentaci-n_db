create view vista_facturacion as
select v.id_venta, v.fecha, cl.nombre as cliente, sum(dv.cantidad * dv.precio_unitario) as total
from ventas v
join clientes cl on v.id_cliente = cl.id_cliente
join detalle_ventas dv on v.id_venta = dv.id_venta
group by v.id_venta;