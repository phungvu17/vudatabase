select * from Hang;
select * from SanPham;

select * from Hang order by Tenhang desc;
select * from SanPhamMoi order by Gia desc;
select MaHang,Diachi ,Dienthoai from Hang where Tenhang like 'Asus' ;
select * from SanPhamMoi where Soluong <11;
select tenSP,Mota,Donvi,Gia,Soluong from SanPhamMoi,Hang where Tenhang like 'Asus' ;

select count(*) as SoHang from Hang ;
select count(*) as SoluongSanPham from SanPhamMoi ;
select sum(Soluong) as Tongsoluong from SanPhamMoi;
