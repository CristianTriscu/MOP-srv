using {tables} from './tables';

namespace views;


define view ProductsForOrder() as
    select prod.NAME from tables.PRODUCTS as prod
    inner join tables.OrderRow as ordrow
        on prod.ID = ordrow.PRODUCT_ID
    inner join tables.Orders as ord
        on ord.ID = ordrow.ORDER_ID
    where
        ORDER_ID = 1;
