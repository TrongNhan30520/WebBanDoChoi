USE [master]
GO
/****** Object:  Database [QLBH]    Script Date: 12/8/2021 10:43:08 PM ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLBH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLBH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBH', N'ON'
GO
ALTER DATABASE [QLBH] SET QUERY_STORE = OFF
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[CTDDH]    Script Date: 12/8/2021 10:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDDH](
	[MSDDH] [int] NOT NULL,
	[MASP] [nchar](10) NOT NULL,
	[SL] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CTDDH_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 12/8/2021 10:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MSDDH] [int] IDENTITY(1,1) NOT NULL,
	[HOTENKH] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](100) NOT NULL,
	[SDT] [nchar](50) NOT NULL,
	[TRANGTHAI] [nchar](10) NOT NULL,
	[MAKH] [int] NULL,
	[email] [nchar](100) NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MSDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DSTAIKHOAN]    Script Date: 12/8/2021 10:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSTAIKHOAN](
	[TAIKHOAN] [nvarchar](50) NOT NULL,
	[MATKHAU] [nvarchar](50) NULL,
	[CHUCVU] [nchar](10) NULL,
 CONSTRAINT [PK_DSTAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TAIKHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/8/2021 10:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[SOHD] [nchar](10) NOT NULL,
	[NGAYLAPHD] [date] NULL,
	[MANV] [int] NULL,
	[TONGGIA] [float] NULL,
	[MSDDH] [int] NOT NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[SOHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/8/2021 10:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[HOTEN] [nvarchar](100) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[SDT] [nchar](50) NULL,
	[TAIKHOAN] [nvarchar](50) NULL,
	[EMAIL] [nchar](100) NULL,
	[NGAYSINH] [date] NULL,
	[DOANHSO] [float] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/8/2021 10:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] NOT NULL,
	[HOTEN] [nvarchar](100) NULL,
	[SDT] [nchar](10) NULL,
	[NGAYVAOLAM] [date] NULL,
	[TAIKHOAN] [nvarchar](50) NULL,
	[HINHANH] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](100) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/8/2021 10:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [nchar](10) NOT NULL,
	[TENSP] [nvarchar](50) NULL,
	[LOAISP] [nvarchar](50) NULL,
	[NUOCSX] [nvarchar](50) NULL,
	[DONGIA] [int] NULL,
	[MOTA] [ntext] NULL,
	[SOLUONGTON] [int] NULL,
	[HINHANH] [nchar](100) NULL,
	[SALE] [float] NULL,
	[TRANGTHAIXOA] [int] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CTDDH] ON 

INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (18, N'1         ', 4, 35)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (18, N'10        ', 3, 36)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (18, N'11        ', 2, 37)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (18, N'12        ', 2, 38)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (19, N'10        ', 4, 39)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (19, N'11        ', 3, 40)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (19, N'12        ', 4, 41)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (20, N'1         ', 4, 42)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (20, N'10        ', 2, 43)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (20, N'11        ', 3, 44)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (21, N'14        ', 1, 45)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (21, N'15        ', 1, 46)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (21, N'16        ', 1, 47)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (22, N'10        ', 3, 48)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (22, N'11        ', 3, 49)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (22, N'13        ', 3, 50)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (23, N'14        ', 1, 51)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (23, N'15        ', 1, 52)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (23, N'16        ', 1, 53)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (25, N'10        ', 1, 59)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (25, N'11        ', 1, 60)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (25, N'12        ', 1, 61)
INSERT [dbo].[CTDDH] ([MSDDH], [MASP], [SL], [Id]) VALUES (25, N'1         ', 1, 65)
SET IDENTITY_INSERT [dbo].[CTDDH] OFF
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MSDDH], [HOTENKH], [DIACHI], [SDT], [TRANGTHAI], [MAKH], [email]) VALUES (18, N'Nguyễn Văn Tú', N'Phước Thiện, Phước Sơn, Ninh Phước, Ninh Thuận', N'0923242811                                        ', N'NEW       ', NULL, N'nhathk2410@gmail.com                                                                                ')
INSERT [dbo].[DONDATHANG] ([MSDDH], [HOTENKH], [DIACHI], [SDT], [TRANGTHAI], [MAKH], [email]) VALUES (19, N'Nguyễn Thị Thu', N'Ba Đình Hà Nội', N'0982343464                                        ', N'NEW       ', 5, N'nhathk2410@gmail.com                                                                                ')
INSERT [dbo].[DONDATHANG] ([MSDDH], [HOTENKH], [DIACHI], [SDT], [TRANGTHAI], [MAKH], [email]) VALUES (20, N'Mai Thị Như', N'Quận 9 TPHCM Viet Nam Ha Noi', N'0384383592                                        ', N'CANCELLED ', 6, N'nhathk2410@gmail.com                                                                                ')
INSERT [dbo].[DONDATHANG] ([MSDDH], [HOTENKH], [DIACHI], [SDT], [TRANGTHAI], [MAKH], [email]) VALUES (21, N'Elon Musk', N'Mỹ Tho', N'0987323231                                        ', N'CONFIRMED ', 8, N'tongduong0710@gmail.com                                                                             ')
INSERT [dbo].[DONDATHANG] ([MSDDH], [HOTENKH], [DIACHI], [SDT], [TRANGTHAI], [MAKH], [email]) VALUES (22, N'Son Go Ku', N'Hành tinh xayda', N'0982393523                                        ', N'CANCELLED ', 9, N'trongnhan30520@gmail.com                                                                            ')
INSERT [dbo].[DONDATHANG] ([MSDDH], [HOTENKH], [DIACHI], [SDT], [TRANGTHAI], [MAKH], [email]) VALUES (23, N'Son Go Han', N'Hành tinh trái đất', N'0982395657                                        ', N'NEW       ', NULL, N'tongduong0710@gmail.com                                                                             ')
INSERT [dbo].[DONDATHANG] ([MSDDH], [HOTENKH], [DIACHI], [SDT], [TRANGTHAI], [MAKH], [email]) VALUES (25, N'Nguyễn Trọng Nhân', N'Mũi Né Cà Mau Sài Gòn', N'0982391223                                        ', N'CONFIRMED ', 4, N'trongnhan30520@gmail.com                                                                            ')
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'Musk', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'Namhk11', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'Nhan', N'D5F22706119F949DEF66FCD6ACA695E0', N'AD        ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'nhathk', N'35EB7CCA72023C8EAE70AD11595BAE67', N'NV        ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'nhathk1', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'nhathk123', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'nhathk2', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'nhathk23', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'Nhu', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'songoku', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'thaohk123', N'D93AE3773D35F70CA9FA65E2BB4FC332', N'AD        ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'Thu', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'Tong', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
INSERT [dbo].[DSTAIKHOAN] ([TAIKHOAN], [MATKHAU], [CHUCVU]) VALUES (N'Tu', N'35EB7CCA72023C8EAE70AD11595BAE67', N'KHACH     ')
GO
INSERT [dbo].[HOADON] ([SOHD], [NGAYLAPHD], [MANV], [TONGGIA], [MSDDH]) VALUES (N'1         ', CAST(N'2021-12-08' AS Date), 2, 51, 20)
INSERT [dbo].[HOADON] ([SOHD], [NGAYLAPHD], [MANV], [TONGGIA], [MSDDH]) VALUES (N'2         ', CAST(N'2021-12-08' AS Date), 2, 41, 21)
INSERT [dbo].[HOADON] ([SOHD], [NGAYLAPHD], [MANV], [TONGGIA], [MSDDH]) VALUES (N'3         ', CAST(N'2021-12-08' AS Date), 1, 92, 22)
INSERT [dbo].[HOADON] ([SOHD], [NGAYLAPHD], [MANV], [TONGGIA], [MSDDH]) VALUES (N'4         ', CAST(N'2021-12-08' AS Date), 1, 31, 25)
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (4, N'Dương Phạm Thanh Tong', N'Phước Thiện, Phước Sơn, Ninh Phước, Ninh Thuận', N'0923242811                                        ', N'Tong', N'nhathk2410@gmail.com                                                                                ', CAST(N'2000-02-20' AS Date), 61)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (5, N'Nguyễn Thị Thu', N'Ba Đình Hà Nội', N'0982343464                                        ', N'Thu', N'nhathk2410@gmail.com                                                                                ', CAST(N'1999-02-22' AS Date), 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (6, N'Mai Thị Như', N'Quận 9 TPHCM', N'0384383592                                        ', N'Nhu', N'nhathk2410@gmail.com                                                                                ', CAST(N'1995-02-22' AS Date), 51)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (7, N'nhat', N'hương Khê hà tĩnh', N'09849593232                                       ', N'nhathk1', N'nhathk2410@gmail.com                                                                                ', NULL, 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (8, N'Elon Musk', N'Mỹ Tho', N'0987323231                                        ', N'Musk', N'nhathk2410@gmail.com                                                                                ', CAST(N'1997-02-21' AS Date), 41)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (9, N'Son Go Ku', N'Hành tinh xayda', N'0982393523                                        ', N'songoku', N'nhathk2410@gmail.com                                                                                ', CAST(N'2000-02-21' AS Date), 92)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (11, N'nhật nguyễn', N'quận 9', N'09723241                                          ', N'nhathk23', N'nhatdady@gmail.com                                                                                  ', NULL, 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (12, N'nhật nguyễn', N'quận 9', N'09723241                                          ', N'nhathk2', N'nhatdady@gmail.com                                                                                  ', NULL, 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (13, N'nhật nguyễn', N'quận 9', N'09723241                                          ', N'Namhk11', N'nhatdady@gmail.com                                                                                  ', NULL, 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [DIACHI], [SDT], [TAIKHOAN], [EMAIL], [NGAYSINH], [DOANHSO]) VALUES (14, N'nhật nguyễn', N'quận 9', N'09723241                                          ', N'nhathk123', N'nhatdady@gmail.com                                                                                  ', NULL, 0)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [SDT], [NGAYVAOLAM], [TAIKHOAN], [HINHANH], [EMAIL], [DIACHI]) VALUES (1, N'Trọng Nhân Cà Mau', N'0977156825', CAST(N'2021-12-25' AS Date), N'Nhan', N'nhanvien3.png', N'NhanCM@gmail.com', N'Đất Cà Màu Phù Sa ')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [SDT], [NGAYVAOLAM], [TAIKHOAN], [HINHANH], [EMAIL], [DIACHI]) VALUES (2, N'Nguyễn Long Nhật', N'0977156825', CAST(N'2021-12-11' AS Date), N'nhathk', N'nhanvien1.png', N'nhathk2410@gmail.com', N'phố đi bộ Trần Duy Hưng')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [SDT], [NGAYVAOLAM], [TAIKHOAN], [HINHANH], [EMAIL], [DIACHI]) VALUES (3, N'Nguyễn thị thảo', N'0932322412', CAST(N'2021-12-06' AS Date), N'thaohk123', N'nhanvien2.png', N'nhatdady@gmail.com', N'quận 9')
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'1         ', N'Gấu bông ', N'nguyên hộp', N'USA', 1, N'sản phẩm đẹp', 9, N'pro1.png                                                                                            ', 0.10000000149011612, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'10        ', N'Chú ếch cao su', N'nguyên hộp', N'USA', 10, N'sản phẩm đẹp', 9, N'pro10.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'11        ', N'Bàn trang điểm', N'nguyên hộp', N'USA', 11, N'sản phẩm chất lượng', 9, N'pro11.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'12        ', N'Couple búp bê', N'nguyên hộp', N'USA', 12, N'sản phẩm chất lượng', 9, N'pro12.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'13        ', N'Bộ lắp ráp lego', N'nguyên hộp', N'USA', 13, N'sản phẩm chất lượng', 10, N'pro13.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'14        ', N'Bộ vòng bằng nhựa', N'nguyên hộp', N'USA', 14, N'sản phẩm chất lượng', 9, N'pro14.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'15        ', N'Tàu hỏa', N'nguyên hộp', N'USA', 15, N'Sản phẩm xịn', 9, N'pro15.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'16        ', N'Gấu giáng sinh', N'nguyên hộp', N'USA', 16, N'Sản phẩm xịn', 9, N'pro16.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'17        ', N'Tuần lộc giáng sinh', N'nguyên hộp', N'USA', 17, N'Sản phẩm xịn', 10, N'pro17.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'18        ', N'Tuần lộc gỗ', N'nguyên hộp', N'USA', 18, N'Sản phẩm xịn', 10, N'pro18.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'19        ', N'Ông già Noel', N'nguyên hộp', N'USA', 19, N'Sản phẩm xịn', 10, N'pro19.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'2         ', N'Chú ếch cao su', N'nguyên hộp', N'USA', 2, N'Sản phẩm xịn', 10, N'pro2.png                                                                                            ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'20        ', N'Cây thông', N'nguyên hộp', N'USA', 20, N'Sản phẩm xịn', 10, N'pro20.png                                                                                           ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'21        ', N'zoe', N'nguyên hộp', N'USA', 14, N'xịn xò', 10, N'pro7.png                                                                                            ', 0.1, 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'22        ', N'ông già ', N'nguyên hộp', N'USA', 4, N'', 10, N'pro7.png                                                                                            ', 0.89999997615814209, 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'23        ', N'piochino', N'nguyên hộp', N'USA', 10, N'', 10, N'pro12.png                                                                                           ', 0.10000000149011612, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'3         ', N'Vịt cao su', N'nguyên hộp', N'USA', 6, N'Sản phẩm xịn', 10, N'pro3.png                                                                                            ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'4         ', N'Rô bốt', N'nguyên hộp', N'USA', 4, N'Sản phẩm không  dành cho trẻ em dưới 18 ', 10, N'pro5.png                                                                                            ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'5         ', N'Ngựa gỗ', N'nguyên hộp', N'USA', 5, N'Sản phẩm không  dành cho trẻ em', 10, N'pro4.png                                                                                            ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'6         ', N'Búp bê babie', N'nguyên hộp', N'USA', 6, N'Sản phẩm không  dành cho trẻ em dưới 18 tuổi', 10, N'pro6.png                                                                                            ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'7         ', N'Xe kéo', N'nguyên hộp', N'USA', 7, N'Sản phẩm không  dành cho trẻ em', 10, N'pro7.png                                                                                            ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'8         ', N'Vịt bóng', N'nguyên hộp', N'USA', 8, N'Sản phẩm không  dành cho trẻ em', 10, N'pro8.png                                                                                            ', 0.1, 0)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LOAISP], [NUOCSX], [DONGIA], [MOTA], [SOLUONGTON], [HINHANH], [SALE], [TRANGTHAIXOA]) VALUES (N'9         ', N'bộ sắp xếp sáng tạo', N'nguyên hộp', N'USA', 9, N'sản phẩm chất lượng', 10, N'pro9.png                                                                                            ', 0.1, 0)
GO
/****** Object:  Index [IX_HOADON]    Script Date: 12/8/2021 10:43:08 PM ******/
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [IX_HOADON] UNIQUE NONCLUSTERED 
(
	[MSDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  CONSTRAINT [DF_SANPHAM_SALE]  DEFAULT ((0)) FOR [SALE]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_DONDATHANG] FOREIGN KEY([MSDDH])
REFERENCES [dbo].[DONDATHANG] ([MSDDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_DONDATHANG]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_SANPHAM]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_DONDATHANG] FOREIGN KEY([MSDDH])
REFERENCES [dbo].[DONDATHANG] ([MSDDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_DONDATHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_DSTAIKHOAN] FOREIGN KEY([TAIKHOAN])
REFERENCES [dbo].[DSTAIKHOAN] ([TAIKHOAN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_DSTAIKHOAN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_DSTAIKHOAN] FOREIGN KEY([TAIKHOAN])
REFERENCES [dbo].[DSTAIKHOAN] ([TAIKHOAN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_DSTAIKHOAN]
GO
USE [master]
GO
ALTER DATABASE [QLBH] SET  READ_WRITE 
GO
