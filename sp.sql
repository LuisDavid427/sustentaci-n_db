delimiter //
create procedure sp_historial_cliente(in p_id_cliente int)
begin
    select p.nombre, dv.cantidad, v.fecha
    from productos p
    join detalle_ventas dv on p.id_producto = dv.id_producto
    join ventas v on dv.id_venta = v.id_venta
    where v.id_cliente = p_id_cliente;
end //
delimiter ;