USE [master]
GO
/****** Object:  Database [project_prj301]    Script Date: 6/22/2022 6:28:51 AM ******/
CREATE DATABASE [project_prj301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project_prj301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\project_prj301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'project_prj301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\project_prj301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [project_prj301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project_prj301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project_prj301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project_prj301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project_prj301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project_prj301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project_prj301] SET ARITHABORT OFF 
GO
ALTER DATABASE [project_prj301] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [project_prj301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project_prj301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project_prj301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project_prj301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project_prj301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project_prj301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project_prj301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project_prj301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project_prj301] SET  DISABLE_BROKER 
GO
ALTER DATABASE [project_prj301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project_prj301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project_prj301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project_prj301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project_prj301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project_prj301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project_prj301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project_prj301] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [project_prj301] SET  MULTI_USER 
GO
ALTER DATABASE [project_prj301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project_prj301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project_prj301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project_prj301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [project_prj301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [project_prj301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [project_prj301] SET QUERY_STORE = OFF
GO
USE [project_prj301]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 6/22/2022 6:28:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[CourseID] [int] NOT NULL,
	[StudentID] [varchar](20) NOT NULL,
	[Time] [time](7) NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Note] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 6/22/2022 6:28:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/22/2022 6:28:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [varchar](20) NOT NULL,
	[StudentName] [varchar](50) NOT NULL,
	[Class] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timetable]    Script Date: 6/22/2022 6:28:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timetable](
	[Date] [date] NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[Slot] [int] NOT NULL,
	[Class] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Timetable] PRIMARY KEY CLUSTERED 
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Attendance] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Attendance] ([CourseID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Attendance]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_Timetable] FOREIGN KEY([Date])
REFERENCES [dbo].[Timetable] ([Date])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_Timetable]
GO
USE [master]
GO
ALTER DATABASE [project_prj301] SET  READ_WRITE 
GO
