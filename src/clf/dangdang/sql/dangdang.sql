 select p.*,t.id as t_id,t.typename as t_typename,t.parent_id as t_parentId,t.mount as t_mount
     from Product p
     inner join ProductType t
     on p.ProductType_id = t.id 
     where t.parent_id = 1
     select * from product;
     select count(*)
     from Product p
     inner join ProductType t
     on p.ProductType_id = t.id 
     where t.id = 7
     
      select p.*,t.id as t_id,t.typename as t_typename,t.parent_id as t_parentId,t.mount as t_mount
     from Product p
     inner join ProductType t
     on p.ProductType_id = t.id 
     select * from product;
     select * from productType;
     select * from UserOrder;
     desc UserOrder
     select * from ShoppingAddress;
     delete from User;



---------------------------------------------------------------------------
drop table if exists Product;

drop table if exists ProductType;

drop table if exists ShoppingAddress;

drop table if exists User;

drop table if exists UserOrder;

drop table if exists orderItem;

/*==============================================================*/
/* Table: Product                                               */
/*==============================================================*/
create table Product
(
   id                   integer not null auto_increment,
   piclujing            varchar(100),
   name                 varchar(50),
   autor                varchar(50),
   oldprice             double,
   dangdangprice        double,
   putaway              date,
   bookstatus           varchar(20),
   mounts               integer,
   status               varchar(20),
   productType_id       integer,
   primary key (id)
);

insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/1.jpg','一号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/2.jpg','二号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/3.jpg','三号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/4.jpg','四号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/5.jpg','五号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/6.jpg','六号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/7.jpg','七号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/8.jpg','八号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/9.jpg','九号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/10.jpg','十号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/11.jpg','十一号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/12.jpg','十二号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/13.jpg','十三号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/14.jpg','十四号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',6);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/15.jpg','十五号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/16.jpg','十六号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/17.jpg','十七号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/18.jpg','十八号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/19.jpg','十九号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/20.jpg','二十号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/21.jpg','二十一号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/22.jpg','二十二号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/23.jpg','二十三号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/24.jpg','二十四号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);
insert into Product (piclujing,name,autor,oldprice,dangdangprice,putaway,bookstatus,mounts,status,productType_id) values('/productImages/25.jpg','二十五号李狗蛋传记','楚龙飞',999,666,now(),'Y',0,'7',7);

/*==============================================================*/
/* Table: ProductType                                           */
/*==============================================================*/
create table ProductType
(
   id                   integer not null auto_increment,
   typename             varchar(50),
   parent_id            integer,
   mount                integer,
   primary key (id)
);

insert into producttype (typename,mount) values('clf小说',24);
insert into producttype (typename,mount) values('clf青春',0);
insert into producttype (typename,mount) values('clf人文社科',0);
insert into producttype (typename,mount) values('clf管理',0);
insert into producttype (typename,mount) values('clf少儿',0);

insert into producttype (typename,parent_id,mount) values('clf当代小说',1,14);
insert into producttype (typename,parent_id,mount) values('clf近现代小说',1,10);
insert into producttype (typename,parent_id,mount) values('clf古典小说',1,0);
insert into producttype (typename,parent_id,mount) values('clf四大名著',1,0);
insert into producttype (typename,parent_id,mount) values('clf世界名著',1,0);


insert into producttype (typename,parent_id,mount) values('clf校园',2,0);
insert into producttype (typename,parent_id,mount) values('clf爱情/情感',2,0);
insert into producttype (typename,parent_id,mount) values('clf玄幻',2,10);
insert into producttype (typename,parent_id,mount) values('clf叛逆/成长',2,0);
insert into producttype (typename,parent_id,mount) values('clf原创',2,0);


insert into producttype (typename,parent_id,mount) values('clf政治',3,0);
insert into producttype (typename,parent_id,mount) values('clf经济',3,0);
insert into producttype (typename,parent_id,mount) values('clf法律',3,0);
insert into producttype (typename,parent_id,mount) values('clf哲学',3,0);
insert into producttype (typename,parent_id,mount) values('clf历史',3,0);


insert into producttype (typename,parent_id,mount) values('clf管理学',4,0);
insert into producttype (typename,parent_id,mount) values('clf战略管理',4,0);
insert into producttype (typename,parent_id,mount) values('clf市场营销',4,0);
insert into producttype (typename,parent_id,mount) values('clf商业史传',4,0);
insert into producttype (typename,parent_id,mount) values('clf电子商务',4,0);


insert into producttype (typename,parent_id,mount) values('clf0-2岁',5,0);
insert into producttype (typename,parent_id,mount) values('clf3-6岁',5,0);
insert into producttype (typename,parent_id,mount) values('clf7-8岁',5,0);
insert into producttype (typename,parent_id,mount) values('clf11-14岁',5,0);
insert into producttype (typename,parent_id,mount) values('clf儿童文学',5,0);

/*==============================================================*/
/* Table: ShoppingAddress                                       */
/*==============================================================*/
create table ShoppingAddress
(
   id                   integer not null auto_increment,
   name                 varchar(12),
   address              varchar(100),
   addressCode          varchar(20),
   telphone             varchar(12),
   phone                varchar(12),
   defaultAddress       varchar(12),
   address_status       varchar(12),
   user_id              integer,
   primary key (id)
);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   id                   integer not null auto_increment,
   email                varchar(50),
   password             varchar(50),
   nikename             varchar(50),
   registTime           date,
   status               varchar(50),
   primary key (id)
);

/*==============================================================*/
/* Table: UserOrder                                             */
/*==============================================================*/
create table UserOrder
(
   id                   integer not null auto_increment,
   order_number         varchar(30),
   totalprice           double,
   order_time           date,
   order_status         varchar(12),
   User_id              integer,
   Address_id           integer,
   primary key (id)
);

/*==============================================================*/
/* Table: orderItem                                             */
/*==============================================================*/
create table orderItem
(
   id                   integer not null auto_increment,
   order_id             integer,
   product_id           integer,
   mount                integer,
   oneprice             double,
   primary key (id)
);

alter table Product add constraint FK_productType_id foreign key (productType_id)
      references ProductType (id) on delete restrict on update restrict;

alter table ShoppingAddress add constraint FK_User_id foreign key (user_id)
      references User (id) on delete restrict on update restrict;

alter table UserOrder add constraint FK_User_id foreign key (User_id)
      references User (id) on delete restrict on update restrict;

alter table UserOrder add constraint FK_address_id foreign key (Address_id)
      references ShoppingAddress (id) on delete restrict on update restrict;

alter table orderItem add constraint FK_order_id foreign key (order_id)
      references UserOrder (id) on delete restrict on update restrict;

alter table orderItem add constraint FK_prodcut_id foreign key (product_id)
      references Product (id) on delete restrict on update restrict;
