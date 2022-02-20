create table customers
(
    id   int auto_increment
        primary key,
    name varchar(20) null,
    constraint customers_id_uindex
        unique (id)
);

create table orders
(
    customerid int null,
    orderid    int auto_increment
        primary key,
    constraint orders_orderid_uindex
        unique (orderid),
    constraint `FOREIGN KEY`
        foreign key (customerid) references customers (id)
);


