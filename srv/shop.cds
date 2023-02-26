using {tables} from '../db/tables';
using {views} from '../db/views';

service Shop {

    entity Products    as projection on tables.PRODUCTS {
        *
    };

    entity Orders      as projection on tables.Orders;
    entity Users       as projection on tables.Users;
    entity ViewExample as projection on views.ProductsForOrder;
    action submitOrder(orderDetails : LargeString) returns LargeString;

}
