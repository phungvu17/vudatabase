-- liệt kê 
select * from SanPham ;
select ten as productName,donvi as unit,gia as price from SanPham;
-- lọc
select * from SanPham where gia >150 and gia<1000;
select * from SanPham where gia >100 or donvi like N'chiếc';
select * from SanPham where  id = 1  or id = 3 or id = 10;
select * from SanPham where id in (1,3,5,6,7,8,9); 

-- tìm kiếm 
select * from SanPham where ten like 'Máy%';-- start of M
select * from SanPham where ten like '%mới';-- end of
select * from SanPham where ten like '%nh%';-- contain
-- sắp xếp 
select * from SanPham order by gia asc ;
select * from SanPham order by gia desc ;
-- lấy theo số lượng 
select top 1 * from SanPham order by gia desc ;
select top 50 percent * from SanPham order by gia desc ;

select top 1 * from DonHang order by tongtien desc ;
-- thống kê 
select count(*)from DonHang;
select count(*)from SanPham;

select sum(tongtien)as doanhthu from DonHang;
select avg(tongtien)as trungbinh from DonHang;

select * from DonHang;
--thống kê dạng nhóm 
select count(*), dienthoai from DonHang group by dienthoai;
select sum(tongtien), dienthoai from DonHang group by dienthoai;
select avg(tongtien), dienthoai from DonHang group by dienthoai;


select ten from KhachHang;
select ten from SanPham;
select * from KhachHang order by ten ;
select * from SanPham order by gia desc;
select ten from SanPham;
select count(*) as KhachHang from KhachHang;
select count(*) as DaBan from DonHang;
select sum(tongtien) as Tongtien from DonHang;