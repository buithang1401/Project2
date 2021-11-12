create database PJ
Go
use PJ
Go

create table Ban (
	MaBan int primary key not null ,
	MaTang int ,
	TenBan nvarchar(50) ,
	TinhTrangBan nvarchar(10)  
)
;

create table Tang (
	MaTang int primary key not null ,
	TenTang nvarchar(50)  
)
;

create table TaiKhoan (
	MaTaiKhoan int primary key not null ,
	TenTaiKhoan nvarchar(50) ,
	MatKhau nvarchar(50)  ,
	LoaiTaiKhoan nvarchar(50)  
)
;

create table KhachHang (
	MaKhachHang int primary key not null ,
	TenKhachHang nvarchar(50) ,
	SDT int 
)
;

create table HoaDon (
	MaHoaDon int primary key not null ,
	MaBan int ,
	MaKhachHang int ,
	MaTaiKhoan int ,
	TinhTrangHoaDon nvarchar(50)  ,
	NgayLap date ,
	TongTien int
)
;

create table DanhMuc (
	MaDanhMuc int primary key not null ,
	TenDanhMuc nvarchar(50) 
)
;

create table MonAn (
	MaMonAn int primary key not null ,
	TenMonAn nvarchar(50) ,
	SL int  ,
	Gia int ,
	AnhMonAn image ,
	MaLoaiMonAn int ,
	MaDanhMuc int 
)
;

create table LoaiMonAn (
	MaLoaiMonAn int primary key not null ,
	TenLoaiMonAn nvarchar(50) 
)
;

create table ChiTietHoaDon (
	MaCTHD int primary key not null ,
	SL int ,
	MaMonAn int ,
	MaHoaDon int
)
;