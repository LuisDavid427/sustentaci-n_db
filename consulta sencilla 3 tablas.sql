
select v.id_venta, p.nombre as articulo, c.nombre as categoria
from detalle_ventas dv
join productos p on dv.id_producto = p.id_producto
join categorias c on p.id_categoria = c.id_categoria
join ventas v on dv.id_venta = v.id_venta;