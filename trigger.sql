delimiter //
create trigger tr_descontar_stock
after insert on detalle_ventas
for each row
begin
    update productos 
    set stock = stock - new.cantidad
    where id_producto = new.id_producto;
end //
delimiter ;