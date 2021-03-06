USE [master]
GO
/****** Object:  Database [database]    Script Date: 12/27/2014 13:59:34 ******/
CREATE DATABASE [database] ON  PRIMARY 
( NAME = N'database', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SOFTWARE\MSSQL\DATA\database.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'database_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SOFTWARE\MSSQL\DATA\database_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [database] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [database] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [database] SET ANSI_NULLS OFF
GO
ALTER DATABASE [database] SET ANSI_PADDING OFF
GO
ALTER DATABASE [database] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [database] SET ARITHABORT OFF
GO
ALTER DATABASE [database] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [database] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [database] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [database] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [database] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [database] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [database] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [database] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [database] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [database] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [database] SET  DISABLE_BROKER
GO
ALTER DATABASE [database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [database] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [database] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [database] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [database] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [database] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [database] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [database] SET  READ_WRITE
GO
ALTER DATABASE [database] SET RECOVERY SIMPLE
GO
ALTER DATABASE [database] SET  MULTI_USER
GO
ALTER DATABASE [database] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [database] SET DB_CHAINING OFF
GO
USE [database]
GO
/****** Object:  Table [dbo].[Sect]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sect](
	[SectID] [int] IDENTITY(1,1) NOT NULL,
	[SectName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sect] PRIMARY KEY CLUSTERED 
(
	[SectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Source]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Source](
	[SourceID] [int] IDENTITY(1,1) NOT NULL,
	[SourceName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Source] PRIMARY KEY CLUSTERED 
(
	[SourceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreachingType]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreachingType](
	[PreachingTypeID] [int] IDENTITY(1,1) NOT NULL,
	[PreachingType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PreachingType] PRIMARY KEY CLUSTERED 
(
	[PreachingTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province/State]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province/State](
	[Province/State_ID] [int] IDENTITY(1,1) NOT NULL,
	[Province/State_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Province/State] PRIMARY KEY CLUSTERED 
(
	[Province/State_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrayerType]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrayerType](
	[PrayerTypeID] [int] IDENTITY(1,1) NOT NULL,
	[PrayerType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NamazType] PRIMARY KEY CLUSTERED 
(
	[PrayerTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongregationCenterType]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongregationCenterType](
	[CongregationCenterTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CongregationCenterType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CongregationCenterType] PRIMARY KEY CLUSTERED 
(
	[CongregationCenterTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GPSLOC]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPSLOC](
	[GPSLOCID] [nchar](10) NOT NULL,
	[Latitude] [nchar](10) NOT NULL,
	[Longitude] [nchar](10) NOT NULL,
	[Name] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Type]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Type](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User_Type] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Village]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Village](
	[VillageID] [int] IDENTITY(1,1) NOT NULL,
	[VillageName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Village] PRIMARY KEY CLUSTERED 
(
	[VillageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Votes]    Script Date: 12/27/2014 13:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votes](
	[VotesID] [nchar](10) NOT NULL,
	[VotesTo] [nchar](10) NOT NULL,
	[VotseBy] [nchar](10) NOT NULL,
	[DateTime] [nchar](10) NOT NULL,
	[Comments] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Source_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Source_Add]
	@SourceName nvarchar(50)
AS
	INSERT INTO Source
                         (SourceName)
VALUES        (@SourceName)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[Village_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Village_Add]
	@VillageName nvarchar(50)
AS
	INSERT INTO Village
                         (VillageName)
VALUES        (@VillageName)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[User_Type_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Type_Add]
	@UserType nvarchar(50)
AS
	INSERT INTO User_Type
                         (UserType)
VALUES        (@UserType)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[city_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[city_Add]
	@CityName nvarchar(50)
AS
INSERT INTO City
                         (CityName)
VALUES        (@CityName)
	RETURN
GO
/****** Object:  Table [dbo].[Prayer]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prayer](
	[PrayerID] [int] IDENTITY(1,1) NOT NULL,
	[PrayerName] [nvarchar](50) NOT NULL,
	[PrayerTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Namaz] PRIMARY KEY CLUSTERED 
(
	[PrayerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](50) NOT NULL,
	[Address1] [nvarchar](100) NOT NULL,
	[Address2] [nvarchar](100) NULL,
	[City/VillageID] [int] NOT NULL,
	[Province/StateID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Longitutde] [int] NOT NULL,
	[Latitude] [int] NOT NULL,
	[Landmark] [nvarchar](50) NULL,
	[PostalCode] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedOn] [nvarchar](50) NOT NULL,
	[Voided] [nvarchar](50) NOT NULL,
	[ReasonVoided] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Country_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Country_Add]
	@CountryName nvarchar(50)
AS
	INSERT INTO Country
                         (CountryName)
VALUES        (@CountryName)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[CongregationCenterType_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CongregationCenterType_Add]
	@CongregationCenterType nvarchar(50)
AS
INSERT INTO CongregationCenterType
                         (CongregationCenterType)
VALUES        (@CongregationCenterType)
	RETURN
GO
/****** Object:  Table [dbo].[Preaching]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preaching](
	[PreachingID] [int] IDENTITY(1,1) NOT NULL,
	[PreachingName] [nvarchar](50) NOT NULL,
	[PreachingTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Preaching] PRIMARY KEY CLUSTERED 
(
	[PreachingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[PrayerType_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PrayerType_Add]
	@PrayerType nvarchar(50)
AS
	INSERT INTO PrayerType
                         (PrayerType)
VALUES        (@PrayerType)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[PreachingType_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PreachingType_Add]
	@PreachingType nvarchar(50)
AS
	INSERT INTO PreachingType
                         (PreachingType)
VALUES        (@PreachingType)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[Sect_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sect_Add]
	@SectName nvarchar(50)
AS
	INSERT INTO Sect
                         (SectName)
VALUES        (@SectName)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[ProvinceState_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProvinceState_Add]
	@Province_State_Name nvarchar(50)
AS
	INSERT INTO [Province/State]
                         ([Province/State_Name])
VALUES        (@Province_State_Name)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[Preaching_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Preaching_Add]
	@PreachingName nvarchar(50), @PreachingTypeID int
AS
	INSERT INTO Preaching
                         (PreachingName, PreachingTypeID)
VALUES        (@PreachingName, @PreachingTypeID)
	RETURN
GO
/****** Object:  Table [dbo].[CongregationCenter]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongregationCenter](
	[CongregationCenterID] [int] IDENTITY(1,1) NOT NULL,
	[CongregationCenterName] [nvarchar](50) NOT NULL,
	[CongregationCenterTypeID] [int] NOT NULL,
	[LocationID] [int] NOT NULL,
	[PrayerTimingID] [int] NULL,
	[SectID] [int] NOT NULL,
	[PreachingTimingID] [int] NULL,
	[GPSLOC] [nchar](10) NOT NULL,
 CONSTRAINT [PK_CongregationCenter] PRIMARY KEY CLUSTERED 
(
	[CongregationCenterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[LocationID] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Location_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Location_Add]
@LocationName nvarchar(50), @Address1 nvarchar(50), @Address2 nvarchar(50), @city int, @province int, @Longitutde int, @Latitude int, @Landmark nvarchar(50), @PostalCode int, @CountryID int, @CreatedBy nvarchar(50), @CreatedOn nvarchar(50), @Voided nvarchar(50), 
                         @ReasonVoided nvarchar(50)
	AS
	INSERT INTO Location
                         (LocationName, Address1, Address2, [City/VillageID], [Province/StateID], Longitutde, Latitude, Landmark, PostalCode, CountryID, CreatedBy, CreatedOn, Voided, 
                         ReasonVoided)
VALUES        (@LocationName, @Address1, @Address2, @city, @province, @Longitutde, @Latitude, @Landmark, @PostalCode, @CountryID, @CreatedBy, @CreatedOn, @Voided, 
                         @ReasonVoided)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[Prayer_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Prayer_Add]
	@PrayerName nvarchar(50), @PrayerTypeID int
AS
	INSERT INTO Prayer
                         (PrayerName, PrayerTypeID)
VALUES        (@PrayerName, @PrayerTypeID)
	RETURN
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[AddressID] [int] NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[SourceID] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Voided] [nvarchar](50) NOT NULL,
	[VoidedBy] [nvarchar](50) NOT NULL,
	[VoidedOn] [datetime] NOT NULL,
	[ReasonVoided] [nvarchar](100) NOT NULL,
	[Email] [nchar](25) NOT NULL,
	[Case] [nchar](25) NOT NULL,
	[Gender] [nchar](10) NOT NULL,
	[Sect] [nchar](10) NOT NULL,
	[GPSLOC] [nchar](10) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrayerTiming]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrayerTiming](
	[PrayerTimingID] [int] IDENTITY(1,1) NOT NULL,
	[PrayerTime] [time](7) NOT NULL,
	[PrayerID] [int] NOT NULL,
	[CongregationCenterID] [int] NOT NULL,
 CONSTRAINT [PK_NamazTiming] PRIMARY KEY CLUSTERED 
(
	[PrayerTimingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CongregationCenter_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CongregationCenter_Add]
	@CongregationCenterTypeID nvarchar(50), @LocationID int,@CongregationCenterName int, @PrayerTimingID int, @SectID int, @PreachingTimingID int
AS
	INSERT INTO CongregationCenter
                         (CongregationCenterTypeID, LocationID, CongregationCenterName, PrayerTimingID, SectID, PreachingTimingID)
VALUES        (@CongregationCenterTypeID, @LocationID,@CongregationCenterName, @PrayerTimingID, @SectID, @PreachingTimingID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[Address_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Address_Add]
	@Address nvarchar(150), @LocationID int
AS
	INSERT INTO Address
                         (Address, LocationID)
VALUES        (@Address, @LocationID)
	RETURN
GO
/****** Object:  Table [dbo].[PreachingTiming]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreachingTiming](
	[PreachingTimingID] [int] IDENTITY(1,1) NOT NULL,
	[PreachingTime] [time](7) NOT NULL,
	[PreachingID] [int] NOT NULL,
	[CongregationCenterID] [int] NOT NULL,
 CONSTRAINT [PK_PreachingTiming] PRIMARY KEY CLUSTERED 
(
	[PreachingTimingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[PreachingTiming_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PreachingTiming_Add]
	@PreachingTime time(7), @PreachingID int, @CongregationCenterID int
AS
	INSERT INTO PreachingTiming
                         (PreachingTime, PreachingID, CongregationCenterID)
VALUES        (@PreachingTime, @PreachingID, @CongregationCenterID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[PrayerTiming_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PrayerTiming_Add]
	@PrayerTime time(7), @PrayerID int, @CongregationCenterID int
AS
	INSERT INTO PrayerTiming
                         (PrayerTime, PrayerID, CongregationCenterID)
VALUES        (@PrayerTime, @PrayerID, @CongregationCenterID)
	RETURN
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[User_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Add]
	@FirstName nvarchar(50), @LastName nvarchar(50), @Password nvarchar(50), @AddressID int, @UserTypeID int, @SourceID int, @CreatedBy nvarchar(50), @CreatedOn datetime, @Voided nvarchar(50), @VoidedBy nvarchar(50), @VoidedOn datetime, @ReasonVoided nvarchar(100)
AS
	INSERT INTO [User]
                         (FirstName, LastName, Password, AddressID, UserTypeID, SourceID, CreatedBy, CreatedOn, Voided, VoidedBy, VoidedOn, ReasonVoided)
VALUES        (@FirstName, @LastName, @Password, @AddressID, @UserTypeID, @SourceID, @CreatedBy, @CreatedOn, @Voided, @VoidedBy, @VoidedOn, @ReasonVoided)

	RETURN
GO
/****** Object:  Table [dbo].[Rights]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rights](
	[RightsID] [int] IDENTITY(1,1) NOT NULL,
	[Rights] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Rights] PRIMARY KEY CLUSTERED 
(
	[RightsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Role_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Role_Add]
	@Role nvarchar(50), @UserID int
AS
	INSERT INTO Role
                         (Role, UserID)
VALUES        (@Role, @UserID)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[Rights_Add]    Script Date: 12/27/2014 13:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rights_Add]
	@RoleID nvarchar(50), @Rights int
AS
	INSERT INTO Rights
                         (RoleID, Rights)
VALUES        (@RoleID, @Rights)
	RETURN
GO
/****** Object:  ForeignKey [FK_Prayer_PrayerType]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[Prayer]  WITH CHECK ADD  CONSTRAINT [FK_Prayer_PrayerType] FOREIGN KEY([PrayerTypeID])
REFERENCES [dbo].[PrayerType] ([PrayerTypeID])
GO
ALTER TABLE [dbo].[Prayer] CHECK CONSTRAINT [FK_Prayer_PrayerType]
GO
/****** Object:  ForeignKey [FK_Location_City]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_City] FOREIGN KEY([City/VillageID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_City]
GO
/****** Object:  ForeignKey [FK_Location_Country]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Country]
GO
/****** Object:  ForeignKey [FK_Location_Province/State]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Province/State] FOREIGN KEY([Province/StateID])
REFERENCES [dbo].[Province/State] ([Province/State_ID])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Province/State]
GO
/****** Object:  ForeignKey [FK_Location_Village]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Village] FOREIGN KEY([City/VillageID])
REFERENCES [dbo].[Village] ([VillageID])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Village]
GO
/****** Object:  ForeignKey [FK_Preaching_PreachingType]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[Preaching]  WITH CHECK ADD  CONSTRAINT [FK_Preaching_PreachingType] FOREIGN KEY([PreachingTypeID])
REFERENCES [dbo].[PreachingType] ([PreachingTypeID])
GO
ALTER TABLE [dbo].[Preaching] CHECK CONSTRAINT [FK_Preaching_PreachingType]
GO
/****** Object:  ForeignKey [FK_CongregationCenter_CongregationCenterType]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[CongregationCenter]  WITH CHECK ADD  CONSTRAINT [FK_CongregationCenter_CongregationCenterType] FOREIGN KEY([CongregationCenterTypeID])
REFERENCES [dbo].[CongregationCenterType] ([CongregationCenterTypeID])
GO
ALTER TABLE [dbo].[CongregationCenter] CHECK CONSTRAINT [FK_CongregationCenter_CongregationCenterType]
GO
/****** Object:  ForeignKey [FK_CongregationCenter_Location]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[CongregationCenter]  WITH CHECK ADD  CONSTRAINT [FK_CongregationCenter_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[CongregationCenter] CHECK CONSTRAINT [FK_CongregationCenter_Location]
GO
/****** Object:  ForeignKey [FK_CongregationCenter_Sect]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[CongregationCenter]  WITH CHECK ADD  CONSTRAINT [FK_CongregationCenter_Sect] FOREIGN KEY([SectID])
REFERENCES [dbo].[Sect] ([SectID])
GO
ALTER TABLE [dbo].[CongregationCenter] CHECK CONSTRAINT [FK_CongregationCenter_Sect]
GO
/****** Object:  ForeignKey [FK_Address_Location]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Location]
GO
/****** Object:  ForeignKey [FK_User_Address]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Address]
GO
/****** Object:  ForeignKey [FK_User_Source]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Source] FOREIGN KEY([SourceID])
REFERENCES [dbo].[Source] ([SourceID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Source]
GO
/****** Object:  ForeignKey [FK_User_User_Type]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User_Type] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[User_Type] ([UserTypeID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User_Type]
GO
/****** Object:  ForeignKey [FK_PrayerTiming_CongregationCenter]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[PrayerTiming]  WITH CHECK ADD  CONSTRAINT [FK_PrayerTiming_CongregationCenter] FOREIGN KEY([CongregationCenterID])
REFERENCES [dbo].[CongregationCenter] ([CongregationCenterID])
GO
ALTER TABLE [dbo].[PrayerTiming] CHECK CONSTRAINT [FK_PrayerTiming_CongregationCenter]
GO
/****** Object:  ForeignKey [FK_PrayerTiming_Prayer1]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[PrayerTiming]  WITH CHECK ADD  CONSTRAINT [FK_PrayerTiming_Prayer1] FOREIGN KEY([PrayerID])
REFERENCES [dbo].[Prayer] ([PrayerID])
GO
ALTER TABLE [dbo].[PrayerTiming] CHECK CONSTRAINT [FK_PrayerTiming_Prayer1]
GO
/****** Object:  ForeignKey [FK_PreachingTiming_CongregationCenter]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[PreachingTiming]  WITH CHECK ADD  CONSTRAINT [FK_PreachingTiming_CongregationCenter] FOREIGN KEY([CongregationCenterID])
REFERENCES [dbo].[CongregationCenter] ([CongregationCenterID])
GO
ALTER TABLE [dbo].[PreachingTiming] CHECK CONSTRAINT [FK_PreachingTiming_CongregationCenter]
GO
/****** Object:  ForeignKey [FK_PreachingTiming_Preaching]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[PreachingTiming]  WITH CHECK ADD  CONSTRAINT [FK_PreachingTiming_Preaching] FOREIGN KEY([PreachingID])
REFERENCES [dbo].[Preaching] ([PreachingID])
GO
ALTER TABLE [dbo].[PreachingTiming] CHECK CONSTRAINT [FK_PreachingTiming_Preaching]
GO
/****** Object:  ForeignKey [FK_Role_User]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_User]
GO
/****** Object:  ForeignKey [FK_Rights_Role1]    Script Date: 12/27/2014 13:59:39 ******/
ALTER TABLE [dbo].[Rights]  WITH CHECK ADD  CONSTRAINT [FK_Rights_Role1] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Rights] CHECK CONSTRAINT [FK_Rights_Role1]
GO
