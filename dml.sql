INSERT INTO PRODUCT VALUES
(
'P01',
'Samsung Galaxy S20',
3299,
'Smartphone'
);
INSERT INTO PRODUCT VALUES
(
'P02',
'ASUS Notebook',
4599,
'PC'
);

INSERT INTO CUSTOMER VALUES
(
'CO1',
'ALI',
71321009
);

INSERT INTO CUSTOMER VALUES
(
'CO2',
'ASMA',
77345823
);

-- inset into orders table using 'SQL INSERT INTO SELECT'

INSERT INTO ORDERS(Customer_id,Product_id)
SELECT CUSTOMER.Customer_id,PRODUCT.Product_id
FROM CUSTOMER,PRODUCT
UPDATE ORDERS SET Quantity =2 WHERE ORDERS.Customer_id='C01' AND ORDERS.Product_id='P02'
UPDATE ORDERS SET Total_amount = Quantity * (SELECT Price FROM product WHERE PRODUCT.Product_id = ORDERS.Product_id)
UPDATE ORDERS SET OrderDate=NULL WHERE ORDERS.Customer_id='C01' AND ORDERS.Product_id='P02'

UPDATE ORDERS SET Quantity =1 WHERE ORDERS.Customer_id='C02' AND ORDERS.Product_id='P01'
UPDATE ORDERS SET Total_amount = Quantity * (SELECT Price FROM product WHERE PRODUCT.Product_id = ORDERS.Product_id)
UPDATE ORDERS SET OrderDate=22/05/2020 WHERE ORDERS.Customer_id='CO2' AND ORDERS.Product_id='P01'

-- you can see the results in the attached pictures

