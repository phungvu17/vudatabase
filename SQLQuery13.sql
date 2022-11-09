create table DanhBa(
	HoTen  nvarchar(50) not null,
	DiaChi nvarchar(255) not null,
	NgaySinh date,
	id int primary key
);
create table DienThoai(
	SoDT int primary key,
	id int foreign key references  DanhBa(id)
);

drop table DienThoai;
drop table DanhBa;

insert into DanhBa(HoTen,DiaChi,NgaySinh,id)
	values(N'Nguyễn Văn An',N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội','1978-11-18',1);
select * from DanhBa;

insert into DienThoai(SoDT,id)
	values('987654321',1),
		  ('09873452',1),
		  ('09832323',1),
		  ('09434343',1);
select * from DienThoai;


--4
select * from DanhBa;
select * from DienThoai;

--5
select * from DanhBa order by HoTen asc;
select * from DienThoai where id in
(select id from DanhBa where HoTen like N'Nguyễn Văn An');
select * from DanhBa where NgaySinh like '2009-12-12';

--6
select count(*) as SLuongSDT from DienThoai where id in 
(select id from DanhBa);
select count(*) as SoNguoi from DanhBa where NgaySinh like '0000-12-00';
select * from DanhBa a
inner join DienThoai b on a.id = b.id;