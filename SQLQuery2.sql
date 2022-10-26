create table BoPhan(
ten nvarchar(100) not null,
ma varchar(70) primary key,

);

create table ThietBi(
ten nvarchar(100) not null,
ma varchar(70) primary key ,
soluong int not null check( soluong >0)  
);

create table NhanVien(
ten varchar(100)not null,
ngaysinh date not null,
bangcap varchar(50) not null,
mucluong decimal(12,4) not null check (mucluong > 0 ),
diachi varchar(100) not null,
dienthoai ntext primary key not null,
chucvu varchar(70)not null,
bophan varchar(70) not null foreign key references BoPhan(ma),

);

create table NhanVienThietBi(
dienthoainv ntext not null  foreign key references NhanVien(dienthoai),
matb varchar(70) not null foreign key references ThietBi(ma)

);
