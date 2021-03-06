USE [master]
GO
/****** Object:  Database [Bookclub]    Script Date: 21.12.2016 02:03:36 ******/
CREATE DATABASE [Bookclub]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bookclub', FILENAME = N'C:\Users\Berk\Bookclub.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bookclub_log', FILENAME = N'C:\Users\Berk\Bookclub_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bookclub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bookclub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bookclub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bookclub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bookclub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bookclub] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bookclub] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bookclub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bookclub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bookclub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bookclub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bookclub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bookclub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bookclub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bookclub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bookclub] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bookclub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bookclub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bookclub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bookclub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bookclub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bookclub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bookclub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bookclub] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bookclub] SET  MULTI_USER 
GO
ALTER DATABASE [Bookclub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bookclub] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bookclub] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bookclub] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bookclub] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Bookclub]
GO
/****** Object:  Table [dbo].[booksInformation]    Script Date: 21.12.2016 02:03:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booksInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[bookID] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[pricetype] [nvarchar](50) NULL,
	[language] [nvarchar](50) NULL,
	[avaib] [nvarchar](50) NULL,
	[point] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[booksmain]    Script Date: 21.12.2016 02:03:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booksmain](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[author] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[USprice] [nvarchar](50) NULL,
	[USnewprice] [nvarchar](50) NULL,
	[date] [nvarchar](50) NULL,
	[languages] [nvarchar](50) NULL,
	[USsaveprice] [nvarchar](50) NULL,
	[Eprice] [nvarchar](50) NULL,
	[Enewprice] [nvarchar](50) NULL,
	[Esaveprice] [nvarchar](50) NULL,
	[Tprice] [nvarchar](50) NULL,
	[Tnewprice] [nvarchar](50) NULL,
	[Tsaveprice] [nvarchar](50) NULL,
	[number] [nvarchar](50) NULL,
	[bookID] [nvarchar](50) NULL,
	[link] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[booktypes]    Script Date: 21.12.2016 02:03:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booktypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[categorytypes] [nvarchar](50) NULL,
	[pricerangetype] [nvarchar](50) NULL,
	[languagetype] [nvarchar](50) NULL,
	[availabilitytype] [nvarchar](50) NULL,
	[pointtype] [nvarchar](50) NULL,
	[pricetype] [nvarchar](50) NULL,
	[BookID] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 21.12.2016 02:03:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[Comment] [nvarchar](250) NULL,
	[Date] [nvarchar](50) NULL,
	[Hour] [nvarchar](50) NULL,
	[Begen] [int] NULL DEFAULT ((0)),
	[Begenme] [int] NULL DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messages]    Script Date: 21.12.2016 02:03:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kim] [nvarchar](50) NULL,
	[Kime] [nvarchar](50) NULL,
	[mesaj] [nvarchar](150) NULL,
	[tarih] [nvarchar](50) NULL,
	[saat] [nvarchar](50) NULL,
	[icon] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Register]    Script Date: 21.12.2016 02:03:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[Puan] [int] NULL DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRatings]    Script Date: 21.12.2016 02:03:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRatings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserRatings1] [float] NULL,
	[UserRatings2] [float] NULL,
	[UserRatings3] [float] NULL,
	[UserRatings4] [float] NULL,
	[UserRatings5] [float] NULL,
	[UserRatings6] [float] NULL,
	[UserRatings7] [float] NULL,
	[UserRatings8] [float] NULL,
	[UserRatings9] [float] NULL,
	[UserRatings10] [float] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[booksInformation] ON 

INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (1, N'1', N'Fantastic', N'Under US$20', N'English', N'In stock', N'9')
INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (2, N'2', N'Fantastic', N'Under US$20', N'English', N'In stock', N'8')
INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (3, N'3', N'Romance', N'US$20 to US$40', N'German', N'Pre-order', N'7')
INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (4, N'4', N'Crime & Thriller', N'Under US$20', N'French', N'In stock', N'9')
INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (5, N'5', N'Fantastic', N'US$20 to US$40', N'French', N'Pre-order', N'8')
INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (6, N'6', N'Romance', N'US$40+', N'English', N'In stock', N'7')
INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (7, N'7', N'Romance', N'US$20 to US$40', N'Spanish', N'Pre-order', N'9')
INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (8, N'8', N'Fantastic', N'Under US$20', N'English', N'In stock', N'8')
INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (9, N'9', N'Fantastic', N'Under US$20', N'English', N'In stock', N'7')
INSERT [dbo].[booksInformation] ([Id], [bookID], [category], [pricetype], [language], [avaib], [point]) VALUES (10, N'10', N'Teen & Young Adult', N'Under US$20', N'English', N'In stock', N'8')
SET IDENTITY_INSERT [dbo].[booksInformation] OFF
SET IDENTITY_INSERT [dbo].[booksmain] ON 

INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (1, N'Harry Potter and the Cursed Child', N'J. K. Rowling', N'image01.jpg', N'US$25.79', N'US$18.03', N'31 Jul 2016', N'English', N'Save US$5.60', N'24,45 €', N'18,28 €', N'Save 6.17 €', N'₺ 59.99', N'₺ 49.99', N'Save ₺ 10', N'1', N'1', N'book1.aspx')
INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (2, N'Everything I Never Told You', N'Celeste Ng', N'image02.jpg', N'US$11.34', N'US$9.48', N'13 Nov 2014', N'English', N'Save US$3.72', N'33.19 €', N'31.19 €', N'Save 2 €', N'₺ 33.19', N'₺ 31.19', N'Save ₺ 2', N'2', N'2', N'book2.aspx')
INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (3, N'The Girl on the Train', N'Paula Hawkins', N'image03.jpg', N'US$24.18', N'US$20.18', N'05 May 2016', N'German', N'Save US$13.11', N'24.18 €', N'20.18 €', N'Save 4.11 €', N'₺ 24.18', N'₺ 20.18', N'Save ₺ 4.11', N'3', N'3', N'book3.aspx')
INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (4, N'Night School', N'Lee Child', N'image04.jpg', N'US$13.17', N'US$9.12', N'07 Nov 2016', N'French', N'Save US$2.52', N'33.17 €', N'25.13 €', N'Save 5.4 €', N'₺ 33.17', N'₺ 25.13', N'Save ₺ 5.4', N'4', N'4', N'book4.aspx')
INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (5, N'Milk and Honey', N'Rupi Kaur', N'image05.jpg', N'US$32.11', N'US$28.44', N'05 Nov 2015', N'French', N'Save US$7.12', N'46.11 €', N'31.23 €', N'Save 11.57 €', N'₺ 42.11', N'₺ 30.23', N'Save ₺ 11.57', N'5', N'5', N'book5.aspx')
INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (6, N'The Midnight Gang', N'David Walliams', N'image06.jpg', N'US$65.12', N'US$57.11', N'03 Nov 2016', N'English', N'Save US$5.22', N'34.25 €', N'31.36 €', N'Save 2.97 €', N'₺ 34.25', N'₺ 31.36', N'Save ₺ 2.97', N'6', N'6', N'book6.aspx')
INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (7, N'The Sellout', N'Paul Beatty', N'image07.jpg', N'US$39.19', N'US$28.12', N'04 Nov 2016', N'Spanish', N'Save US$13.18', N'55.21 €', N'38.19 €', N'Save 17.41 €', N'₺ 55.21', N'₺ 38.19', N'Save ₺ 17.41', N'7', N'7', N'book7.aspx')
INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (8, N'Born to Run', N'Bruce Springsteen', N'image08.jpg', N'US$17.42', N'US$15.19', N'27 Sep 2016', N'English', N'Save US$12.76', N'63.23 €', N'52.14 €', N'Save 11.12 €', N'₺ 63.23', N'₺ 52.14', N'Save ₺ 11.12', N'8', N'8', N'book8.aspx')
INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (10, N'All the Light We Cannot See', N'Anthony Doerr', N'image09.jpg', N'US$13.17', N'US$9.12', N'05 May 2016', N'English', N'Save US$2.52', N'33.17 €', N'25.13 €', N'Save 5.4 €', N'₺ 33.17', N'₺ 25.13', N'Save ₺ 5.4', N'9', N'9', N'book9.aspx')
INSERT [dbo].[booksmain] ([Id], [name], [author], [image], [USprice], [USnewprice], [date], [languages], [USsaveprice], [Eprice], [Enewprice], [Esaveprice], [Tprice], [Tnewprice], [Tsaveprice], [number], [bookID], [link]) VALUES (11, N'How it Works: The Dog', N'Jason Hazeley', N'image10.jpg', N'US$25.79', N'US$18.03', N'31 Jul 2016', N'English', N'Save US$5.60', N'24,45 €', N'18,28 €', N'Save 6.17 €', N'₺ 59.99', N'₺ 49.99', N'Save ₺ 10', N'10', N'10', N'book10.aspx')
SET IDENTITY_INSERT [dbo].[booksmain] OFF
SET IDENTITY_INSERT [dbo].[booktypes] ON 

INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (1, N'All', N'All', N'All', N'All', N'All', N'$ US Dollar', N'0')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (2, N'Biography', N'Under US$20', N'English', N'In stock', N'1', N'€ Euro', N'1')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (3, N'Children''s Books', N'US$20 to US$40', N'French', N'Pre-order', N'2', N'₺ Turk Lirası', N'2')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (4, N'Crime & Thriller', N'US$40+', N'Spanish', N'Pre-order', N'3', N'₺ Turk Lirası', N'3')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (5, N'Fantastic', N'US$40+', N'German', N'Pre-order', N'4', N'₺ Turk Lirası', N'4')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (6, N'Fiction', N'US$40+', N'Russian', N'Pre-order', N'5', N'₺ Turk Lirası', N'5')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (7, N'Romance', N'US$40+', N'Turkish', N'Pre-order', N'6', N'₺ Turk Lirası', N'6')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (8, N'Teen & Young Adult', N'US$40+', N'Turkish', N'Pre-order', N'7', N'₺ Turk Lirası', N'7')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (9, N'Romance', N'US$40+', N'Turkish', N'Pre-order', N'8', N'₺ Turk Lirası', N'8')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (10, N'Romance', N'US$40+', N'Turkish', N'Pre-order', N'9', N'₺ Turk Lirası', N'9')
INSERT [dbo].[booktypes] ([Id], [categorytypes], [pricerangetype], [languagetype], [availabilitytype], [pointtype], [pricetype], [BookID]) VALUES (13, N'Romance', N'US$40+', N'Turkish', N'Pre-order', N'10', N'₺ Turk Lirası', N'10')
SET IDENTITY_INSERT [dbo].[booktypes] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Name], [Icon], [Comment], [Date], [Hour], [Begen], [Begenme]) VALUES (4013, N'berk', N'usericon3.png', N'Every time I read this book it brings back so many memories, and also gets me excited to read the rest of the series again as well because there is so much foreshadowing', N'20.12.2016', N'19:42:16', 6, 2)
INSERT [dbo].[Comments] ([Id], [Name], [Icon], [Comment], [Date], [Hour], [Begen], [Begenme]) VALUES (4014, N'Jones', N'usericon1.png', N'I will never ever rate this lower than 5 stars. BEAUTIFUL.', N'20.12.2016', N'19:44:03', 5, 0)
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Register] ON 

INSERT [dbo].[Register] ([Id], [Email], [Name], [Password], [Icon], [Puan]) VALUES (2004, N'berkcl@gmail.com', N'Berk', N'berk111', N'usericon3.png', 1900)
INSERT [dbo].[Register] ([Id], [Email], [Name], [Password], [Icon], [Puan]) VALUES (3004, N'jones@hotmial.com', N'Jones', N'119119', N'usericon1.png', 1850)
INSERT [dbo].[Register] ([Id], [Email], [Name], [Password], [Icon], [Puan]) VALUES (3005, N'MarkDKeller@armyspy.com', N'Mark D', N'asdasd', N'usericon2.png', 900)
INSERT [dbo].[Register] ([Id], [Email], [Name], [Password], [Icon], [Puan]) VALUES (3006, N'HiltonEWatson@jourrapide.com', N'Hilton E', N'pasword', N'usericon4.png', 950)
INSERT [dbo].[Register] ([Id], [Email], [Name], [Password], [Icon], [Puan]) VALUES (3007, N'JudithGGarcia@jourrapide.com', N'Judith G', N'judi123', N'usericon5.png', 300)
SET IDENTITY_INSERT [dbo].[Register] OFF
SET IDENTITY_INSERT [dbo].[UserRatings] ON 

INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (3, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (1002, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (1003, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (2002, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (3002, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserRatings] ([Id], [UserRatings1], [UserRatings2], [UserRatings3], [UserRatings4], [UserRatings5], [UserRatings6], [UserRatings7], [UserRatings8], [UserRatings9], [UserRatings10]) VALUES (4002, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserRatings] OFF
USE [master]
GO
ALTER DATABASE [Bookclub] SET  READ_WRITE 
GO
