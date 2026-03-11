select cl.nombre as cliente, v.fecha, p.nombre as producto, cat.nombre as categoria
from clientes cl
join ventas v on cl.id_cliente = v.id_cliente
join detalle_ventas dv on v.id_venta = dv.id_venta
join productos p on dv.id_producto = p.id_producto
join categorias cat on p.id_categoria = cat.id_categoria
where cl.nombre = 'luis sanchez';