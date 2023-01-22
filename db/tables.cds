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
    key ID       : Integer;
        UserID   : Integer;
        Datetime : DateTime;
}

entity OrderRow : managed {
    Order_ID   : Integer;
    Product_ID : Integer;
}


entity Books {
    key id      : Integer;
        name    : String(100);
        authors : Association to many BooksAuthors
                      on authors.book = $self;

}


entity BooksAuthors {
    key author : Association to Authors;
    key book   : Association to Books
}


entity Authors {
    key id    : Integer;
        name  : String(100);
        books : Association to many BooksAuthors
                    on books.author = $self;
}
