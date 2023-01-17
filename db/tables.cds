using {managed} from '@sap/cds/common';

namespace tables;


entity Users : managed {
    key ID       : Integer;
        Name     : String(50);
        Email    : String(100);
        Password : String(50);
}

entity Products : managed {
    key ID          : Integer;
        Name        : String(50);
        Description : String(500);
        Image_URL   : String(256);
        Price       : Decimal(10, 2);

}

entity Orders : managed {
    key ID       : Integer;
        UserID   : Integer;
        Datetime : DateTime;
}

entity OrderRow : managed {
    Order_ID   : Integer;
    Product_ID : Integer;
}
