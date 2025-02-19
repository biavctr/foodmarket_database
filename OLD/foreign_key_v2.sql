/*tell which database you will use*/
USE FOODMARKET;

ALTER TABLE `SESSIONS`
ADD CONSTRAINT `FK_SESSIONS_1`
  FOREIGN KEY (`ACCOUNT_ID`)
  REFERENCES `ACCOUNTS` (`ACCOUNT_ID`);

ALTER TABLE `LOCATIONS`
ADD CONSTRAINT `FK_LOCATIONS_1`
  FOREIGN KEY (`SESSION_ID`)
  REFERENCES `SESSIONS` (`SESSION_ID`);

ALTER TABLE `CARTS`
ADD CONSTRAINT `FK_CART_1`
  FOREIGN KEY (`SESSION_ID`)
  REFERENCES `SESSIONS` (`SESSION_ID`);

ALTER TABLE `CART_ITEMS`
ADD CONSTRAINT `FK_CART_ITEMS_1`
  FOREIGN KEY (`ITEM_ID`)
  REFERENCES `CATALOG_ITEMS` (`ITEM_ID`);

ALTER TABLE `CART_ITEMS`
ADD CONSTRAINT `FK_CART_ITEMS_2`
  FOREIGN KEY (`CART_ID`)
  REFERENCES `CARTS` (`CART_ID`);

ALTER TABLE `PAYMENTS`
ADD CONSTRAINT `FK_PAYMENTS_1`
  FOREIGN KEY (`CART_ID`)
  REFERENCES `CARTS` (`CART_ID`);
  
ALTER TABLE `CATALOG_ITEMS`
ADD CONSTRAINT `FK_CATALOG_ITEMS_1`
  FOREIGN KEY (`MERCHANT_ID`)
  REFERENCES `MERCHANTS` (`MERCHANT_ID`);
  
ALTER TABLE `ORDERS`
ADD CONSTRAINT `FK_ORDERS_1`
  FOREIGN KEY (`CART_ID`)
  REFERENCES `CARTS` (`CART_ID`);

ALTER TABLE `ORDERS`
ADD CONSTRAINT `FK_ORDERS_2`
  FOREIGN KEY (`PAYMENT_ID`)
  REFERENCES `PAYMENTS` (`PAYMENT_ID`);
  
ALTER TABLE `RATINGS`
ADD CONSTRAINT `FK_RATINGS_1`
  FOREIGN KEY (`ORDER_ID`)
  REFERENCES `ORDERS` (`ORDER_ID`);