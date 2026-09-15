CREATE PROCEDURE `borrar_categoria` (
in p_id_categoria int
)
BEGIN
delete from categorias
where id_categoria = p_id_categoria;
select * from categoria;
END
