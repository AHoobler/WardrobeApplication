USE [master]
GO
/****** Object:  Database [WardrobeDB2]    Script Date: 3/19/2018 8:51:30 AM ******/
CREATE DATABASE [WardrobeDB2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDB2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB2.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDB2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDB2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDB2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDB2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDB2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDB2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDB2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDB2] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDB2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDB2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDB2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDB2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDB2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDB2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDB2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDB2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDB2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDB2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDB2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDB2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDB2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDB2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDB2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDB2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDB2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDB2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDB2] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDB2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDB2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDB2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDB2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDB2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDB2]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 3/19/2018 8:51:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](200) NOT NULL,
	[AccessoryColor] [nvarchar](50) NOT NULL,
	[AccessorySeason] [nvarchar](50) NOT NULL,
	[AccessoryOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 3/19/2018 8:51:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomPhoto] [nvarchar](200) NOT NULL,
	[BottomColor] [nvarchar](50) NOT NULL,
	[BottomSeason] [nvarchar](50) NOT NULL,
	[BottomOccasion] [nvarchar](50) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 3/19/2018 8:51:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 3/19/2018 8:51:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](200) NOT NULL,
	[ShoeColor] [nvarchar](50) NOT NULL,
	[ShoeSeason] [nvarchar](50) NOT NULL,
	[ShoeOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Top]    Script Date: 3/19/2018 8:51:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](100) NOT NULL,
	[TopColor] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](200) NOT NULL,
	[TopSeason] [nvarchar](50) NOT NULL,
	[TopOccasion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (1, N'Best Sock from Mr. Harry Potter', N'/Content/images/whitesock.jpg', N'White', N'All Season', N'Casual')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (2, N'Orange Sock', N'/Content/images/orangesock.jpg', N'Orange', N'All Season', N'Casual')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (3, N'Tacosaurus Socks', N'/Content/images/tacosaurussocks.jpg', N'Multi', N'All Season', N'For working in the kitchen ')
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion], [BottomName]) VALUES (1, N'/Content/images/greenpants.jpg', N'Green', N'All Season', N'Casual', N'Green Pants')
INSERT [dbo].[Bottom] ([BottomID], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion], [BottomName]) VALUES (2, N'/Content/images/pinkpants.jpg', N'Multi', N'All Season', N'Casual', N'Very Colourful Pants')
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (1, N'Witch Shoes', N'/Content/images/witchshoes.jpg', N'Black', N'All Season', N'Formal')
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (2, N'Green Crocs', N'/Content/images/crocs.jpg', N'Grey', N'All Season', N'Casual')
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopID], [TopName], [TopColor], [TopPhoto], [TopSeason], [TopOccasion]) VALUES (1, N'Tie-dye Shirt', N'Multi', N'/Content/images/tyedyeshirt.jpg', N'Summer', N'Casual')
INSERT [dbo].[Top] ([TopID], [TopName], [TopColor], [TopPhoto], [TopSeason], [TopOccasion]) VALUES (2, N'Sweater from Mr. Weasley', N'Red', N'/Content/images/redsweater.jpg', N'Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[Top] OFF
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessory] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Accessory] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessory]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottom] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottom] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottom]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoe] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoe] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoe]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Top] FOREIGN KEY([TopID])
REFERENCES [dbo].[Top] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Top]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDB2] SET  READ_WRITE 
GO
