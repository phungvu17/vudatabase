create table Customer(
CustomerId int  primary key ,
Name nvarchar(50) not null ,
City nvarchar(50) not null ,
Country nvarchar(50) not null ,
Phone nvarchar(15) not null ,
Email nvarchar(50) not null ,
);

create table CustomerAccout(
AccoutNumber char(9) primary key ,
CustomerId int not null foreign key references  Customer(CustomerId),
Balance money ,
MinAccout money not null check (MinAccout >0) default 0 ,
);

create table CustomerTransacion(
TransactionId int primary key  ,	
AccountNumber char(9) not null foreign key references CustomerAccout(AccoutNumber) ,
TransactionDate smalldatetime not null check(TransactionDate<=getdate()) default getdate(), ,
Amount money not null,
DepositorWithdraw bit not null ,
);
drop table CustomerAccout;
drop table CustomerTransacion;

insert into Customer(CustomerId,Name,City,Country,Phone,Email)
values (N'1',N'Phung Van Vu',N'Ha Noi',N'Phu Minh',N'0962717404',N'phungvu2711@gmail.com')
select *  from  Customer;

 insert into CustomerAccout(AccoutNumber,CustomerId,Balance,MinAccout)
 values (N'123456789', N'1',N'1000',N'10')
 select * from CustomerAccout;

 insert into CustomerTransacion(TransactionId,AccountNumber, TransactionDate,Amount,DepositorWithdraw)
 values (N'56789',N'123456789',N'2022-10-26',N'500',N'1')
 select * from CustomerTransacion;


 select * from Customer 
 