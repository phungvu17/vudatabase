create table Hang(
ten varchar(50) not null ,
diachi ntext not null ,
dienthoai varchar(15) not null primary key ,
ma varchar(20) not null ,
);

create table SanPhamMoi(
ten varchar(50) not null ,
mota nvarchar(250) ,
donvi nvarchar(50) not null ,
gia int not null check (gia >=0) default 0,
soluongSanPham int not null check (soluongSanPham >=0) default 0,
id int primary key ,
);

create table HangSanPhamMoi(
dienthoaimoi varchar(15) not null foreign key references Hang(dienthoai),
id1 int not null foreign key references SanPhamMoi(id),

);
