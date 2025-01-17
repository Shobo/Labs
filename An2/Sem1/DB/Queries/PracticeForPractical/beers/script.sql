USE [CustomerTracking]
GO
/****** Object:  Table [dbo].[Bars]    Script Date: 07.02.2014 20:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bars](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Bars] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BarsBeers]    Script Date: 07.02.2014 20:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarsBeers](
	[bar_id] [int] NOT NULL,
	[beer_id] [int] NOT NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK_BarsBeers] PRIMARY KEY CLUSTERED 
(
	[bar_id] ASC,
	[beer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Beers]    Script Date: 07.02.2014 20:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL,
	[producer_price] [money] NOT NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [PK_Beers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 07.02.2014 20:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 07.02.2014 20:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomersBeers]    Script Date: 07.02.2014 20:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomersBeers](
	[customer_id] [int] NOT NULL,
	[beer_id] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[timestamp] [timestamp] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FavoriteBeersList]    Script Date: 07.02.2014 20:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteBeersList](
	[customer_id] [int] NOT NULL,
	[beer_id] [int] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Bars] ON 

INSERT [dbo].[Bars] ([id], [name]) VALUES (1, N'bar1                ')
INSERT [dbo].[Bars] ([id], [name]) VALUES (2, N'bar2                ')
INSERT [dbo].[Bars] ([id], [name]) VALUES (3, N'bar3                ')
INSERT [dbo].[Bars] ([id], [name]) VALUES (4, N'bar4                ')
SET IDENTITY_INSERT [dbo].[Bars] OFF
INSERT [dbo].[BarsBeers] ([bar_id], [beer_id], [price]) VALUES (1, 1, 5.0000)
INSERT [dbo].[BarsBeers] ([bar_id], [beer_id], [price]) VALUES (1, 2, 7.5000)
INSERT [dbo].[BarsBeers] ([bar_id], [beer_id], [price]) VALUES (2, 3, 3.0000)
INSERT [dbo].[BarsBeers] ([bar_id], [beer_id], [price]) VALUES (2, 5, 2.5000)
INSERT [dbo].[BarsBeers] ([bar_id], [beer_id], [price]) VALUES (3, 1, 20.0000)
INSERT [dbo].[BarsBeers] ([bar_id], [beer_id], [price]) VALUES (3, 2, 30.0000)
INSERT [dbo].[BarsBeers] ([bar_id], [beer_id], [price]) VALUES (3, 4, 25.0000)
SET IDENTITY_INSERT [dbo].[Beers] ON 

INSERT [dbo].[Beers] ([id], [name], [producer_price], [category_id]) VALUES (1, N'ursus               ', 3.0000, 2)
INSERT [dbo].[Beers] ([id], [name], [producer_price], [category_id]) VALUES (2, N'golden beer         ', 5.0000, 3)
INSERT [dbo].[Beers] ([id], [name], [producer_price], [category_id]) VALUES (3, N'beer2               ', 2.0000, 1)
INSERT [dbo].[Beers] ([id], [name], [producer_price], [category_id]) VALUES (4, N'lipton              ', 3.5000, 2)
INSERT [dbo].[Beers] ([id], [name], [producer_price], [category_id]) VALUES (5, N'beer1               ', 1.9000, 1)
INSERT [dbo].[Beers] ([id], [name], [producer_price], [category_id]) VALUES (6, N'beer2               ', 3.5000, 2)
SET IDENTITY_INSERT [dbo].[Beers] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'cheep               ')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'medium price        ')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'expensive           ')
INSERT [dbo].[Categories] ([id], [name]) VALUES (4, N'limited edition     ')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([id], [name]) VALUES (1, N'vasile              ')
INSERT [dbo].[Customers] ([id], [name]) VALUES (2, N'georgel             ')
INSERT [dbo].[Customers] ([id], [name]) VALUES (3, N'dinu                ')
INSERT [dbo].[Customers] ([id], [name]) VALUES (4, N'vasalie             ')
INSERT [dbo].[Customers] ([id], [name]) VALUES (5, N'soma                ')
SET IDENTITY_INSERT [dbo].[Customers] OFF
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (1, 2, CAST(0x0000A2A700000000 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (2, 2, CAST(0x0000A2A80130DEE0 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (2, 2, CAST(0x0000A2A801339E00 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (2, 2, CAST(0x0000A2A801365D20 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (3, 1, CAST(0x0000A2A80139A8E0 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (2, 2, CAST(0x0000A2A8013E9A80 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (2, 2, CAST(0x0000A2A8014F1540 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (4, 3, CAST(0x0000A2AA011AE5E0 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (4, 3, CAST(0x0000A2AA0130DEE0 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (4, 3, CAST(0x0000A2AA012E1FC0 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (4, 3, CAST(0x0000A2AA0130DEE0 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (4, 1, CAST(0x0000A2AA013F6D70 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (5, 4, CAST(0x0000A2CA013E9A80 AS DateTime))
INSERT [dbo].[CustomersBeers] ([customer_id], [beer_id], [time]) VALUES (4, 3, CAST(0x0000A2C9013E9A80 AS DateTime))
INSERT [dbo].[FavoriteBeersList] ([customer_id], [beer_id]) VALUES (2, 2)
ALTER TABLE [dbo].[BarsBeers]  WITH CHECK ADD  CONSTRAINT [FK_BarsBeers_Bars] FOREIGN KEY([bar_id])
REFERENCES [dbo].[Bars] ([id])
GO
ALTER TABLE [dbo].[BarsBeers] CHECK CONSTRAINT [FK_BarsBeers_Bars]
GO
ALTER TABLE [dbo].[BarsBeers]  WITH CHECK ADD  CONSTRAINT [FK_BarsBeers_Beers] FOREIGN KEY([beer_id])
REFERENCES [dbo].[Beers] ([id])
GO
ALTER TABLE [dbo].[BarsBeers] CHECK CONSTRAINT [FK_BarsBeers_Beers]
GO
ALTER TABLE [dbo].[Beers]  WITH CHECK ADD  CONSTRAINT [FK_Beers_Categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Beers] CHECK CONSTRAINT [FK_Beers_Categories]
GO
ALTER TABLE [dbo].[CustomersBeers]  WITH CHECK ADD  CONSTRAINT [FK_CustomersBeers_Beers] FOREIGN KEY([beer_id])
REFERENCES [dbo].[Beers] ([id])
GO
ALTER TABLE [dbo].[CustomersBeers] CHECK CONSTRAINT [FK_CustomersBeers_Beers]
GO
ALTER TABLE [dbo].[CustomersBeers]  WITH CHECK ADD  CONSTRAINT [FK_CustomersBeers_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[CustomersBeers] CHECK CONSTRAINT [FK_CustomersBeers_Customers]
GO
ALTER TABLE [dbo].[FavoriteBeersList]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteBeersList_Beers] FOREIGN KEY([beer_id])
REFERENCES [dbo].[Beers] ([id])
GO
ALTER TABLE [dbo].[FavoriteBeersList] CHECK CONSTRAINT [FK_FavoriteBeersList_Beers]
GO
ALTER TABLE [dbo].[FavoriteBeersList]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteBeersList_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[FavoriteBeersList] CHECK CONSTRAINT [FK_FavoriteBeersList_Customers]
GO
