REM   Script: Final Project
REM   Final Project . 

create table coffee_shop 
( 
shop_id number(5) primary key, 
coffee_name varchar2(40) unique, 
status varchar2(10) not null, 
Address Varchar2(20) not null, 
phone_number number(10) not null 
);

alter table coffee_shop 
modify address varchar2(50);

insert into coffee_shop 
values(01234,'Half million','open','Winter Wonderland,King Fahd Road Riyadh','0112930451');

insert into coffee_shop 
values(11234,'Starbuks','open','M.H.Alshaya Office-Riyadh',0549310496);

insert into coffee_shop 
values(21234,'Tim hortonze','open','Tahlia street Prince Muhammad Bin Abdulaziz Road',0112791815);

insert into coffee_shop 
values(31234,'Dunkin Donuts','open','Anas Bin Malek, Riyad',0118255554);

create table cashirs 
( 
employee_id number(5) primary key , 
Cashir_Name varchar2(10) not null , 
salary number(7,2) not null , 
Skills varchar2(30) , 
phone_number number(10), 
shop_id number(5), 
coffee_name varchar2(40) not null, 
constraint shop_id_fk foreign key (shop_id) references coffee_shop(shop_id), 
constraint coffee_namefk foreign key (coffee_name) references coffee_shop(coffee_name) 
);

alter table cashirs 
modify cashir_name varchar2(40);

insert into cashirs 
values(11221,'Omar Ali',4500,'Speaks fluent English',0511272200,01234,'Half million');

insert into cashirs 
values(11222,'Jamal mohammed',4500,'Speaks fluent English',0520988032,01234,'Half million');

insert into cashirs 
values(11223,'Sultan Ahmed',4500,'Speaks fluent English',0554590811,01234,'Half million');

insert into cashirs 
values(3312,'Jane Kyung',5000,'Quick to work',0533332121,11234,'Starbuks');

insert into cashirs 
values(3322,'San Hai',5000,'Work under pressure',0511123120,11234,'Starbuks');

insert into cashirs 
values(3323,'Soo Yun',5000,'Fun and enthusiasm',0523980110,11234,'Starbuks');

insert into cashirs 
values(12345,'Kim',5000,'Quick to work',0512887900,21234,'Tim hortonze');

insert into cashirs 
values(12344,'jong',5000,'Work under pressure',0512887990,21234,'Tim hortonze');

insert into cashirs 
values(12343,'Ali Khan',5000,'Fun and enthusiasm',0512887901,21234,'Tim hortonze');

insert into cashirs 
values(54321,'Saud Khaled',4500,'Quick to work',0512232901,31234,'Dunkin Donuts');

insert into cashirs 
values(55321,'Ahmed Jamal',4500,'Work under pressure',0512583901,31234,'Dunkin Donuts');

insert into cashirs 
values(56321,'Mustafa Zakaria',4500,'Fun and enthusiasm',0512512341,31234,'Dunkin Donuts');

 create table Barista 
( 
Emploee_id number(5) primary key , 
the_Name varchar2(20) not null , 
salary number(7,2) not null, 
phone_number number(10) ,  
experience varchar2(50) , 
Skills varchar2(30) , 
shop_id number(5), 
coffee_name varchar2(40) not null, 
constraint Barista_shop_id_fk foreign key (shop_id) references coffee_shop(shop_id), 
constraint Barista_coffee_namefk foreign key (coffee_name) references coffee_shop(coffee_name));

insert into Barista  
values(11122,'Sultan Ali',7000,0545555100,'experience preparing coffee from three years ago','Dealing with the team',01234,'Half million');

insert into Barista  
values(11133,'Chung-Hee',7500,0545123100,'experience for more than 5 years','manage the team',01234,'Half million');

insert into Barista  
values(11144,'Sara Ahmed',7500,0545123543,'Experience in the market and barista 4years ago','work under pressure',01234,'Half million');

insert into Barista  
values(33122,'Hyun',7000,0526661231,'pre-barista at Starbucks branches in Korea','work under pressure',11234,'Starbuks');

insert into Barista  
values(32122,'Myung-Hee',7000,0544661231,'preparing coffee for 5 years','manage the team',11234,'Starbuks');

insert into Barista  
values(22122,'Saud',7000,0544622127,'preparing coffee for 4years.','Work fast fun person',11234,'Starbuks');

insert into Barista  
values(11211,'Nawaf Mohammed',6500,0533126789,'preparing coffee for 5 years','Work fast fun person',21234,'Tim hortonze');

insert into Barista  
values(21211,'Young-Nam',7500,052345789,'preparing coffee for 7 years','manage the team',21234,'Tim hortonze');

insert into Barista  
values(31211,'Hwa-Young',7000,052123489,'preparing coffee for 5 years','work under pressure',21234,'Tim hortonze');

insert into Barista  
values(32211,'Abdullah',5500,0599098932,'preparing coffee for 3 years','work under pressure',31234,'Dunkin Donuts');

insert into Barista  
values(42211,'Adam Khan',6000,0599091112,'preparing coffee for 5 years','Work fast fun person',31234,'Dunkin Donuts');

insert into Barista  
values(41211,'Ha-Neul',6500,0511291112,'preparing coffee for 6 years','manage the team',31234,'Dunkin Donuts');

create table Assistant_Barista 
( 
Employee_id number(5) primary key , 
emp_name varchar2(20) not null , 
salary number(7,2), 
Barista_id number(5), 
shop_id number(5), 
constraint id_barista_fk foreign key (Barista_id) references Barista(Emploee_id), 
constraint sho_id_fk foreign key (shop_id) references coffee_shop(shop_id) 
);

insert into Assistant_Barista 
values (56789,'Omran',3500,11122,01234);

insert into Assistant_Barista 
values (56890,'Sami',3500,11133,01234);

insert into Assistant_Barista 
values (56812,'Salma',3500,11144,01234);

insert into Assistant_Barista 
values (52812,'Islam',3500,33122,11234);

insert into Assistant_Barista 
values (52811,'Maher',3500,32122,11234);

insert into Assistant_Barista 
values (52822,'Azam',3500,22122,11234);

insert into Assistant_Barista 
values (52833,'Malak',3500,21211,21234);

insert into Assistant_Barista 
values (52853,'Ahmed',3500,11211,21234);

insert into Assistant_Barista 
values (52810,'Samar',3500,31211,21234);

insert into Assistant_Barista 
values(22222,'Layla',3200,32211,31234);

insert into Assistant_Barista 
values(22221,'Ali',3200,42211,31234);

insert into Assistant_Barista 
values(22223,'Turki',3200,41211,31234);

create table Customer 
( 
Customer_id number(5) primary key , 
Cust_name varchar2(20) not null , 
Age number(2) , 
Address varchar2(20) , 
phone_number number(10) 
);

insert into Customer 
values(12345,'SALEM',20,Null,0512187907);

insert into Customer 
values(54321,'Omar',33,'Riyadh Narjes',NULL);

insert into Customer 
values(12341,'Ali',12,Null,Null);

insert into Customer 
values(22345,'Haya',33,Null,Null);

insert into Customer 
values(12342,'Amira',17,Null,Null);

insert into Customer 
values(12346,'Noura',20,Null,Null);

insert into Customer 
values(12245,'Mazen',19,Null,Null);

insert into Customer 
values(11345,'Fahad',42,Null,Null);

insert into Customer 
values(12545,'Sara',22,Null,Null);

insert into Customer 
values(12332,'Rayan',23,Null,Null);

insert into Customer 
values(12344,'Nawaf',22,Null,Null);

insert into Customer 
values(12555,'Salman',22,Null,Null);

insert into Customer 
values(12522,'Ibrahim',22,Null,Null);

insert into Customer 
values(12511,'Fayz',42,Null,Null);

insert into Customer 
values(11145,'Samira',32,Null,Null);

insert into Customer 
values(12115,'Saad',22,Null,Null);

insert into Customer 
values(12145,'Mohammed',40,Null,Null);

create table Orders 
( 
Order_number number(5) primary key , 
additions varchar2(20) , 
Order_name varchar2(15) not null , 
Description varchar2(15) , 
Costo_id number(5) , 
Time_taken_to_prepaper varchar2(30) , 
Barsta_id number(5) , 
constraint Customer_id_FK foreign key (Costo_id) references Customer(customer_id), 
Constraint Barista_id_fk foreign key (barsta_id) references Barista(Emploee_id));

alter table Orders 
modify Order_name varchar2(40);

alter table Orders 
modify Description varchar2(40);

insert into Orders 
values(1,Null,'Black Coffee','Small size',12345,Null,11122);

insert into Orders 
values(2,Null,'Latte','Large size',54321,Null,11122);

insert into Orders 
values(3,Null,'Espresso','Regular',12341,Null,11122);

insert into Orders 
values(4,Null,'Signature','Regular',22345,Null,11122);

insert into Orders 
values(5,Null,'Piccolo','Regular',12342,Null,11133);

insert into Orders 
values(11,Null,'Cappuccino','medium',12346,Null,33122);

insert into Orders 
values(12,Null,'American','medium',12245,Null,22122);

insert into Orders 
values(13,Null,'Espresso','Triple',11345,Null,32122);

insert into Orders 
values(14,Null,'White Chocolate Mocha','Medium',12545,Null,22122);

insert into Orders 
values(20,Null,'Caramel macchiato','Medium',12332,Null,11211);

insert into Orders 
values(20,Null,'Caramel macchiato','Medium',12332,Null,11211);

insert into Orders 
values(21,Null,'Dark Roast','Medium',12344,Null,21211);

insert into Orders 
values(22,Null,'Iced Caramel Macchiato','Medium',12555,Null,31211);

insert into Orders 
values(20,Null,'Caramel macchiato','Medium',12332,Null,11211);

insert into Orders 
values(20,Null,'Caramel macchiato','Medium',12332,Null,11211);

insert into Orders 
values(21,Null,'Dark Roast','Medium',12344,Null,21211);

insert into Orders 
values(22,Null,'Iced Caramel Macchiato','Medium',12555,Null,31211);

insert into Orders 
values(22,Null,'American','small',12522,Null,32211);

insert into Orders 
values(23,Null,'Iced American','Medium',12511,Null,32211);

insert into Orders 
values(24,Null,'Latte','Medium',11145,Null,42211);

insert into Orders 
values(25,Null,'Hot chocolate','Medium',12115,Null,41211);

insert into Orders 
values(26,Null,'Cappuccino','Medium',12145,Null,41211);

create table Bills 
( 
Shop_name varchar2(40), 
shop_id number(5) 
Bill_number number(10) primary key , 
Description varchar2(30) not null, 
total varchar2(20) not null , 
pay_ment_method varchar2(20) not null, 
amount_paid varchar2(20) not null , 
Date_today date , 
Branch_name varchar2(50) not null , 
Tax_increase varchar2(20) , 
sub_total number(4) , 
Employe_id_AS number(5), 
Employee_id_cashir number(5) , 
custo_id number(5), 
constraint Coffee_name foreign key (Shop_name) references coffee_shop(Coffee_name), 
constraint ID_cafe foreign key (Shop_id) references coffee_shop(Shop_id), 
constraint EM_ID_FK foreign key (Employee_id_cashir) references cashirs(Employee_id) , 
constraint Customerr_id_FK foreign key (custo_id) references Customer(customer_id) , 
constraint Employee_as_fk foreign key (Employe_id_AS) references Assistant_Barista(Employee_id));

create table Bills 
( 
Shop_name varchar2(40), 
shop_id number(5), 
Bill_number number(10) primary key , 
Description varchar2(30) not null, 
total varchar2(20) not null , 
pay_ment_method varchar2(20) not null, 
amount_paid varchar2(20) not null , 
Date_today date , 
Branch_name varchar2(50) not null , 
Tax_increase varchar2(20) , 
sub_total number(4) , 
Employe_id_AS number(5), 
Employee_id_cashir number(5) , 
custo_id number(5), 
constraint Coffee_name foreign key (Shop_name) references coffee_shop(Coffee_name), 
constraint ID_cafe foreign key (Shop_id) references coffee_shop(Shop_id), 
constraint EM_ID_FK foreign key (Employee_id_cashir) references cashirs(Employee_id) , 
constraint Customerr_id_FK foreign key (custo_id) references Customer(customer_id) , 
constraint Employee_as_fk foreign key (Employe_id_AS) references Assistant_Barista(Employee_id) 
);

insert into Bills  
values ('Half million',01234,00000001,'Black coffee','9.2SAR','Apple pay','9.2 SAR',Null,'Half million Winter Wonderland King Fahd Riyadh','0.15%',8,56789,11221,12345);

insert into Bills  
values ('Half million',01234,00000002,'Latte','10.15SAR','Apple pay','10.15SAR',Null,'Half million Winter Wonderland King Fahd Riyadh','0.15%',10,56789,11222,54321);

insert into Bills  
values ('Half million',01234,00000003,'Espresso','9.15SAR','Apple pay','9.15SAR',Null,'Half million Winter Wonderland King Fahd Riyadh','0.15%',9,56789,11223,12341);

insert into Bills  
values ('Half million',01234,00000004,'Signature','15.15SAR','Apple pay','15.15SAR',Null,'Half million Winter Wonderland King Fahd Riyadh','0.15%',15,56890,11221,12342);

insert into Bills  
values (11234,'Starbuks',00000010,'Cappuccino','15.15SAR','Apple pay','15.15SAR',Null,'M.H.Alshaya Office-Riyadh','0.15%',15,52812,3312,12346);

insert into Bills  
values (11234,'Starbuks',00000011,'American','13.15SAR','Cash','13.15SAR',Null,'M.H.Alshaya Office-Riyadh','0.15%',13,52822,3322,12245);

insert into Bills  
values (11234,'Starbuks',00000010,'Cappuccino','15.15SAR','Apple pay','15.15SAR',Null,'M.H.Alshaya Office-Riyadh','0.15%',15,52812,3312,12346);

insert into Bills  
values ('Starbuks',11234,00000010,'Cappuccino','15.15SAR','Apple pay','15.15SAR',Null,'M.H.Alshaya Office-Riyadh','0.15%',15,52812,3312,12346);

insert into Bills  
values ('Starbuks',11234,00000011,'American','13.15SAR','Cash','13.15SAR',Null,'M.H.Alshaya Office-Riyadh','0.15%',13,52822,3322,12245);

insert into Bills  
values ('Starbuks',11234,00000012,'Espresso','11.15SAR','Cash','11.15SAR',Null,'M.H.Alshaya Office-Riyadh','0.15%',11,52811,3323,11345);

insert into Bills  
values ('Starbuks',11234,00000013,'White Chocolate Mocha','15.15SAR','Cash','15.15SAR',Null,'M.H.Alshaya Office-Riyadh','0.15%',15,52822,3323,12545);

insert into Bills  
values ('Starbuks',11234,100000000,'Caramel macchiato','23.15SAR','Cash','23.15SAR',Null,'Tahlia street Prince Muhammad Bin Abdulaziz Road','0.15%',23,52853,12345,12332);

insert into Bills  
values ('Tim hortonze',21234,200000000,'Dark Roast','23.15SAR','Cash','23.15SAR',Null,'Tahlia street Prince Muhammad Bin Abdulaziz Road','0.15%',23,52833,12344,12344);

insert into Bills  
values ('Tim hortonze',21234,300000000,'Iced Caramel Macchiato','20.15SAR','Cash','20.15SAR',Null,'Tahlia street Prince Muhammad Bin Abdulaziz Road','0.15%',20,52810,12343,12555);

insert into Bills  
values ('Dunkin Donuts',31234,010000000,'American','10.15SAR','Apple Pay','10.15SAR',Null,'Anas Bin Malek, Riyad','0.15%',10,22222,54321,12522);

insert into Bills  
values ('Dunkin Donuts',31234,020000000,'Iced American','15.15SAR','Apple Pay','15.15SAR',Null,'Anas Bin Malek, Riyad','0.15%',15,22222,55321,12511);

insert into Bills  
values ('Dunkin Donuts',31234,030000000,'Iced American','15.15SAR','Apple Pay','15.15SAR',Null,'Anas Bin Malek, Riyad','0.15%',15,22221,56321,11145);

insert into Bills  
values ('Dunkin Donuts',31234,040000000,'Hot chocolate','15.15SAR','Apple Pay','15.15SAR',Null,'Anas Bin Malek, Riyad','0.15%',15,22223,56321,12115);

insert into Bills  
values ('Dunkin Donuts',31234,050000000,'Cappuccino','15.15SAR','Apple Pay','15.15SAR',Null,'Anas Bin Malek, Riyad','0.15%',15,22223,56321,12145);

