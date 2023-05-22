create database QuanLyDiemThi;
use QuanLyDiemThi;

create table HocSinh (
	MaHS varchar(20) primary key,
	TenHS varchar(20) not null,
	NgaySinh datetime,
	Lop varchar(20) not null,
	GT varchar(20)
);

create table MonHoc (
	MaMH varchar(20) primary key,
	TenMH varchar(20),
	MaGV varchar(20)
);

create table BangDiem (
	MaHS varchar(20),
	MaMH varchar(20),
	primary key (MaHS, MaMH),
	DiemThi int,
    check (Diemthi <=10 & Diemthi >= 0),
	NgayKT datetime,
	foreign key (MaHS) references Hocsinh(MaHS),
	foreign key (MaMH) references MonHoc(MaMH)
);

create table GiaoVien (
	MaGV varchar(20) primary key,
	TenGV varchar(20),
	SDT varchar(10)
);

alter table MonHoc add foreign key (MaGV) references GiaoVien(MaGV);
alter table GiaoVien add age int;
alter table GiaoVien add check (age > 18);

insert into GiaoVien(MaGv,TenGV,SDT,age) value('GV123', 'Nguyen Van A', '0984598314',19);

