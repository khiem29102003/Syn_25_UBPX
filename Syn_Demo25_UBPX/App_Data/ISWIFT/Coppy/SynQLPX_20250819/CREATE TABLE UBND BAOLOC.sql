if exists (select * from sysobjects where id = object_id('dmlhhd') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmlhhd

CREATE TABLE [dbo].[dmlhhd] (
    [ma_lhhd] VARCHAR(32) NOT NULL,
    [ten_lhhd] NVARCHAR(256) NOT NULL,
    [ten_lhhd2] NVARCHAR(256) NULL,
	[unit_id] INT NOT NULL,
    [thu_tu] INT NULL,
    [status] TINYINT NULL,
    [datetime0] DATETIME NULL,
    [datetime2] DATETIME NULL,
    [user_id0] INT NULL,
    [user_id2] INT NULL
CONSTRAINT [PK_dmlhhd] PRIMARY KEY CLUSTERED 
(
	[ma_lhhd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmlocation') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmlocation

CREATE TABLE [dbo].[dmlocation] (
    [ma_location] VARCHAR(32) NOT NULL,
    [ten_location] NVARCHAR(256) NOT NULL,
    [ten_location2] NVARCHAR(256) NULL,
    [ma_llocation] VARCHAR(32) NULL,
	[unit_id] INT NOT NULL,
    [thu_tu] INT NULL,
    [dia_chi] [NVARCHAR](256) NULl,
    [linkweb] [VARCHAR](256) NULl,
    [nguoi_lh] [NVARCHAR](256) NULl,
    [dien_thoai] [VARCHAR](32) NULl,
    [tdx] [VARCHAR](50) NULl,
    [tdy] [VARCHAR](50) NULl,
    [status] TINYINT NULL,
    [datetime0] DATETIME NULL,
    [datetime2] DATETIME NULL,
    [user_id0] INT NULL,
    [user_id2] INT NULL,

CONSTRAINT [PK_dmlocation] PRIMARY KEY CLUSTERED 
(
	[ma_location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--//Rename ma_llocation -> ma_lhhd
EXEC sp_rename 'dmlocation.ma_llocation', 'ma_lhhd', 'COLUMN';

if exists (select * from sysobjects where id = object_id('dmplvb') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmplvb

CREATE TABLE [dbo].[dmplvb](
	[ma_pl] [varchar](32) NOT NULL,
	[ten_pl] [nvarchar](128) NOT NULL,
	[ten_pl2] [nvarchar](128) NULL,
	[tu_so] [int] NULL,
	[den_so] [int] NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
	[loai_ut] [tinyint] NULL,
 CONSTRAINT [PK_dmplvb] PRIMARY KEY CLUSTERED 
(
	[ma_pl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
if exists (select * from sysobjects where id = object_id('dmnhomvb') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmnhomvb

CREATE TABLE [dbo].[dmnhomvb](
	[ma_nvb] [varchar](5) NOT NULL,
	[ten_nvb] [nvarchar](128) NOT NULL,
	[ten_nvb2] [nvarchar](128) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmnhomvb] PRIMARY KEY CLUSTERED 
(
	[ma_nvb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmvb') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmvb
go

CREATE TABLE [dbo].[dmvb](
	[ma_vb] [VARCHAR](32) NOT NULL,
	[ten_vb] [nvarchar](255) NULL,
	[ten_vb2] [nvarchar](255) NULL,
	[ngay_ct] [DATE] NULL,
	[gio_ct] [VARCHAR](5) NULL,
	[ma_pl] [VARCHAR](32) NULL,
	[ma_nvb] [varchar](5) NULL,
	[unit_id] [INT] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
	[ky_hieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_dmvb] PRIMARY KEY CLUSTERED 
(
	[ma_vb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
if exists (select * from sysobjects where id = object_id('dmvb') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmvb
go

CREATE TABLE [dbo].[dmvb](
	[ma_vb] [VARCHAR](32) NOT NULL,
	[ten_vb] [nvarchar](255) NULL,
	[ten_vb2] [nvarchar](255) NULL,
	[ngay_ct] [DATE] NULL,
	[gio_ct] [VARCHAR](5) NULL,
	[ma_pl] [VARCHAR](32) NULL,
	[ma_nvb] [varchar](5) NULL,
	[unit_id] [INT] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
	[ky_hieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_dmvb] PRIMARY KEY CLUSTERED 
(
	[ma_vb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('qlcuochop') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table qlcuochop
go

CREATE TABLE [dbo].[qlcuochop](
	[ma_cuochop] [VARCHAR](32) NOT NULL,
	[ten_cuochop] [nvarchar](255) NULL,
	[ten_cuochop2] [nvarchar](255) NULL,
	[noi_dung] [NVARCHAR](2000) NULL,
	[ma_kp] [VARCHAR](32) NULL,
	[ma_lcuochop] [VARCHAR](32) NULL,

	[ngay_hop] [DATE] NULL,
	[gio_bd] [VARCHAR](5) NULL,
	[gio_kt] [VARCHAR](5) NULL,

	[dia_chi] [NVARCHAR](255) NULL,
	[ma_quanhuyen] [VARCHAR](32) NULL,
	[ma_phuongxa] [VARCHAR](32) NULL,
	[ma_ttp] [VARCHAR](32) NULL,

	[linkweb] [VARCHAR](256) NULl,

	[ds_chutri] [VARCHAR](2000) NULL,
	[ds_nguoithamgia] [VARCHAR](2000) NULL,


	[unit_id] [INT] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL
 CONSTRAINT [PK_qlcuochop] PRIMARY KEY CLUSTERED 
(
	[ma_cuochop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmlcuochop') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmlcuochop

CREATE TABLE [dbo].[dmlcuochop](
	[ma_lcuochop] [varchar](32) NOT NULL,
	[ten_lcuocho] [nvarchar](255) NOT NULL,
	[ten_lcuocho2] [nvarchar](255) NULL,

	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmlcuochop] PRIMARY KEY CLUSTERED 
(
	[ma_lcuochop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmquanhuyen') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmquanhuyen

CREATE TABLE [dbo].[dmquanhuyen](
	[ma_quanhuyen] [varchar](32) NOT NULL,
	[ten_quanhuyen] [nvarchar](255) NOT NULL,
	[ten_quanhuyen2] [nvarchar](255) NULL,
	[ma_ttp] [VARCHAR](32) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmquanhuyen] PRIMARY KEY CLUSTERED 
(
	[ma_quanhuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('dmloaiphuongxa') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmloaiphuongxa

CREATE TABLE [dbo].[dmloaiphuongxa](
	[ma_loai] [varchar](32) NOT NULL,
	[ten_loai] [nvarchar](255) NOT NULL,
	[ten_loai2] [nvarchar](255) NULL,
	[stt] [tinyint] NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmloaiphuongxa] PRIMARY KEY CLUSTERED 
(
	[ma_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmphuongxa') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmphuongxa

CREATE TABLE [dbo].[dmphuongxa](
	[ma_phuongxa] [varchar](32) NOT NULL,
	[ten_phuongxa] [nvarchar](255) NOT NULL,
	[ten_phuongxa2] [nvarchar](255) NULL,
	[ma_loai] [VARCHAR](32) NULL,
	[ma_ttp] [VARCHAR](32) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmphuongxa] PRIMARY KEY CLUSTERED 
(
	[ma_phuongxa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmkhupho') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmkhupho

CREATE TABLE [dbo].[dmkhupho](
	[ma_khupho] [varchar](32) NOT NULL,
	[ten_khupho] [nvarchar](255) NOT NULL,
	[ten_khupho2] [nvarchar](255) NULL,
	[ma_ttp] [varchar](32) NULL,
	[ma_phuongxa] [varchar](32) NOT NULL,
	[ma_pb] [varchar](32) NOT NULL,
	[ten_pb] [nvarchar](255) NOT NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmkhupho] PRIMARY KEY CLUSTERED 
(
	[ma_khupho],
	[ma_phuongxa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmpldancu') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmpldancu

CREATE TABLE [dbo].[dmpldancu](
	[ma_pl] [varchar](32) NOT NULL,
	[ten_pl] [nvarchar](255) NOT NULL,
	[ten_pl2] [nvarchar](255) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmpldancu] PRIMARY KEY CLUSTERED 
(
	[ma_pl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmloainganhnghe') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmloainganhnghe

CREATE TABLE [dbo].[dmloainganhnghe](
	[ma_loai] [varchar](32) NOT NULL,
	[ten_loai] [nvarchar](255) NOT NULL,
	[ten_loai2] [nvarchar](255) NULL,
	[stt] [tinyint] NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmloainganhnghe] PRIMARY KEY CLUSTERED 
(
	[ma_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmnganhnghe') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmnganhnghe

CREATE TABLE [dbo].[dmnganhnghe](
	[ma_nganhnghe] [varchar](32) NOT NULL,
	[ten_nganhnghe] [nvarchar](255) NOT NULL,
	[ten_nganhnghe2] [nvarchar](255) NULL,
	[ma_loai] [VARCHAR](32) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmnganhnghe] PRIMARY KEY CLUSTERED 
(
	[ma_nganhnghe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('qldctcccd') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table qldctcccd
go

CREATE TABLE [dbo].[qldctcccd](
	[ma_dancu] [VARCHAR](32) NOT NULL,
	[ten_dancu] [nvarchar](255) NULL,
	[ten_dancu2] [nvarchar](255) NULL,
	[dien_thoai] [varchar](50) NULL,
	[ma_ttp] [VARCHAR](32) NULL,
	[ma_quanhuyen] [VARCHAR](32) NULL,
	[ma_phuongxa] [VARCHAR](32) NULL,
	[ma_khupho] [VARCHAR](32) NULL,
	[dia_chi] [nvarchar](256) NULL,
	[ngay_sinh] [date] NULL,
	[gioi_tinh] [nvarchar](32) NULL,
	[so_cccd] [VARCHAR](32) NOT NULL,
	[ngay_cap] [date] NULL,
	[dan_toc] [nvarchar](256) NULL,
	[thuongtru_yn] [tinyint] NULL,
	[tamtru_yn] [tinyint] NULL,
	[ma_hogiadinh] [VARCHAR](32) NULL,
	[ma_qhgd] [VARCHAR](32) NULL,
	[unit_id] [INT] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL
 CONSTRAINT [PK_qldctcccd] PRIMARY KEY CLUSTERED 
(
	[ma_dancu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmhogiadinh') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmhogiadinh

CREATE TABLE [dbo].[dmhogiadinh](
	[ma_hogiadinh] [varchar](32) NOT NULL,
	[ma_chuho] VARCHAR(32) NULL,
	[dia_chi] [NVARCHAR](255) NULL,
	[ma_ttp] [VARCHAR](32) NULL,
	[ma_phuongxa] VARCHAR(32) NULL,
	[ma_khupho] VARCHAR(32) NULL,

	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmhogiadinh] PRIMARY KEY CLUSTERED 
(
	[ma_hogiadinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmngaycong') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmngaycong

CREATE TABLE [dbo].[dmngaycong](
	[ma_ngaycong] [varchar](32) NOT NULL,
	[ten_ngaycong] [nvarchar](255) NOT NULL,
	[ten_ngaycong2] [nvarchar](255) NULL,
	[he_so] [NUMERIC](19,5) NULL,
	[ma_loaingaycong] [VARCHAR](32) NULL,
	[ghi_chu] [NVARCHAR](255) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmngaycong] PRIMARY KEY CLUSTERED 
(
	[ma_ngaycong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
if exists (select * from sysobjects where id = object_id('dmloaingaycong') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmloaingaycong

CREATE TABLE [dbo].[dmloaingaycong](
	[ma_loaingaycong] [varchar](32) NOT NULL,
	[ten_loaingaycong] [nvarchar](255) NOT NULL,
	[ten_loaingaycong2] [nvarchar](255) NULL,
	[stt] [tinyint] NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmloaingaycong] PRIMARY KEY CLUSTERED 
(
	[ma_loaingaycong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('plhogiadinh') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table plhogiadinh
go

CREATE TABLE [dbo].[plhogiadinh](
	[ma_hogiadinh] [VARCHAR](32) NOT NULL,
	[ma_pldancu] [VARCHAR](32) NOT NULL,
	[so_giay_cn] [NVARCHAR](50) NULL,
	[ngay_cap] [DATE] NULL,
	[cap_boi] [NVARCHAR](256) NUll,
	[muc_tro_cap] [NUMERIC](19,5) NULL,
	[ngay_bd] [DATE] NULL,
	[ngay_kt] [DATE] NULL,
	[dien_giai] [NVARCHAR](256) NULL,
	[unit_id] [INT] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL
 CONSTRAINT [PK_plhogiadinh] PRIMARY KEY CLUSTERED 
(
	[ma_hogiadinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('pldancu') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table pldancu
go

CREATE TABLE [dbo].[pldancu](
	[ma_dancu] [VARCHAR](32) NOT NULL,
	[ma_pldancu] [VARCHAR](32) NOT NULL,
	[so_giay_cn] [NVARCHAR](50) NULL,
	[ngay_cap] [DATE] NULL,
	[cap_boi] [NVARCHAR](256) NUll,
	[muc_tro_cap] [NUMERIC](19,5) NULL,
	[ngay_bd] [DATE] NULL,
	[ngay_kt] [DATE] NULL,
	[dien_giai] [NVARCHAR](256) NULL,
	[unit_id] [INT] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL
 CONSTRAINT [PK_pldancu] PRIMARY KEY CLUSTERED 
(
	[ma_dancu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE dmpldancu add phan_loai tinyint 


if exists (select * from sysobjects where id = object_id('dmloaivb') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmloaivb

CREATE TABLE [dbo].[dmloaivb](
	[ma_loai] [varchar](32) NOT NULL,
	[ten_loai] [nvarchar](128) NOT NULL,
	[ten_loai2] [nvarchar](128) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
	[loai_ut] [tinyint] NULL,
 CONSTRAINT [PK_dmloaivb] PRIMARY KEY CLUSTERED 
(
	[ma_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('dmtgluuvb') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmtgluuvb

CREATE TABLE [dbo].[dmtgluuvb](
	[ma_tg] [varchar](32) NOT NULL,
	[ten_tg] [nvarchar](128) NOT NULL,
	[ten_tg2] [nvarchar](128) NULL,
	[he_so] [NUMERIC](19,5) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
	[loai_ut] [tinyint] NULL,
 CONSTRAINT [PK_dmthoihanluuvb] PRIMARY KEY CLUSTERED 
(
	[ma_tg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dmnhomvb ADD ma_loai VARCHAR(32)
ALTER TABLE dmvb ADD ma_loai VARCHAR(32)
ALTER TABLE dmvb ADD ma_tg VARCHAR(32)
ALTER TABLE dmvb ADD xstatus tinyint
ALTER TABLE dmvb ADD ds_phongban VARCHAR(2000)
ALTER TABLE dmvb ADD ds_nguoiduocxem VARCHAR(2000)

ALTER TABLE dmnhomvb
DROP CONSTRAINT PK_dmnhomvb;

ALTER TABLE dmnhomvb ALTER COLUMN ma_loai VARCHAR(32) NOT NULL

ALTER TABLE dmnhomvb
ADD CONSTRAINT PK_dmnhomvb PRIMARY KEY (ma_nvb, ma_loai);

if exists (select * from sysobjects where id = object_id('cuochopacp') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table cuochopacp

CREATE TABLE [dbo].[cuochopacp](
	[ma_cuochop] [varchar](32) NOT NULL,
	[ten_cuochop] [nvarchar](128) NOT NULL,
	[ten_cuochop2] [nvarchar](128) NULL,
	[ma_nv] [VARCHAR](32) NOT NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id_acp] [int] NULL,
	[ngay_acp] [datetime] NULL
 CONSTRAINT [PK_cuochopacp] PRIMARY KEY CLUSTERED 
(
	[ma_cuochop] ASC,
	[ma_nv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('qllichtd') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table qllichtd

CREATE TABLE [dbo].[qllichtd](
	[ma_lichtd] [varchar](32) NOT NULL,
	[ngay_ct] [DATE] NULL,
	[dk_ngay] [VARCHAR](32) NULL,
	[ma_calv] [VARCHAR](32) NULL,
	[ma_lhhd] [VARCHAR](32) NULL,
	[noi_dung] [NVARCHAR](2000) NULL,
	[ds_nguoithamgia] [VARCHAR] (32) NULL,
	[dia_chi] [VARCHAR](32) NULL,
	[ma_phuongxa] [VARCHAR](32) NULL,
	[ma_ttp] [VARCHAR](32) NULL,
	[unit_id] [int] NOT NULL,
	[ghi_chu] [NVARCHAR](2000) NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_qllichtd] PRIMARY KEY CLUSTERED 
(
	[ma_lichtd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('qllichtdbuoi') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table qllichtdbuoi

CREATE TABLE [dbo].[qllichtdbuoi](
	[ma_lichtd] [varchar](32) NOT NULL,
	[ma_nv] [VARCHAR](32) NOT NULL,
	[ngay_dk] [DATE] NULL,
	[ma_calv] [VARCHAR](32) NULL,
	[dia_chi] [NVARCHAR](32) NULL,
	[ma_phuongxa] [VARCHAR](32) NULL,
	[ma_ttp] [VARCHAR](32) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id_acp] [int] NULL,
	[ngay_acp] [datetime] NULL
 CONSTRAINT [PK_qllichtdbuoi] PRIMARY KEY CLUSTERED 
(
	[ma_lichtd] ASC,
	[ma_nv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)

if exists (select * from sysobjects where id = object_id('dmdkngay') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmdkngay

CREATE TABLE [dbo].[dmdkngay](
	[ma_dkngay] [varchar](32) NOT NULL,
	[ten_dkngay] [nvarchar](128) NOT NULL,
	[ten_dkngay2] [nvarchar](128) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmdkngay] PRIMARY KEY CLUSTERED 
(
	[ma_dkngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmdtcntd') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmdtcntd

CREATE TABLE [dbo].[dmdtcntd](
	[ma_nv] [varchar](32) NOT NULL,
	[ho_ten] [NVARCHAR](255) NULL,
	[ma_pb] [VARCHAR](32) NULL,
	[ma_bp] [VARCHAR](32) NULL,
	[ma_cv] [VARCHAR](32) NULL,
	[ma_ttp] [VARCHAR](32) NULL,
	[ma_phuongxa] [VARCHAR](32) NULL,
	[ma_loai] [VARCHAR](32) NULL,
	[dien_thoai] [varchar](255) NOT NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[status] [tinyint] NULL,
	[unit_id] [int] NOT NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmdtcntd] PRIMARY KEY CLUSTERED 
(
	[ma_nv] ASC,
	[dien_thoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmhotline') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmhotline

CREATE TABLE [dbo].[dmhotline](
	[ma_hl] [varchar](32) NOT NULL,
	[hl_name] [NVARCHAR](255) NULL,
	[hl_lienhe] [NVARCHAR](255) NULL,
	[ma_loai] [VARCHAR](32) NULL,
	[ma_ttp] [VARCHAR](32) NULL,
	[ma_phuongxa] [VARCHAR](32) NULL,
	[dien_thoai] [varchar](255) NOT NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[stt] [int] NULL,
	[ngay_hl] [DATE] NULL,
	[ngay_hld] [DATE] NULL,
	[status] [tinyint] NULL,
	[unit_id] [int] NOT NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmhotline] PRIMARY KEY CLUSTERED 
(
	[ma_hl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmloaiphone') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmloaiphone

CREATE TABLE [dbo].[dmloaiphone](
	[ma_loai] [varchar](32) NOT NULL,
	[ten_loai] [nvarchar](128) NOT NULL,
	[ten_loai2] [nvarchar](128) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmloaiphone] PRIMARY KEY CLUSTERED 
(
	[ma_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('dmchibo') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmchibo

CREATE TABLE [dbo].[dmchibo](
	[ma_chibo] [varchar](5) NOT NULL,
	[ten_chibo] [nvarchar](128) NOT NULL,
	[ten_chibo2] [nvarchar](128) NULL,
	[ma_ttp] [VARCHAR](32) NULL,
	[ma_phuongxa] [VARCHAR](32) NULL,
	[ma_khupho] [VARCHAR](32) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmchibo] PRIMARY KEY CLUSTERED 
(
	[ma_chibo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('qldangvien') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table qldangvien

CREATE TABLE [dbo].[qldangvien](
	[ma_dangvien] [varchar](5) NOT NULL,
	[ma_loai] [VARCHAR](32) NULL,
	[ma_cudan] [VARCHAR](32) NULL,
	[so_the_dang] [VARCHAR](50) NULL,
	[ngay_vao_dang] [DATE] NULL,
	[ngay_chinh_thuc] [DATE] NULL,
	[ma_chibo] [VARCHAR](32) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_qldangvien] PRIMARY KEY CLUSTERED 
(
	[ma_dangvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('dmloaidangvien') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmloaidangvien

CREATE TABLE [dbo].[dmloaidangvien](
	[ma_loai] [varchar](32) NOT NULL,
	[ten_loai] [nvarchar](128) NOT NULL,
	[ten_loai2] [nvarchar](128) NULL,
	[unit_id] [int] NOT NULL,
	[status] [tinyint] NULL,
	[user_id0] [int] NULL,
	[user_id2] [int] NULL,
	[datetime0] [datetime] NULL,
	[datetime2] [datetime] NULL,
 CONSTRAINT [PK_dmloaidangvien] PRIMARY KEY CLUSTERED 
(
	[ma_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

