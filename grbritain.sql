USE [master]
GO
/****** Object:  Database [GrBritainRadel]    Script Date: 22.09.2022 11:23:53 ******/
CREATE DATABASE [GrBritainRadel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GrBritainRadel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\GrBritainRadel.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GrBritainRadel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\GrBritainRadel_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GrBritainRadel] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GrBritainRadel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GrBritainRadel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ARITHABORT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GrBritainRadel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GrBritainRadel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GrBritainRadel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GrBritainRadel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GrBritainRadel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GrBritainRadel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GrBritainRadel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GrBritainRadel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GrBritainRadel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GrBritainRadel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GrBritainRadel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GrBritainRadel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GrBritainRadel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GrBritainRadel] SET  MULTI_USER 
GO
ALTER DATABASE [GrBritainRadel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GrBritainRadel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GrBritainRadel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GrBritainRadel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [GrBritainRadel]
GO
/****** Object:  Table [dbo].[Category_Product]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Product](
	[CategoryId] [int] NOT NULL,
	[Name_Category] [nvarchar](100) NULL,
 CONSTRAINT [PK_Category_Product] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Sotrudnika]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Sotrudnika](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[CategoryZP] [float] NULL,
 CONSTRAINT [PK_Category_Sotrudnika] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Developer]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Developer](
	[id_developer] [int] NOT NULL,
	[name_developer] [nvarchar](100) NULL,
	[WorkingBeginDate] [date] NULL,
 CONSTRAINT [PK_Developer] PRIMARY KEY CLUSTERED 
(
	[id_developer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gate]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gate](
	[id_uslugi] [int] NOT NULL,
	[id_sotrudnika] [int] NOT NULL,
 CONSTRAINT [PK_gate] PRIMARY KEY CLUSTERED 
(
	[id_uslugi] ASC,
	[id_sotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historyBuy]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historyBuy](
	[id_history] [int] NOT NULL,
	[id_product] [int] NULL,
	[count_product_buy] [int] NULL,
	[date_buy] [datetime] NULL,
	[id_usr] [int] NULL,
 CONSTRAINT [PK_historyBuy] PRIMARY KEY CLUSTERED 
(
	[id_history] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id_product] [int] NOT NULL,
	[name_product] [nvarchar](max) NULL,
	[photo_product] [nvarchar](max) NULL,
	[price_product] [int] NULL,
	[weight_product] [float] NULL,
	[width_product] [float] NULL,
	[height_product] [float] NULL,
	[length_product] [float] NULL,
	[isActive] [char](1) NULL,
	[DeveloperId] [int] NULL,
	[CategoryId] [int] NULL,
	[Season_id] [int] NULL,
	[count_product] [int] NULL,
	[id_sclad] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sclad]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sclad](
	[id_sclad] [int] NOT NULL,
	[address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sclad] PRIMARY KEY CLUSTERED 
(
	[id_sclad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[Season_id] [int] NOT NULL,
	[name_season] [nvarchar](5) NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[Season_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudniki]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudniki](
	[id_sotrudnika] [int] NOT NULL,
	[fistname_sotr] [nvarchar](100) NULL,
	[secondname_sotr] [nvarchar](100) NULL,
	[patronymic_sotr] [nvarchar](100) NULL,
	[date_birthday_sotr] [date] NULL,
	[gender] [char](1) NULL,
	[seriaPassport] [nvarchar](4) NULL,
	[numberPassport] [nvarchar](6) NULL,
	[codePassport] [nvarchar](7) NULL,
	[isActive] [char](1) NULL,
	[KoefZP] [float] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[id_sotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id_usr] [int] NOT NULL,
	[photo_usr] [nvarchar](max) NULL,
	[firstname] [nvarchar](100) NULL,
	[secondname] [nvarchar](100) NULL,
	[patronymic] [nvarchar](100) NULL,
	[date_birthday] [date] NULL,
	[date_registr] [datetime] NULL,
	[email] [nvarchar](100) NULL,
	[numberphone] [nvarchar](11) NULL,
	[login_usr] [nvarchar](50) NULL,
	[password_usr] [nvarchar](50) NULL,
	[roles] [nvarchar](4) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id_usr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uslugi]    Script Date: 22.09.2022 11:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uslugi](
	[id_uslugi] [int] NOT NULL,
	[name_uslugi] [nvarchar](50) NULL,
	[Opicanie_uslugi] [nvarchar](max) NULL,
	[price_uslugi] [float] NULL,
	[dlitel_uslugi] [int] NULL,
	[photo_uslugi] [nvarchar](max) NULL,
	[Season_id] [int] NULL,
 CONSTRAINT [PK_Uslugi] PRIMARY KEY CLUSTERED 
(
	[id_uslugi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (1, N' Антология', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (2, N' АСТ', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (3, N' Виват', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (4, N' ИНФРА-М', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (5, N' Кнорус', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (6, N' Питер', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (7, N' Прометей', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (8, N' Проспект', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (9, N' Феникс', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (10, N' Флинта', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (11, N' Эксмо-Пресс', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (12, N' Яуза', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (13, N' Cambridge', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (14, N' Delta Publishing', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (15, N' Dorling Kindersley', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (16, N' Express Publishing', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (17, N' Ladybird', NULL)
INSERT [dbo].[Developer] ([id_developer], [name_developer], [WorkingBeginDate]) VALUES (18, N' Princeton Review', NULL)
GO
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (1, N'Английская грамматика в схемах и таблицах', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\713804.jpg', 170, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (2, N'Английская грамматика. Просто и понятно: правила', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\716808.jpg', 2060, NULL, NULL, NULL, NULL, N'1', 7, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (3, N'Английская грамматика. Самое важное. Учебное пособие (мини)', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\726085.jpg', 80, NULL, NULL, NULL, NULL, N'1', 8, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (4, N'Английские пословицы и поговорки. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\714143.jpg', 260, NULL, NULL, NULL, NULL, N'0', 10, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (5, N'Английский без барьеров. For beginners', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\722958.jpg', 420, NULL, NULL, NULL, NULL, N'1', 6, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (6, N'Английский без страха для тех', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\720888.jpg', 290, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (7, N'Английский для малышей и мам @my_english_baby. Как воспитать билингвального ребенка', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\718408.jpg', 390, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (8, N'Английский курсив: прописи', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\715875.jpg', 300, NULL, NULL, NULL, NULL, N'0', 12, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (9, N'Английский на каждый день', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\698477.jpg', 670, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (10, N'Английский с нуля. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\716806.jpg', 1840, NULL, NULL, NULL, NULL, N'1', 7, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (11, N'Английский язык для менеджеров. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\693032.jpg', 1280, NULL, NULL, NULL, NULL, N'1', 7, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (12, N'Английский язык для технических специальностей. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\730048.jpg', 2550, NULL, NULL, NULL, NULL, N'0', 4, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (13, N'Английский язык за 3 месяца. Быстрый восстановитель знаний', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\714131.jpg', 270, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (14, N'Английский язык на пальцах', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\712495.jpg', 360, NULL, NULL, NULL, NULL, N'0', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (15, N'Английский язык. Времена глаголов', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\710081.jpg', 150, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (16, N'Английский язык. Все времена и глаголы в схемах и таблицах', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\729495.jpg', 350, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (17, N'Английский язык. Идиомы', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\713805.jpg', 130, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (18, N'Английский язык. Идиомы (полезные карточки)', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\729857.jpg', 140, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (19, N'Английский язык. Популярный иллюстрированный самоучитель', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\726891.jpg', 400, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (20, N'Английский язык. Самые нужные правила', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\729858.jpg', 180, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (21, N'Английский язык. Тренажер по чтению', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\710082.jpg', 170, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (22, N'Английский язык. Фразовые глаголы', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\710083.jpg', 160, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (23, N'Безупречная английская грамматика. Простые правила и увлекательные тесты', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\723769.jpg', 720, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (24, N'Безупречный английский. Самоучитель для начинающих', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\727495.jpg', 680, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (25, N'Быстрый английский для начинающих', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\714137.jpg', 230, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (26, N'Быстрый английский. Тренажер по чтению', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\715170.jpg', 240, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (27, N'Вся английская грамматика в схемах и таблицах', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\729025.jpg', 370, NULL, NULL, NULL, NULL, N'0', 2, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (28, N'Вся грамматика английского языка в таблицах. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\716788.jpg', 390, NULL, NULL, NULL, NULL, N'1', 10, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (29, N'Вся грамматика английского языка. Теория и практика', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\724335.jpg', 410, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (30, N'Говори как английская королева. The Queen''s English and how to use it', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\699791.jpg', 420, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (31, N'Говорим по-английски', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\706297.jpg', 220, NULL, NULL, NULL, NULL, N'1', 3, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (32, N'Грамматика английского языка. Просто и доступно. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\696499.jpg', 450, NULL, NULL, NULL, NULL, N'0', 10, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (33, N'Грамматический профиль. Grammar Profile. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\710904.jpg', 450, NULL, NULL, NULL, NULL, N'1', 10, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (34, N'Деловой английский язык. (Бакалавриат и магистратура). Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\712853.jpg', 1080, NULL, NULL, NULL, NULL, N'1', 5, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (35, N'Интенсивный английский 4 в 1: говорим', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\716807.jpg', 1840, NULL, NULL, NULL, NULL, N'1', 7, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (36, N'Каллиграфия. Английский курсив. Самоучитель', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\721737.jpg', 270, NULL, NULL, NULL, NULL, N'0', 12, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (37, N'Курс английской разговорной речи. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\722820.jpg', 1790, NULL, NULL, NULL, NULL, N'1', 7, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (38, N'Разговорная грамматика английского языка', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\725306.jpg', 360, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (39, N'Разговорный английский в диалогах. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\730838.jpg', 1140, NULL, NULL, NULL, NULL, N'1', 5, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (40, N'Реальный English. Как подружиться с грамматикой раз и навсегда', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\704508.jpg', 690, NULL, NULL, NULL, NULL, N'1', 9, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (41, N'Самый быстрый способ выучить неправильные английские глаголы', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\718057.jpg', 70, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (42, N'Современная английская грамматика в таблицах', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\721525.jpg', 340, NULL, NULL, NULL, NULL, N'1', 11, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (43, N'Тренажер по чтению. Самый быстрый способ выучить английский язык', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\718058.jpg', 120, NULL, NULL, NULL, NULL, N'0', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (44, N'Учебник английского языка. Полный курс', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\729944.jpg', 1000, NULL, NULL, NULL, NULL, N'1', 11, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (45, N'Учебник английского языка. Часть 1', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\713136.jpg', 710, NULL, NULL, NULL, NULL, N'1', 11, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (46, N'Учебник английского языка. Часть 2', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\717996.jpg', 690, NULL, NULL, NULL, NULL, N'1', 11, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (47, N'Учим английский язык с енотами-полиглотами', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\724934.jpg', 340, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (48, N'Advanced Grammar in Use. Book without Answers', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700673.jpg', 1850, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (49, N'Business Vocabulary in Use. Advanced. Book with Answers', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700674.jpg', 2220, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (50, N'Business Vocabulary in Use. Advanced. Book with Answers and Enhanced ebook', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700675.jpg', 2840, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (51, N'Business Vocabulary in Use. Intermediate. Book with Answers and Enhanced ebook', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700676.jpg', 2690, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (52, N'Cracking GMAT Premium 2020 Edition. 6 Practice Tests', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\724652.jpg', 3140, NULL, NULL, NULL, NULL, N'1', 18, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (53, N'Cracking the GRE Premium Edition with 6 Practice Tests', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\730252.jpg', 3110, NULL, NULL, NULL, NULL, N'1', 18, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (54, N'Dive in! Blue', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\729198.jpg', 630, NULL, NULL, NULL, NULL, N'1', 14, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (55, N'Dive in! Green', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\729199.jpg', 640, NULL, NULL, NULL, NULL, N'0', 14, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (56, N'Dive in! Orange', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\729200.jpg', 650, NULL, NULL, NULL, NULL, N'1', 14, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (57, N'Elementary Vocabulary + Grammar. Foe Beginners and Pre-Intermediate Students. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\731489.jpg', 960, NULL, NULL, NULL, NULL, N'0', 1, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (58, N'English for Beginners: Everyday English', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\693086.jpg', 330, NULL, NULL, NULL, NULL, N'1', 17, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (59, N'English for Everyone. English Idioms', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\715801.jpg', 2290, NULL, NULL, NULL, NULL, N'1', 15, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (60, N'English for Everyone. English Vocabulary Builder', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\715802.jpg', 1980, NULL, NULL, NULL, NULL, N'1', 15, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (61, N'English Grammar in Use. Book with Answers', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700689.jpg', 1950, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (62, N'English Grammar in Use. Book without Answers', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700691.jpg', 1760, NULL, NULL, NULL, NULL, N'0', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (63, N'English Grammar Today Book with Workbook', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700707.jpg', 4110, NULL, NULL, NULL, NULL, N'0', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (64, N'English Vocabulary in Use. Advanced. Book with Answers', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700703.jpg', 1860, NULL, NULL, NULL, NULL, N'0', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (65, N'English Vocabulary in Use. Elementary. Book with Answers and Enhanced eBook', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700704.jpg', 2380, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (66, N'English Vocabulary in Use. Upper-Intermediate. Book with Answers', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700705.jpg', 1890, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (67, N'Everyday Vocabulary + Grammar. For Intermediate Students. Учебное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\722745.jpg', 1180, NULL, NULL, NULL, NULL, N'1', 1, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (68, N'Evolve. Level 1. Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\702640.jpg', 1840, NULL, NULL, NULL, NULL, N'0', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (69, N'Exam Booster For Advanced Without Ans Key + Audio', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\714676.jpg', 1300, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (70, N'Eyes Open Level 1 Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700889.jpg', 1340, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (71, N'Eyes Open. Level 3. Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700890.jpg', 1350, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (72, N'Eyes Open. Level 3. Workbook with Online Practice', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700891.jpg', 1110, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (73, N'Grammar in Use Intermediate Student''s Book with Answers Self-study Reference and Practice', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700901.jpg', 1950, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (74, N'Grammar in Use. Intermediate. Student''s Book with Answers and Interactive eBook', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700900.jpg', 2380, NULL, NULL, NULL, NULL, N'0', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (75, N'Grammar in Use. Intermediate. Student''s Book without Answers', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\700903.jpg', 1740, NULL, NULL, NULL, NULL, N'0', 13, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (76, N'Grammarway 1. Book with Answers. Beginner', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\702074.jpg', 1270, NULL, NULL, NULL, NULL, N'1', 16, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (77, N'Grammarway 2. Teacher''s Book. Elementary', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\702075.jpg', 910, NULL, NULL, NULL, NULL, N'1', 16, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (78, N'Legal English. Английский язык для юристов. Учебник', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\707289.jpg', 2720, NULL, NULL, NULL, NULL, N'1', 4, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (79, N'New Enterprise A2 - Grammar Book (with Digibooks App)', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701883.jpg', 1250, NULL, NULL, NULL, NULL, N'1', 16, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (80, N'New Enterprise A2 Student''s Book with DigiBooks App', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701882.jpg', 1650, NULL, NULL, NULL, NULL, N'1', 16, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (81, N'New Enterprise A2. Workbook with digibook app', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701884.jpg', 1220, NULL, NULL, NULL, NULL, N'1', 16, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (82, N'OK English! Все правила английского языка с упражнениями', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\694544.jpg', 370, NULL, NULL, NULL, NULL, N'1', 2, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (83, N'Pocket English Grammar (Карманная грамматика английского языка). Справочное пособие', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\690825.jpg', 390, NULL, NULL, NULL, NULL, N'1', 4, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (84, N'Prepare. Level 2. A2. Workbook with Audio Download', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701093.jpg', 1340, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (85, N'Prepare. Level 2. Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701088.jpg', 1780, NULL, NULL, NULL, NULL, N'0', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (86, N'Prepare. Level 3. A2. Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701094.jpg', 1810, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (87, N'Prepare. Level 4. B1. Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701097.jpg', 1810, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (88, N'Prepare. Level 5. B1. Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701098.jpg', 1790, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (89, N'Prism Reading. Intro. Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\699858.jpg', 2930, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (90, N'Professional English for PR Students: People and Society', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\716803.jpg', 780, NULL, NULL, NULL, NULL, N'1', 7, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (91, N'Ship or Sheep? An intermediate pronunciation course', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701112.jpg', 2210, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (92, N'Super Minds. Level 3. Workbook with Online Resources', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701130.jpg', 1200, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (93, N'Super Minds. Level 4. Workbook with Online Resources', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701132.jpg', 1210, NULL, NULL, NULL, NULL, N'0', 13, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (94, N'Super Minds. Workbook 1 with Online Resources', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701125.jpg', 1230, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 2, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (95, N'Super Minds. Workbook 2 with Online Resources', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701128.jpg', 1200, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (96, N'Think. Level 3. B1+. Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701135.jpg', 1640, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (97, N'Think. Level 3. B1+. Workbook with Online Practice', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701138.jpg', 1140, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 1, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (98, N'Tree or Three? An elementary pronunciation course', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701141.jpg', 1870, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (99, N'Your Space Level 2 Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701151.jpg', 1380, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 3, NULL)
INSERT [dbo].[Product] ([id_product], [name_product], [photo_product], [price_product], [weight_product], [width_product], [height_product], [length_product], [isActive], [DeveloperId], [CategoryId], [Season_id], [count_product], [id_sclad]) VALUES (100, N'Your Space. Level 1. Student''s Book', N'C:\Users\Radiance\source\repos\GrBritainRadel\resources\image\701149.jpg', 1370, NULL, NULL, NULL, NULL, N'1', 13, NULL, NULL, 2, NULL)
GO
INSERT [dbo].[Users] ([id_usr], [photo_usr], [firstname], [secondname], [patronymic], [date_birthday], [date_registr], [email], [numberphone], [login_usr], [password_usr], [roles]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'123', N'123', N'user')
INSERT [dbo].[Users] ([id_usr], [photo_usr], [firstname], [secondname], [patronymic], [date_birthday], [date_registr], [email], [numberphone], [login_usr], [password_usr], [roles]) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'adm', N'adm', N'adm')
GO
ALTER TABLE [dbo].[gate]  WITH CHECK ADD  CONSTRAINT [FK_gate_Sotrudniki] FOREIGN KEY([id_sotrudnika])
REFERENCES [dbo].[Sotrudniki] ([id_sotrudnika])
GO
ALTER TABLE [dbo].[gate] CHECK CONSTRAINT [FK_gate_Sotrudniki]
GO
ALTER TABLE [dbo].[gate]  WITH CHECK ADD  CONSTRAINT [FK_gate_Uslugi] FOREIGN KEY([id_uslugi])
REFERENCES [dbo].[Uslugi] ([id_uslugi])
GO
ALTER TABLE [dbo].[gate] CHECK CONSTRAINT [FK_gate_Uslugi]
GO
ALTER TABLE [dbo].[historyBuy]  WITH CHECK ADD  CONSTRAINT [FK_historyBuy_Product] FOREIGN KEY([id_product])
REFERENCES [dbo].[Product] ([id_product])
GO
ALTER TABLE [dbo].[historyBuy] CHECK CONSTRAINT [FK_historyBuy_Product]
GO
ALTER TABLE [dbo].[historyBuy]  WITH CHECK ADD  CONSTRAINT [FK_historyBuy_Users] FOREIGN KEY([id_usr])
REFERENCES [dbo].[Users] ([id_usr])
GO
ALTER TABLE [dbo].[historyBuy] CHECK CONSTRAINT [FK_historyBuy_Users]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_Product] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category_Product] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Developer] FOREIGN KEY([DeveloperId])
REFERENCES [dbo].[Developer] ([id_developer])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Developer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Sclad] FOREIGN KEY([id_sclad])
REFERENCES [dbo].[Sclad] ([id_sclad])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Sclad]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Seasons] FOREIGN KEY([Season_id])
REFERENCES [dbo].[Seasons] ([Season_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Seasons]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Category_Sotrudnika] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category_Sotrudnika] ([CategoryID])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Category_Sotrudnika]
GO
ALTER TABLE [dbo].[Uslugi]  WITH CHECK ADD  CONSTRAINT [FK_Uslugi_Seasons] FOREIGN KEY([Season_id])
REFERENCES [dbo].[Seasons] ([Season_id])
GO
ALTER TABLE [dbo].[Uslugi] CHECK CONSTRAINT [FK_Uslugi_Seasons]
GO
USE [master]
GO
ALTER DATABASE [GrBritainRadel] SET  READ_WRITE 
GO
