USE [PBL3]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 12/26/2020 12:46:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[IDBan] [varchar](10) NOT NULL,
	[LoaiBan] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [pk_ban_idban] PRIMARY KEY CLUSTERED 
(
	[IDBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 12/26/2020 12:46:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[IDDanhMuc] [varchar](10) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
 CONSTRAINT [pk_danhmuc_iddanhmuc] PRIMARY KEY CLUSTERED 
(
	[IDDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatMon]    Script Date: 12/26/2020 12:46:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatMon](
	[IDDatMon] [varchar](10) NOT NULL,
	[IDMon] [varchar](10) NULL,
	[IDHoaDon] [varchar](10) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [pk_datmon_iddatmon] PRIMARY KEY CLUSTERED 
(
	[IDDatMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/26/2020 12:46:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[IDHoaDon] [varchar](10) NOT NULL,
	[IDBan] [varchar](10) NULL,
	[NgayXuat] [date] NULL,
	[TrangThai] [bit] NULL,
	[TongTien] [float] NULL,
	IDNguoiDung varchar(10),
	IDCustommer varchar(10) , 
	DonGia float,
	Note varchar(100)

 CONSTRAINT [pk_hoadon_idhoadon] PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 12/26/2020 12:46:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAn](
	[IDMon] [varchar](10) NOT NULL,
	[IDDanhMuc] [varchar](10) NULL,
	[TenMon] [nvarchar](50) NULL,
	[Gia] [float] NULL,
 CONSTRAINT [pk_monan_idmon] PRIMARY KEY CLUSTERED 
(
	[IDMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/26/2020 12:46:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IDNguoiDung] [varchar](10) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Chucvu] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinNguoiDung]    Script Date: 12/26/2020 12:46:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinNguoiDung](
	[IDNguoiDung] [varchar](10) NOT NULL,
	[TenNguoiDung] [nvarchar](100) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[PhoneNumber] [varchar](10) NULL,
 CONSTRAINT [pk_thongtinnguoidung_idNguoiDung] PRIMARY KEY CLUSTERED 
(
	[IDNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'101', N'Trong Nhà', 1)
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'102', N'Ngoài Trời', 1)
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'103', N'Trong Nhà', 1)
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'104', N'Ngoài Trời', 1)
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'201', N'Trong Nhà', 1)
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'202', N'Trong Nhà', 1)
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'203', N'Trong Nhà', 1)
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'301', N'Trong Nhà', 1)
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'302', N'Trong Nhà', 1)
INSERT [dbo].[Ban] ([IDBan], [LoaiBan], [TrangThai]) VALUES (N'303', N'Trong Nhà', 1)
GO
INSERT [dbo].[DanhMuc] ([IDDanhMuc], [TenDanhMuc]) VALUES (N'doan', N'Đồ ăn')
INSERT [dbo].[DanhMuc] ([IDDanhMuc], [TenDanhMuc]) VALUES (N'douong', N'Đồ uống')
GO
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'10', N'doan4', N'1013', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'11', N'doan6', N'1013', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'12', N'doan4', N'1014', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'13', N'doan7', N'1014', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'2', N'doan1', N'1011', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'3', N'doan2', N'1011', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'4', N'doan1', N'1012', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'5', N'doan2', N'1012', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'6', N'doan4', N'1012', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'7', N'doan6', N'1012', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'8', N'doan1', N'1013', 1)
INSERT [dbo].[DatMon] ([IDDatMon], [IDMon], [IDHoaDon], [SoLuong]) VALUES (N'9', N'doan2', N'1013', 1)
GO
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDBan], [NgayXuat], [TrangThai], [TongTien]) VALUES (N'1011', N'101', CAST(N'2020-12-26' AS Date), 1, 32000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDBan], [NgayXuat], [TrangThai], [TongTien]) VALUES (N'1012', N'101', CAST(N'2020-12-26' AS Date), 1, 60000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDBan], [NgayXuat], [TrangThai], [TongTien]) VALUES (N'1013', N'101', CAST(N'2020-12-26' AS Date), 1, 60000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDBan], [NgayXuat], [TrangThai], [TongTien]) VALUES (N'1014', N'101', CAST(N'2020-12-26' AS Date), 1, 45000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDBan], [NgayXuat], [TrangThai], [TongTien]) VALUES (N'1015', N'101', NULL, 0, 20000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDBan], [NgayXuat], [TrangThai], [TongTien]) VALUES (N'1021', N'102', NULL, 0, 25000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDBan], [NgayXuat], [TrangThai], [TongTien]) VALUES (N'1041', N'104', NULL, 0, 3000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDBan], [NgayXuat], [TrangThai], [TongTien]) VALUES (N'2021', N'202', NULL, 0, 20000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDBan], [NgayXuat], [TrangThai], [TongTien]) VALUES (N'3031', N'303', NULL, 0, 10000)
GO
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'doan1', N'doan', N'Cơm Cháy', 20000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'doan2', N'doan', N'Bánh Tráng Nướng', 12000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'doan3', N'doan', N'Bánh Xèo', 20000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'doan4', N'doan', N'Bánh Tráng Huế', 3000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'doan5', N'doan', N'Bánh Gạo', 20000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'doan6', N'doan', N'Cơm Chiên Trứng', 25000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'doan7', N'doan', N'Xúc Xích', 10000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'doan8', N'doan', N'Mực Nướng', 20000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'doan9', N'doan', N'Khoai Tây Chiên', 30000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'douong1', N'douong', N'Pepsi Vị Chanh Không Calo', 12000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'douong2', N'douong', N'Trà Chanh', 10000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'douong3', N'douong', N'Trà Đào', 20000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'douong4', N'douong', N'Coca', 10000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'douong5', N'douong', N'String Vàng', 10000)
INSERT [dbo].[MonAn] ([IDMon], [IDDanhMuc], [TenMon], [Gia]) VALUES (N'douong6', N'douong', N'String Dâu', 10000)
GO
INSERT [dbo].[TaiKhoan] ([IDNguoiDung], [TenDangNhap], [MatKhau], [Chucvu]) VALUES (N'manhduc01', N'duc', N'duc', N'Staff')
INSERT [dbo].[TaiKhoan] ([IDNguoiDung], [TenDangNhap], [MatKhau], [Chucvu]) VALUES (N'minhnhat17', N'nhat', N'nhat', N'Admin')
GO
INSERT [dbo].[ThongTinNguoiDung] ([IDNguoiDung], [TenNguoiDung], [GioiTinh], [NgaySinh], [PhoneNumber]) VALUES (N'manhduc01', N'Nguyễn Mạnh Đức', 1, CAST(N'2001-05-01' AS Date), N'0935283204')
INSERT [dbo].[ThongTinNguoiDung] ([IDNguoiDung], [TenNguoiDung], [GioiTinh], [NgaySinh], [PhoneNumber]) VALUES (N'minhnhat17', N'Quách Minh Nhật', 1, CAST(N'2001-11-17' AS Date), N'1234567890')
GO
ALTER TABLE [dbo].[DatMon]  WITH CHECK ADD  CONSTRAINT [fk_danhsachmon_idmon] FOREIGN KEY([IDMon])
REFERENCES [dbo].[MonAn] ([IDMon])
GO
ALTER TABLE [dbo].[DatMon] CHECK CONSTRAINT [fk_danhsachmon_idmon]
GO
ALTER TABLE [dbo].[DatMon]  WITH CHECK ADD  CONSTRAINT [fk_hoadon_idhoadon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[DatMon] CHECK CONSTRAINT [fk_hoadon_idhoadon]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_hoadon_idban] FOREIGN KEY([IDBan])
REFERENCES [dbo].[Ban] ([IDBan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_hoadon_idban]
GO
ALTER TABLE [dbo].[MonAn]  WITH CHECK ADD  CONSTRAINT [fk_monan_iddanhmuc] FOREIGN KEY([IDDanhMuc])
REFERENCES [dbo].[DanhMuc] ([IDDanhMuc])
GO
ALTER TABLE [dbo].[MonAn] CHECK CONSTRAINT [fk_monan_iddanhmuc]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [fk_taikhoan_idnguoidung] FOREIGN KEY([IDNguoiDung])
REFERENCES [dbo].[ThongTinNguoiDung] ([IDNguoiDung])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [fk_taikhoan_idnguoidung]
GO

create table Custommer
(
 IDCustommer varchar(10) , 
 NameCustomer varchar(10),
 Phone varchar(10),

 PRIMARY KEY (IDCustommer) ,
)

ALTER TABLE dbo.HoaDon ADD foreign key (IDNguoiDung) references dbo.ThongTinNguoiDung(IDNguoiDung) 
ALTER TABLE dbo.HoaDon ADD foreign key (IDCustommer) references dbo.Custommer(IDCustommer) 
