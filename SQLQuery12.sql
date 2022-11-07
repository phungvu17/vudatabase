create table KhachHangdk(
  tenKH nvarchar(255) not null ,
  soCM  int not null primary key,
  diachi ntext not null,
  ngayDK date not null check(ngayDK<=getdate()) default getdate(),

);
create table ThueBao(
 soTB int not null primary key,
 loaiTB nvarchar(30),
 soCM int not null foreign key references KhachHangdk(soCM)

);
drop table KhachHangdk;
drop table ThueBao;
