USE [master]
GO
/****** Object:  Database [Schedure]    Script Date: 2018-03-13 14:29:15 ******/
CREATE DATABASE [Schedure]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Schedure', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Schedure.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Schedure_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Schedure_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Schedure] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Schedure].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Schedure] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Schedure] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Schedure] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Schedure] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Schedure] SET ARITHABORT OFF 
GO
ALTER DATABASE [Schedure] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Schedure] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Schedure] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Schedure] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Schedure] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Schedure] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Schedure] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Schedure] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Schedure] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Schedure] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Schedure] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Schedure] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Schedure] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Schedure] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Schedure] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Schedure] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Schedure] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Schedure] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Schedure] SET  MULTI_USER 
GO
ALTER DATABASE [Schedure] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Schedure] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Schedure] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Schedure] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Schedure] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Schedure]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2018-03-13 14:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[IDAccount] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Avatar] [nvarchar](500) NULL,
	[FullName] [nvarchar](50) NULL,
	[Male] [bit] NULL,
	[Birthday] [date] NULL,
	[Adress] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[TieuSu] [nvarchar](max) NULL,
	[POSITION] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[IDAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTToaThuoc]    Script Date: 2018-03-13 14:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTToaThuoc](
	[IDCT] [int] IDENTITY(1,1) NOT NULL,
	[IDToaThuoc] [int] NOT NULL,
	[IDThuoc] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [int] NULL,
 CONSTRAINT [PK_CTToaThuoc_1] PRIMARY KEY CLUSTERED 
(
	[IDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 2018-03-13 14:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[IDDoctor] [int] IDENTITY(1,1) NOT NULL,
	[IDSpecia] [int] NULL,
	[FullName] [nvarchar](50) NULL,
	[Avatar] [nvarchar](500) NULL,
	[Sumary] [nvarchar](max) NULL,
	[TrainingProcess] [nvarchar](max) NULL,
	[Study] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[IDDoctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HistoryKhamBenh]    Script Date: 2018-03-13 14:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryKhamBenh](
	[IDHistory] [int] IDENTITY(1,1) NOT NULL,
	[IDRegister] [int] NULL,
	[IDDoctor] [int] NULL,
	[ICD] [int] NULL,
	[CreateTime] [datetime] NULL,
	[Mach] [int] NULL,
	[NhipTho] [int] NULL,
	[ChieuCao] [int] NULL,
	[NhieuDo] [int] NULL,
	[HuyetApTT] [int] NULL,
	[HuyetApTD] [int] NULL,
	[CanNang] [int] NULL,
	[TrieuChungLS] [nvarchar](max) NULL,
	[ChuanDoanSoBo] [nvarchar](max) NULL,
	[CachGiaiQuyet] [nvarchar](max) NULL,
 CONSTRAINT [PK_HistoryKhamBenh] PRIMARY KEY CLUSTERED 
(
	[IDHistory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InfoHospital]    Script Date: 2018-03-13 14:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoHospital](
	[IDInfoHospital] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Avatar] [nvarchar](500) NULL,
	[Adress] [nvarchar](500) NULL,
	[Hotline] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[WorkStart] [time](7) NULL,
	[WorkEnd] [time](7) NULL,
 CONSTRAINT [PK_InfoHospital] PRIMARY KEY CLUSTERED 
(
	[IDInfoHospital] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Register]    Script Date: 2018-03-13 14:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[IDRegister] [int] IDENTITY(1,1) NOT NULL,
	[IDAccount] [int] NULL,
	[IDDoctor] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Message] [nvarchar](500) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[IDRegister] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specia]    Script Date: 2018-03-13 14:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specia](
	[IDSpecia] [int] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](500) NULL,
	[Name] [nvarchar](50) NULL,
	[TimeUse] [int] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Specia] PRIMARY KEY CLUSTERED 
(
	[IDSpecia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 2018-03-13 14:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[IDThuoc] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DonVi] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[GiaTien] [int] NULL,
 CONSTRAINT [PK_Thuoc] PRIMARY KEY CLUSTERED 
(
	[IDThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ToaThuoc]    Script Date: 2018-03-13 14:29:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToaThuoc](
	[IDToaThuoc] [int] IDENTITY(1,1) NOT NULL,
	[IDHistory] [int] NULL,
	[CachDung] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_ToaThuoc] PRIMARY KEY CLUSTERED 
(
	[IDToaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Avatar], [FullName], [Male], [Birthday], [Adress], [Phone], [Email], [TieuSu], [POSITION], [Status]) VALUES (1, N'admin', N'admin', N'', N'Super admin', 0, CAST(N'1990-01-01' AS Date), N'', N'', N'tiephoang.dev@gmail.com', N'', N'SA', N'ACTIVE')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Avatar], [FullName], [Male], [Birthday], [Adress], [Phone], [Email], [TieuSu], [POSITION], [Status]) VALUES (2, N'2', N'2', N'', N'2', 0, CAST(N'2002-03-13' AS Date), N'2', N'2', N'2', N'2', N'YTA', N'ACTIVE')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Avatar], [FullName], [Male], [Birthday], [Adress], [Phone], [Email], [TieuSu], [POSITION], [Status]) VALUES (3, N'2', N'', N'', N'2', 0, CAST(N'2018-03-13' AS Date), N'2', N'2', N'2', N'2', N'YTA', N'ACTIVE')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Avatar], [FullName], [Male], [Birthday], [Adress], [Phone], [Email], [TieuSu], [POSITION], [Status]) VALUES (4, N'q', N'', N'', N'q', 0, CAST(N'2018-03-13' AS Date), N'q', N'q', N'q', N'', N'SA', N'ACTIVE')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Avatar], [FullName], [Male], [Birthday], [Adress], [Phone], [Email], [TieuSu], [POSITION], [Status]) VALUES (5, N'e', N'', N'', N'e', 0, CAST(N'2018-03-13' AS Date), N'e', N'e', N'tiephoang.dev@gmail.com', N'', N'SA', N'ACTIVE')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Avatar], [FullName], [Male], [Birthday], [Adress], [Phone], [Email], [TieuSu], [POSITION], [Status]) VALUES (6, N'e', N'', N'', N'e', 0, CAST(N'2018-03-13' AS Date), N'e', N'e', N'tiephoang.dev@gmail.com', N'', N'SA', N'ACTIVE')
INSERT [dbo].[Account] ([IDAccount], [Username], [Password], [Avatar], [FullName], [Male], [Birthday], [Adress], [Phone], [Email], [TieuSu], [POSITION], [Status]) VALUES (7, N'2', N'', N'', N'2', 0, CAST(N'2018-03-13' AS Date), N'2', N'2', N'tiephoang@gmail.com', N'2', N'SA', N'ACTIVE')
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[CTToaThuoc] ON 

INSERT [dbo].[CTToaThuoc] ([IDCT], [IDToaThuoc], [IDThuoc], [SoLuong], [GiaTien]) VALUES (1, 1, 1, 3, 6000)
INSERT [dbo].[CTToaThuoc] ([IDCT], [IDToaThuoc], [IDThuoc], [SoLuong], [GiaTien]) VALUES (2, 1, 2, 5, 165000)
SET IDENTITY_INSERT [dbo].[CTToaThuoc] OFF
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([IDDoctor], [IDSpecia], [FullName], [Avatar], [Sumary], [TrainingProcess], [Study], [Status]) VALUES (1, 1, N'NGUYỄN VĂN A', N'', N'', N'', N'', N'ACTIVE')
INSERT [dbo].[Doctor] ([IDDoctor], [IDSpecia], [FullName], [Avatar], [Sumary], [TrainingProcess], [Study], [Status]) VALUES (2, 1, N'NGUYỄN VĂN A34', N'', N'', N'', N'', N'DELETE')
SET IDENTITY_INSERT [dbo].[Doctor] OFF
SET IDENTITY_INSERT [dbo].[HistoryKhamBenh] ON 

INSERT [dbo].[HistoryKhamBenh] ([IDHistory], [IDRegister], [IDDoctor], [ICD], [CreateTime], [Mach], [NhipTho], [ChieuCao], [NhieuDo], [HuyetApTT], [HuyetApTD], [CanNang], [TrieuChungLS], [ChuanDoanSoBo], [CachGiaiQuyet]) VALUES (1, 1, 1, 0, CAST(N'2018-03-13 12:23:07.253' AS DateTime), 0, 0, 0, NULL, 0, 0, 0, N'', N'', N'CapDonThuoc')
SET IDENTITY_INSERT [dbo].[HistoryKhamBenh] OFF
SET IDENTITY_INSERT [dbo].[Register] ON 

INSERT [dbo].[Register] ([IDRegister], [IDAccount], [IDDoctor], [CreateDate], [Message], [Status]) VALUES (1, 2, 1, CAST(N'2018-03-13 12:22:26.003' AS DateTime), N'', N'DONE')
INSERT [dbo].[Register] ([IDRegister], [IDAccount], [IDDoctor], [CreateDate], [Message], [Status]) VALUES (2, 2, 1, CAST(N'2018-03-13 12:25:35.957' AS DateTime), N'', N'ACTIVE')
SET IDENTITY_INSERT [dbo].[Register] OFF
SET IDENTITY_INSERT [dbo].[Specia] ON 

INSERT [dbo].[Specia] ([IDSpecia], [Avatar], [Name], [TimeUse], [Status]) VALUES (1, N'', N'PHÒNG MẮT', 15, N'ACTIVE')
SET IDENTITY_INSERT [dbo].[Specia] OFF
SET IDENTITY_INSERT [dbo].[Thuoc] ON 

INSERT [dbo].[Thuoc] ([IDThuoc], [Name], [DonVi], [Status], [GiaTien]) VALUES (1, N'2', N'chai', N'ACTIVE', 2000)
INSERT [dbo].[Thuoc] ([IDThuoc], [Name], [DonVi], [Status], [GiaTien]) VALUES (2, N'3', N'chai', N'ACTIVE', 33000)
SET IDENTITY_INSERT [dbo].[Thuoc] OFF
SET IDENTITY_INSERT [dbo].[ToaThuoc] ON 

INSERT [dbo].[ToaThuoc] ([IDToaThuoc], [IDHistory], [CachDung], [GhiChu], [Gia]) VALUES (1, 1, N'', N'', 171000)
SET IDENTITY_INSERT [dbo].[ToaThuoc] OFF
ALTER TABLE [dbo].[CTToaThuoc]  WITH CHECK ADD  CONSTRAINT [FK_CTToaThuoc_Thuoc] FOREIGN KEY([IDThuoc])
REFERENCES [dbo].[Thuoc] ([IDThuoc])
GO
ALTER TABLE [dbo].[CTToaThuoc] CHECK CONSTRAINT [FK_CTToaThuoc_Thuoc]
GO
ALTER TABLE [dbo].[CTToaThuoc]  WITH CHECK ADD  CONSTRAINT [FK_CTToaThuoc_ToaThuoc] FOREIGN KEY([IDToaThuoc])
REFERENCES [dbo].[ToaThuoc] ([IDToaThuoc])
GO
ALTER TABLE [dbo].[CTToaThuoc] CHECK CONSTRAINT [FK_CTToaThuoc_ToaThuoc]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Specia] FOREIGN KEY([IDSpecia])
REFERENCES [dbo].[Specia] ([IDSpecia])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Specia]
GO
ALTER TABLE [dbo].[HistoryKhamBenh]  WITH CHECK ADD  CONSTRAINT [FK_HistoryKhamBenh_Doctor] FOREIGN KEY([IDDoctor])
REFERENCES [dbo].[Doctor] ([IDDoctor])
GO
ALTER TABLE [dbo].[HistoryKhamBenh] CHECK CONSTRAINT [FK_HistoryKhamBenh_Doctor]
GO
ALTER TABLE [dbo].[HistoryKhamBenh]  WITH CHECK ADD  CONSTRAINT [FK_HistoryKhamBenh_Register] FOREIGN KEY([IDRegister])
REFERENCES [dbo].[Register] ([IDRegister])
GO
ALTER TABLE [dbo].[HistoryKhamBenh] CHECK CONSTRAINT [FK_HistoryKhamBenh_Register]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Account] FOREIGN KEY([IDAccount])
REFERENCES [dbo].[Account] ([IDAccount])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Account]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Doctor] FOREIGN KEY([IDDoctor])
REFERENCES [dbo].[Doctor] ([IDDoctor])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Doctor]
GO
ALTER TABLE [dbo].[ToaThuoc]  WITH CHECK ADD  CONSTRAINT [FK_ToaThuoc_HistoryKhamBenh] FOREIGN KEY([IDHistory])
REFERENCES [dbo].[HistoryKhamBenh] ([IDHistory])
GO
ALTER TABLE [dbo].[ToaThuoc] CHECK CONSTRAINT [FK_ToaThuoc_HistoryKhamBenh]
GO
USE [master]
GO
ALTER DATABASE [Schedure] SET  READ_WRITE 
GO
