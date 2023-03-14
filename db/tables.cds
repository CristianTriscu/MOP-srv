using {managed} from '@sap/cds/common';

namespace tables;

entity Users : managed {
    key ID       : Integer;
        Name     : String(50);
        Email    : String(100);
        Password : String(50);
}

entity PRODUCTS : managed {

    key ID                : Integer;
        NAME              : String(1024);
        GENERIC_NAME      : String(1024);
        COMPANY_NAME      : String(256);
        SHORT_DESCRIPTION : String(1024);
        PRICE             : Integer;
        LONG_DESCRIPTION  : String(1024);
        IN_STOCK          : Boolean;
        IMAGE_URL         : String;
}

entity Orders : managed {
    key ID        : Integer;
        USER_ID   : Integer;
        DATE_TIME : DateTime;
}

entity OrderRow : managed {
    ORDER_ID   : Integer;
    PRODUCT_ID : Integer;
    QUANTITY   : Integer
}

entity LOCATIONS {
    key ID        : Integer;
        LONGITUDE : Decimal(18, 7);
        LATITUDE  : Decimal(17, 7);
        NAME      : String(128);
        STREET    : String(128);
        CITY      : String(64);


}


// entity Books {
//     key id      : Integer;
//         name    : String(100);
//         authors : Association to many BooksAuthors
//                       on authors.book = $self;

// }


// entity BooksAuthors {
//     key author : Association to Authors;
//     key book   : Association to Books
// }


// entity Authors {
//     key id    : Integer;
//         name  : String(100);
//         books : Association to many BooksAuthors
//                     on books.author = $self;
// }
