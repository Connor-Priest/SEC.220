create table customers
(
    Id           int auto_increment
        primary key,
    `First Name` varchar(20) null,
    `Last Name`  varchar(20) null,
    Company      varchar(20) null,
    constraint customers_Id_uindex
        unique (Id)
);

create table orders
(
    Product       varchar(20) null,
    Cost          int         null,
    `Customer Id` int         null,
    id            int auto_increment
        primary key,
    constraint orders_id_uindex
        unique (id),
    constraint `FOREIGN KEY`
        foreign key (`Customer Id`) references customers (Id)
);


