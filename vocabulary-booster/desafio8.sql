SELECT
c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o. OrderDate AS `Data do pedido`
FROM w3schools.orders o
LEFT JOIN w3schools.customers c ON c.CustomerID = o.CustomerID
LEFT JOIN w3schools.shippers s ON o.ShipperID = s.ShipperID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
