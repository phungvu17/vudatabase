create table DangKyCungCap(
maDKCC varchar(50) not null  primary key ,
maNhaCC varchar(50) not null ,
maLoaiDV varchar(50) not null , 
DongXe varchar(40) not null ,
maMP varchar(50) not null ,
NgayBatDauCungCap date not null check (NgayBatDauCungCap<= getdate() ) default getdate(),
NgayKetThucCungCap date not null check ( NgayKetThucCungCap > NgayBatDauCungCap ),

);

create table NhaCungCap(
ma varchar(20) not null primary key ,
ten varchar(50) not null,
diachi ntext not null ,
sdt varchar(20) not null ,
masothue varchar(50) not null,
);
create table LoaiDichVu(
maLoaiDichVu varchar(20) not null primary key ,
tenLoaiDichVu varchar(30) not null ,


);
create table MucPhi(
MaMP varchar(20) not null primary key ,
DonGia decimal(12,4) not null check(DonGia >0),
MoTa nvarchar(250) ,

);
 create table DongXe(
 DongXe varchar(20) not null primary key ,
 HangXe varchar(30) not null ,
 SoChoNgoi int not null ,
 
 );
 
