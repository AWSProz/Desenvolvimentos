DELIMITER $$
CREATE PROCEDURE RelatorioQuantidadeProdutosCompradosPorDia()
BEGIN
    SELECT
        DataCompra,
        COUNT(*) AS QuantidadeProdutosComprados
    FROM
        Compras
    GROUP BY
        DataCompra;
END;
$$
DELIMITER ;

CALL RelatorioQuantidadeProdutosCompradosPorDia();