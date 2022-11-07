insert into KhachHangdk(tenKh,soCM,diachi,ngayDK)
values (N'Nguyễn Nguyệt Nga','123456789',N'Hà Nội','2002-12-12')
select* from KhachHangdk;

insert into ThueBao(soTB,loaiTB,soCM)
values ('123456789',N'Trả trước','123456789')
select*from ThueBao;

---câu 4:
--ý a)
select* from KhachHangdk;
--ý b)
select*from ThueBao;

-- câu 5:
--ý a)
select a.*,b.loaiTB from KhachHangdk a inner join ThueBao b
on a.soCM = b.soCM
where b.soTB like '123456789';
--y b)
select * from KhachHangdk where soCM like '123456789';
-- y c)
select * from ThueBao where soTB in
(select soTB from KhachHangdk where soCM like'123456789');
-- y d)
select * from ThueBao where soTB in
(select soTB from  KhachHangdk where ngayDK like '2002-12-12');
-- y e)
select * from ThueBao where soTB in
(select soTB from  KhachHangdk where diachi like N'Hà Nội');

--câu 6:
--y a)
select count(*) as tonngsoKH from KhachHangdk ;
--y b)
select count(*) as tongsoTB from ThueBao ;
-- y c)
select count(*) as tongsoTB from ThueBao where soTB in

(select soTB from KhachHangdk where ngayDK like '2002-12-12');
--y d)
select * from KhachHangdk a inner join ThueBao b 
on a.soCM =b.soCM; 