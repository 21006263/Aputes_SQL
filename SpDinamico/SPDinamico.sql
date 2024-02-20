--sp dinamicos

--EXEC SEL_Productos 'I'
--EXEC SEL_Productos 'N'
--EXEC SEL_Productos 'P'
--CREATE Proc SEL_Productos(
ALTER Proc SEL_Productos(
			@orden char(1)
)
AS

DECLARE @script nvarchar(MAX)
DECLARE @ordenby nvarchar(500)
--DECLARE @orden char(1) -- Asegúrate de que @orden está declarado y tiene un valor

SET @script = 'SELECT productID, name, listprice FROM Production.Product '

SET @ordenby = CASE 
    WHEN @orden = 'N' THEN 'name'
    WHEN @orden = 'I' THEN 'productID'
    WHEN @orden = 'P' THEN 'listprice'
    ELSE 'productID' -- Valor por defecto en caso de que @orden no coincida con 'N', 'I' o 'P'
END

SET @script = @script + ' ORDER BY ' + @ordenby
--select @script
EXEC SP_EXECUTESQL @script
