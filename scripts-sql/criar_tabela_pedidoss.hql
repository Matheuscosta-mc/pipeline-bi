-- Script para criar uma tabela de pedidos staging no Hive
CREATE TABLE IF NOT EXISTS staging_pedidos (
    pedido_id INT,
    cliente_id STRING,
    valor DECIMAL(10, 2),
    cidade STRING,
    data_pedido DATE
)
COMMENT 'Tabela de pedidos brutos ingeridos pelo NiFi'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/hive/warehouse/staging_pedidos';