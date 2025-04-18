USE [SportShoppingZlatovryaskix]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indexes]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indexes](
	[IndexesId] [int] IDENTITY(1,1) NOT NULL,
	[IndexesOf] [int] NOT NULL,
 CONSTRAINT [PK_Indexes] PRIMARY KEY CLUSTERED 
(
	[IndexesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderNumber] [int] IDENTITY(1,1) NOT NULL,
	[Data] [date] NOT NULL,
	[PickPoint] [int] NOT NULL,
	[Fio] [int] NULL,
	[Code] [int] NOT NULL,
	[OrderStatus] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderSporting]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderSporting](
	[OrderSportingId] [int] NOT NULL,
	[Sostav] [int] NOT NULL,
	[IdSportings] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_OrderSporting] PRIMARY KEY CLUSTERED 
(
	[OrderSportingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickPoint](
	[PickPoint] [int] NOT NULL,
	[IdIndex] [int] NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[NumberHouse] [int] NOT NULL,
 CONSTRAINT [PK_PickPoint] PRIMARY KEY CLUSTERED 
(
	[PickPoint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[ProductNameId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[ProductNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sportings]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sportings](
	[SportingId] [int] NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[Name] [int] NOT NULL,
	[Unit] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Sails] [int] NOT NULL,
	[Manufacturer] [int] NOT NULL,
	[Supplier] [int] NOT NULL,
	[Category] [int] NOT NULL,
	[Kol-vo] [int] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Image] [image] NOT NULL,
 CONSTRAINT [PK_Sportings] PRIMARY KEY CLUSTERED 
(
	[SportingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[StreetId] [int] IDENTITY(1,1) NOT NULL,
	[StreetName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[StreetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[Supplier] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 08.04.2025 13:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] NOT NULL,
	[IdRole] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Lname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](100) NOT NULL,
	[Passworld] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Category]) VALUES (1, N'Одежда')
INSERT [dbo].[Category] ([CategoryId], [Category]) VALUES (2, N'Спортивный инвентарь')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [CityId]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Indexes] ON 

INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (1, 125061)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (2, 125703)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (3, 125837)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (4, 190949)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (5, 344288)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (6, 394060)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (7, 394242)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (8, 394782)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (9, 400562)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (10, 410172)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (11, 410542)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (12, 410661)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (13, 420151)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (14, 426030)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (15, 443890)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (16, 450375)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (17, 450558)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (18, 450983)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (19, 454311)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (20, 603002)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (21, 603036)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (22, 603379)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (23, 603721)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (24, 614164)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (25, 614510)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (26, 614611)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (27, 614753)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (28, 620839)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (29, 625283)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (30, 625560)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (31, 625590)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (32, 625683)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (33, 630201)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (34, 630370)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (35, 660007)
INSERT [dbo].[Indexes] ([IndexesId], [IndexesOf]) VALUES (36, 660540)
SET IDENTITY_INSERT [dbo].[Indexes] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (1, N'Abtoys')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (2, N'Atemi')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (3, N'Bradex')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (4, N'Colton')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (5, N'Demix')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (6, N'DFC')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (7, N'Green Hill')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (8, N'Mikasa')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (9, N'Moby Kids')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (10, N'Molten')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (11, N'Nordway')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (12, N'Perfetto Sport')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (13, N'playToday')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (14, N'Ridex')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (15, N'ROMANA Next')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (16, N'Salomon')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (17, N'SKIF')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (18, N'Starfit')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (19, N'X-Match')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [Manufacturer]) VALUES (20, N'Совтехстром')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (1, CAST(N'2022-05-15' AS Date), 18, 7, 401, 2)
INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (2, CAST(N'2022-05-16' AS Date), 20, 8, 402, 2)
INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (3, CAST(N'2022-05-17' AS Date), 20, 9, 403, 1)
INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (4, CAST(N'2022-05-18' AS Date), 22, 10, 404, 2)
INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (5, CAST(N'2022-05-19' AS Date), 22, NULL, 405, 2)
INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (6, CAST(N'2022-05-19' AS Date), 16, NULL, 406, 2)
INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (7, CAST(N'2022-05-21' AS Date), 16, NULL, 407, 1)
INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (8, CAST(N'2022-05-22' AS Date), 18, NULL, 408, 1)
INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (9, CAST(N'2022-05-23' AS Date), 24, NULL, 409, 2)
INSERT [dbo].[Order] ([OrderNumber], [Data], [PickPoint], [Fio], [Code], [OrderStatus]) VALUES (10, CAST(N'2022-05-24' AS Date), 24, NULL, 410, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (1, 1, 1, 2)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (2, 2, 3, 3)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (3, 3, 6, 10)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (4, 4, 8, 1)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (5, 5, 11, 10)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (6, 6, 13, 2)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (7, 7, 15, 1)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (8, 8, 17, 3)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (9, 9, 23, 1)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (10, 10, 28, 5)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (11, 1, 2, 2)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (12, 2, 4, 3)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (13, 3, 7, 10)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (14, 4, 9, 1)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (15, 5, 12, 10)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (16, 6, 14, 2)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (17, 7, 16, 1)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (18, 8, 18, 3)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (19, 9, 24, 1)
INSERT [dbo].[OrderSporting] ([OrderSportingId], [Sostav], [IdSportings], [Count]) VALUES (20, 10, 29, 5)
GO
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (1, 5, 1, 27, 1)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (2, 24, 1, 30, 30)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (3, 7, 1, 7, 43)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (4, 36, 1, 23, 25)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (5, 3, 1, 29, 40)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (6, 2, 1, 16, 49)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (7, 29, 1, 17, 46)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (8, 26, 1, 11, 50)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (9, 19, 1, 14, 19)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (10, 35, 1, 15, 19)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (11, 21, 1, 20, 4)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (12, 18, 1, 8, 26)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (13, 8, 1, 27, 3)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (15, 17, 1, 12, 30)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (16, 6, 1, 25, 43)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (17, 12, 1, 28, 50)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (18, 31, 1, 7, 20)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (19, 32, 1, 1, 8)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (21, 25, 1, 9, 47)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (22, 11, 1, 21, 46)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (23, 28, 1, 26, 8)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (24, 15, 1, 7, 1)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (25, 22, 1, 24, 46)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (27, 10, 1, 22, 13)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (29, 1, 1, 18, 8)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (30, 34, 1, 29, 24)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (31, 27, 1, 19, 35)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (32, 14, 1, 9, 44)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (33, 16, 1, 6, 44)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (34, 30, 1, 13, 12)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (35, 33, 1, 8, 17)
INSERT [dbo].[PickPoint] ([PickPoint], [IdIndex], [IdCity], [IdStreet], [NumberHouse]) VALUES (36, 4, 1, 10, 26)
GO
SET IDENTITY_INSERT [dbo].[ProductName] ON 

INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (1, N'Боксерская груша
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (2, N'Велосипед
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (3, N'Велотренажер
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (4, N'Гиря
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (5, N'Защита голени
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (6, N'Игровой набор
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (7, N'Клюшка
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (8, N'Коврик
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (9, N'Коньки
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (10, N'Ласты
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (11, N'Лыжный комплект
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (12, N'Мяч
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (13, N'Набор для хоккея
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (14, N'Насос
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (15, N'Очки для плавания
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (16, N'Перчатки 
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (17, N'Перчатки для карате
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (18, N'Ролик для йоги
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (19, N'Ролики
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (20, N'Спортивный костюм
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (21, N'Спортивный мат
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (22, N'Степ-платформа
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (23, N'Тренажер прыжков
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (24, N'Тюбинг
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (25, N'Шапочка для плавания
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (26, N'Шведская стенка
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (27, N'Шлем
')
INSERT [dbo].[ProductName] ([ProductNameId], [ProductName]) VALUES (28, N'Штанга
')
SET IDENTITY_INSERT [dbo].[ProductName] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Администратор
')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'
Клиент
')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'Менеджер
')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [Status]) VALUES (1, N'Завершён')
INSERT [dbo].[Status] ([StatusId], [Status]) VALUES (2, N'Новый')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (1, N' ул. Вишневая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (2, N' ул. Гоголя')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (3, N' ул. Дзержинского')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (4, N' ул. Зеленая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (5, N' ул. Клубная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (6, N' ул. Коммунистическая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (7, N' ул. Комсомольская')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (8, N' ул. Марта')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (9, N' ул. Маяковского')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (10, N' ул. Мичурина')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (11, N' ул. Молодежная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (12, N' ул. Набережная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (13, N' ул. Некрасова')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (14, N' ул. Новая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (15, N' ул. Октябрьская')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (16, N' ул. Партизанская')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (17, N' ул. Победы')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (18, N' ул. Подгорная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (19, N' ул. Полевая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (20, N' ул. Садовая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (21, N' ул. Светлая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (22, N' ул. Северная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (23, N' ул. Солнечная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (24, N' ул. Спортивная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (25, N' ул. Фрунзе')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (26, N' ул. Цветочная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (27, N' ул. Чехова')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (28, N' ул. Школьная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (29, N' ул. Шоссейная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (30, N' ул. Степная')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierId], [Supplier]) VALUES (1, N'Декатлон')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([UnitId], [Unit]) VALUES (1, N'шт.')
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (1, 1, N'Пахомова', N'Аиша', N'Анатольевна', N'm4ic8j5qgstw@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (2, 1, N'Жуков', N'Роман', N'Богданович', N'd43zfg9tlsyv@gmail.com', N'uzWC67')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (3, 1, N'Киселева', N'Анастасия', N'Максимовна', N'8ohgisf6k45w@outlook.com', N'8ntwUp')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (4, 3, N'Григорьева', N'Арина', N'Арсентьевна', N'hi1brwj46czx@mail.com', N'YOyhfR')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (5, 3, N'Иванов', N'Лев', N'Михайлович', N'fvkbcamhlj52@gmail.com', N'RSbvHv')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (6, 3, N'Григорьев', N'Лев', N'Давидович', N'9qxnce8jwruv@gmail.com', N'rwVDh9')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (7, 2, N'Поляков', N'Степан', N'Егорович', N'dotiex942p1r@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (8, 2, N'Леонова', N'Алиса', N'Кирилловна', N'n0bmi2h1xral@tutanota.com', N'gynQMT')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (9, 2, N'Яковлев', N'Платон', N'Константинович', N'sfm3t278kdvz@yahoo.com', N'AtnDjr')
INSERT [dbo].[User] ([UserId], [IdRole], [Surname], [Lname], [Patronymic], [Login], [Passworld]) VALUES (10, 2, N'Ковалева', N'Ева', N'Яковлевна', N'ilb8rdut0v7e@mail.com', N'JlFRCZ')
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_City]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Indexes] FOREIGN KEY([IdIndex])
REFERENCES [dbo].[Indexes] ([IndexesId])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Indexes]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Street] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Street] ([StreetId])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Street]
GO
ALTER TABLE [dbo].[Sportings]  WITH CHECK ADD  CONSTRAINT [FK_Sportings_Category] FOREIGN KEY([Category])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Sportings] CHECK CONSTRAINT [FK_Sportings_Category]
GO
ALTER TABLE [dbo].[Sportings]  WITH CHECK ADD  CONSTRAINT [FK_Sportings_Manufacturer] FOREIGN KEY([Manufacturer])
REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
ALTER TABLE [dbo].[Sportings] CHECK CONSTRAINT [FK_Sportings_Manufacturer]
GO
ALTER TABLE [dbo].[Sportings]  WITH CHECK ADD  CONSTRAINT [FK_Sportings_ProductName] FOREIGN KEY([Name])
REFERENCES [dbo].[ProductName] ([ProductNameId])
GO
ALTER TABLE [dbo].[Sportings] CHECK CONSTRAINT [FK_Sportings_ProductName]
GO
ALTER TABLE [dbo].[Sportings]  WITH CHECK ADD  CONSTRAINT [FK_Sportings_Supplier] FOREIGN KEY([Supplier])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Sportings] CHECK CONSTRAINT [FK_Sportings_Supplier]
GO
ALTER TABLE [dbo].[Sportings]  WITH CHECK ADD  CONSTRAINT [FK_Sportings_Unit] FOREIGN KEY([Unit])
REFERENCES [dbo].[Unit] ([UnitId])
GO
ALTER TABLE [dbo].[Sportings] CHECK CONSTRAINT [FK_Sportings_Unit]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
