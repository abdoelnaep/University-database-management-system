USE [master]
GO
/****** Object:  Database [south_vally_univ]    Script Date: 10/25/2021 11:31:18 PM ******/
CREATE DATABASE [south_vally_univ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'south_vally_univ', FILENAME = N'E:\sql server\MSSQL15.SQLEXPRESS\MSSQL\DATA\south_vally_univ.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'south_vally_univ_log', FILENAME = N'E:\sql server\MSSQL15.SQLEXPRESS\MSSQL\DATA\south_vally_univ_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [south_vally_univ] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [south_vally_univ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [south_vally_univ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [south_vally_univ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [south_vally_univ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [south_vally_univ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [south_vally_univ] SET ARITHABORT OFF 
GO
ALTER DATABASE [south_vally_univ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [south_vally_univ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [south_vally_univ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [south_vally_univ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [south_vally_univ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [south_vally_univ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [south_vally_univ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [south_vally_univ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [south_vally_univ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [south_vally_univ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [south_vally_univ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [south_vally_univ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [south_vally_univ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [south_vally_univ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [south_vally_univ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [south_vally_univ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [south_vally_univ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [south_vally_univ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [south_vally_univ] SET  MULTI_USER 
GO
ALTER DATABASE [south_vally_univ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [south_vally_univ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [south_vally_univ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [south_vally_univ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [south_vally_univ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [south_vally_univ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [south_vally_univ] SET QUERY_STORE = OFF
GO
USE [south_vally_univ]
GO
/****** Object:  Table [dbo].[answers]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answers](
	[ans_id] [int] NOT NULL,
	[ans_body] [varchar](50) NULL,
	[quest_id] [int] NULL,
 CONSTRAINT [PK_answers] PRIMARY KEY CLUSTERED 
(
	[ans_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course_evaluation]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_evaluation](
	[id] [int] NOT NULL,
	[stud_id] [int] NULL,
	[course_id] [int] NULL,
	[stars] [int] NULL,
	[comments] [varchar](50) NULL,
	[prof_id] [int] NULL,
 CONSTRAINT [PK_course_evaluation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[fac_id] [int] NULL,
	[dep_id] [int] NULL,
	[sci_level_id] [int] NULL,
	[min_degree] [int] NULL,
	[max_deg] [int] NULL,
	[year] [date] NULL,
	[contents] [varchar](50) NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_courses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department_exam]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department_exam](
	[id] [int] NOT NULL,
	[department_id] [int] NULL,
	[exam_id] [int] NULL,
 CONSTRAINT [PK_Department_exam] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[dep_id] [int] NOT NULL,
	[dep_name] [varchar](50) NULL,
	[fac_id] [int] NULL,
	[dep_manager_id] [int] NULL,
 CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED 
(
	[dep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exam]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exam](
	[ex_id] [int] NOT NULL,
	[ex_type] [varchar](50) NULL,
	[ex_profid_creator] [int] NULL,
	[course_id] [int] NULL,
	[dep_id] [int] NULL,
	[fac_id] [int] NULL,
	[ex_date] [date] NULL,
	[ex_sttime] [time](7) NULL,
	[ex_endtime] [time](7) NULL,
	[sci_lev_id] [int] NULL,
 CONSTRAINT [PK_exam] PRIMARY KEY CLUSTERED 
(
	[ex_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exam_questions]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exam_questions](
	[id] [int] NOT NULL,
	[ex_id] [int] NULL,
	[quest_id] [int] NULL,
	[points] [int] NULL,
 CONSTRAINT [PK_exam_questions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faculty]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty](
	[fac_id] [int] NOT NULL,
	[fac_name] [varchar](50) NULL,
	[fac_mang_id] [int] NULL,
 CONSTRAINT [PK_faculty] PRIMARY KEY CLUSTERED 
(
	[fac_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grades]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grades](
	[id] [int] NOT NULL,
	[stud_id] [int] NULL,
	[ex_id] [int] NULL,
	[ex_grad] [int] NULL,
 CONSTRAINT [PK_grades] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prof_evaluatuion]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prof_evaluatuion](
	[id] [int] NOT NULL,
	[stud_id] [int] NULL,
	[prof_id] [int] NULL,
	[course_id] [int] NULL,
	[stars] [int] NULL,
	[comments] [varchar](50) NULL,
 CONSTRAINT [PK_prof_evaluatuion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[professor_course]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[professor_course](
	[id] [int] NOT NULL,
	[prof_id] [int] NULL,
	[course_id] [int] NULL,
 CONSTRAINT [PK_professor_course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[professor_department]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[professor_department](
	[id] [int] NOT NULL,
	[prof_id] [int] NULL,
	[dep_id] [int] NULL,
 CONSTRAINT [PK_professor_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[professors]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[professors](
	[id] [int] NOT NULL,
	[personal_id] [int] NULL,
	[name] [varchar](50) NULL,
	[age] [date] NULL,
	[username] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[phone] [int] NULL,
	[faculty_id] [int] NULL,
 CONSTRAINT [PK_professors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questions_bank]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questions_bank](
	[quest_id] [int] NOT NULL,
	[body] [varchar](50) NULL,
	[correct_ans_id] [int] NULL,
	[course_id] [int] NULL,
 CONSTRAINT [PK_questions_bank] PRIMARY KEY CLUSTERED 
(
	[quest_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scintific_level]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scintific_level](
	[sci_id] [int] NOT NULL,
	[sci_name] [varchar](50) NULL,
 CONSTRAINT [PK_scintific_level] PRIMARY KEY CLUSTERED 
(
	[sci_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_answers]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_answers](
	[id] [int] NOT NULL,
	[ans_id] [int] NOT NULL,
	[stud_id] [int] NOT NULL,
	[ex_id] [int] NOT NULL,
	[quest_id] [int] NOT NULL,
 CONSTRAINT [PK_student_answers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_course]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_course](
	[id] [int] NOT NULL,
	[stud_id] [int] NULL,
	[course_id] [int] NULL,
 CONSTRAINT [PK_student_course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_professor]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_professor](
	[id] [int] NOT NULL,
	[student_id] [int] NULL,
	[professor_id] [int] NULL,
 CONSTRAINT [PK_student_professor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 10/25/2021 11:31:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[id] [int] NOT NULL,
	[personal_id] [int] NULL,
	[name] [varchar](50) NULL,
	[age] [date] NULL,
	[user] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[phone] [int] NULL,
	[addr] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[dep_id] [int] NULL,
	[post_graduate] [bit] NULL,
	[fac_id] [int] NULL,
	[sci_level_id] [int] NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (1, N'a.c++', 1)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (2, N'b.123', 1)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (3, N'c.4546', 1)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (4, N'd.9789', 1)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (5, N'a.qwe', 2)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (6, N'b.tyu', 2)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (7, N'c.kj,j', 2)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (8, N'd.pioi', 2)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (9, N'a.1', 3)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (10, N'b.12', 3)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (11, N'c.23123', 3)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (12, N'd.rewrw', 3)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (13, N'a.4234', 4)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (14, N'b.wfs', 4)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (15, N'c.tyjt', 4)
INSERT [dbo].[answers] ([ans_id], [ans_body], [quest_id]) VALUES (16, N'd.hfgh', 4)
GO
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (1, 1, 1, 3, NULL, 1)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (2, 2, 1, 3, NULL, 1)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (3, 3, 1, 3, NULL, 1)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (4, 4, 1, 5, NULL, 1)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (5, 1, 2, 2, NULL, 2)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (6, 2, 2, 5, NULL, 2)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (7, 3, 2, 5, NULL, 2)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (8, 4, 2, 5, NULL, 2)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (9, 1, 3, 5, NULL, 3)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (10, 2, 3, 5, NULL, 3)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (11, 3, 3, 5, NULL, 3)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (12, 4, 3, 5, NULL, 3)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (13, 1, 1, 4, NULL, 2)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (14, 2, 1, 4, NULL, 2)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (15, 3, 1, 4, NULL, 2)
INSERT [dbo].[course_evaluation] ([id], [stud_id], [course_id], [stars], [comments], [prof_id]) VALUES (16, 4, 1, 4, NULL, 2)
GO
INSERT [dbo].[courses] ([id], [name], [fac_id], [dep_id], [sci_level_id], [min_degree], [max_deg], [year], [contents], [description]) VALUES (1, N'c++', 2, 1, 1, 20, 50, CAST(N'2020-01-01' AS Date), NULL, NULL)
INSERT [dbo].[courses] ([id], [name], [fac_id], [dep_id], [sci_level_id], [min_degree], [max_deg], [year], [contents], [description]) VALUES (2, N'c', 2, 1, 1, 30, 60, CAST(N'2020-01-01' AS Date), NULL, NULL)
INSERT [dbo].[courses] ([id], [name], [fac_id], [dep_id], [sci_level_id], [min_degree], [max_deg], [year], [contents], [description]) VALUES (3, N'php', 2, 1, 1, 20, 50, CAST(N'2020-01-01' AS Date), NULL, NULL)
GO
INSERT [dbo].[departments] ([dep_id], [dep_name], [fac_id], [dep_manager_id]) VALUES (1, N'cs', 2, 2)
INSERT [dbo].[departments] ([dep_id], [dep_name], [fac_id], [dep_manager_id]) VALUES (2, N'mechanical', 2, 2)
INSERT [dbo].[departments] ([dep_id], [dep_name], [fac_id], [dep_manager_id]) VALUES (3, N'petroleum', 2, 2)
GO
INSERT [dbo].[exam] ([ex_id], [ex_type], [ex_profid_creator], [course_id], [dep_id], [fac_id], [ex_date], [ex_sttime], [ex_endtime], [sci_lev_id]) VALUES (1, N'final', 1, 1, 1, 2, NULL, NULL, NULL, 1)
INSERT [dbo].[exam] ([ex_id], [ex_type], [ex_profid_creator], [course_id], [dep_id], [fac_id], [ex_date], [ex_sttime], [ex_endtime], [sci_lev_id]) VALUES (2, N'final', 1, 2, 1, 2, NULL, NULL, NULL, 1)
INSERT [dbo].[exam] ([ex_id], [ex_type], [ex_profid_creator], [course_id], [dep_id], [fac_id], [ex_date], [ex_sttime], [ex_endtime], [sci_lev_id]) VALUES (3, N'final', 1, 3, 1, 2, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[exam_questions] ([id], [ex_id], [quest_id], [points]) VALUES (1, 1, 1, 5)
INSERT [dbo].[exam_questions] ([id], [ex_id], [quest_id], [points]) VALUES (2, 1, 2, 5)
INSERT [dbo].[exam_questions] ([id], [ex_id], [quest_id], [points]) VALUES (3, 1, 3, 5)
INSERT [dbo].[exam_questions] ([id], [ex_id], [quest_id], [points]) VALUES (4, 1, 4, 5)
INSERT [dbo].[exam_questions] ([id], [ex_id], [quest_id], [points]) VALUES (5, 2, 1, 5)
GO
INSERT [dbo].[faculty] ([fac_id], [fac_name], [fac_mang_id]) VALUES (1, N'science', 1)
INSERT [dbo].[faculty] ([fac_id], [fac_name], [fac_mang_id]) VALUES (2, N'engineering', 1)
INSERT [dbo].[faculty] ([fac_id], [fac_name], [fac_mang_id]) VALUES (3, N'law', 1)
GO
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (1, 1, 1, 15)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (2, 1, 2, 33)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (3, 1, 3, 33)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (4, 2, 1, 55)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (5, 2, 2, 25)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (6, 2, 3, 35)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (7, 3, 1, 45)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (8, 3, 2, 55)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (9, 3, 3, 27)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (10, 4, 1, 28)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (11, 4, 2, 39)
INSERT [dbo].[grades] ([id], [stud_id], [ex_id], [ex_grad]) VALUES (12, 4, 3, 44)
GO
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (1, 1, 1, 1, 4, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (2, 2, 1, 1, 4, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (3, 3, 1, 1, 4, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (4, 4, 1, 1, 4, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (5, 1, 2, 2, 5, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (6, 2, 2, 2, 5, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (7, 3, 2, 2, 5, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (8, 4, 2, 2, 5, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (9, 1, 1, 2, 4, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (10, 2, 1, 2, 4, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (11, 3, 1, 2, 4, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (12, 4, 1, 2, 4, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (13, 1, 2, 1, 1, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (14, 2, 2, 1, 1, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (15, 3, 2, 1, 1, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (16, 4, 2, 1, 1, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (17, 1, 3, 3, 5, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (18, 2, 3, 3, 4, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (19, 3, 3, 3, 3, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (20, 4, 3, 3, 3, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (21, 1, 3, 1, 3, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (22, 2, 3, 1, 3, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (23, 3, 3, 1, 5, NULL)
INSERT [dbo].[prof_evaluatuion] ([id], [stud_id], [prof_id], [course_id], [stars], [comments]) VALUES (24, 4, 3, 1, 5, NULL)
GO
INSERT [dbo].[professor_course] ([id], [prof_id], [course_id]) VALUES (1, 1, 1)
INSERT [dbo].[professor_course] ([id], [prof_id], [course_id]) VALUES (2, 2, 1)
INSERT [dbo].[professor_course] ([id], [prof_id], [course_id]) VALUES (3, 3, 1)
INSERT [dbo].[professor_course] ([id], [prof_id], [course_id]) VALUES (4, 1, 2)
INSERT [dbo].[professor_course] ([id], [prof_id], [course_id]) VALUES (5, 2, 2)
INSERT [dbo].[professor_course] ([id], [prof_id], [course_id]) VALUES (6, 3, 2)
INSERT [dbo].[professor_course] ([id], [prof_id], [course_id]) VALUES (7, 1, 3)
INSERT [dbo].[professor_course] ([id], [prof_id], [course_id]) VALUES (8, 2, 3)
INSERT [dbo].[professor_course] ([id], [prof_id], [course_id]) VALUES (9, 3, 3)
GO
INSERT [dbo].[professors] ([id], [personal_id], [name], [age], [username], [email], [pass], [phone], [faculty_id]) VALUES (1, 26500000, N'mohamed hassan', CAST(N'1965-01-05' AS Date), N'mohamed', N'moh@gmail', N'moh123', NULL, NULL)
INSERT [dbo].[professors] ([id], [personal_id], [name], [age], [username], [email], [pass], [phone], [faculty_id]) VALUES (2, 26700000, N'ahmed ali', CAST(N'1967-01-05' AS Date), N'ahmed', N'ahmed@gmail', N'ahm123', NULL, NULL)
INSERT [dbo].[professors] ([id], [personal_id], [name], [age], [username], [email], [pass], [phone], [faculty_id]) VALUES (3, 2660000, N'eman', CAST(N'1966-01-05' AS Date), N'eman', N'eman@gmail', N'eman123', NULL, NULL)
GO
INSERT [dbo].[questions_bank] ([quest_id], [body], [correct_ans_id], [course_id]) VALUES (1, N'quest1', 1, 1)
INSERT [dbo].[questions_bank] ([quest_id], [body], [correct_ans_id], [course_id]) VALUES (2, N'quest2', 6, 1)
INSERT [dbo].[questions_bank] ([quest_id], [body], [correct_ans_id], [course_id]) VALUES (3, N'quest3', 12, 1)
INSERT [dbo].[questions_bank] ([quest_id], [body], [correct_ans_id], [course_id]) VALUES (4, N'quest4', 15, 1)
GO
INSERT [dbo].[scintific_level] ([sci_id], [sci_name]) VALUES (1, N'first')
INSERT [dbo].[scintific_level] ([sci_id], [sci_name]) VALUES (2, N'second')
INSERT [dbo].[scintific_level] ([sci_id], [sci_name]) VALUES (3, N'third')
INSERT [dbo].[scintific_level] ([sci_id], [sci_name]) VALUES (4, N'fourth')
GO
INSERT [dbo].[student_answers] ([id], [ans_id], [stud_id], [ex_id], [quest_id]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[student_answers] ([id], [ans_id], [stud_id], [ex_id], [quest_id]) VALUES (2, 6, 1, 1, 2)
INSERT [dbo].[student_answers] ([id], [ans_id], [stud_id], [ex_id], [quest_id]) VALUES (3, 12, 1, 1, 3)
INSERT [dbo].[student_answers] ([id], [ans_id], [stud_id], [ex_id], [quest_id]) VALUES (4, 16, 1, 1, 4)
INSERT [dbo].[student_answers] ([id], [ans_id], [stud_id], [ex_id], [quest_id]) VALUES (5, 1, 1, 2, 1)
GO
INSERT [dbo].[students] ([id], [personal_id], [name], [age], [user], [email], [pass], [phone], [addr], [gender], [dep_id], [post_graduate], [fac_id], [sci_level_id]) VALUES (1, 123, N'amr', NULL, N'amr', N'amr@gmail', N'amr123', NULL, NULL, N'm', 1, 0, 2, 1)
INSERT [dbo].[students] ([id], [personal_id], [name], [age], [user], [email], [pass], [phone], [addr], [gender], [dep_id], [post_graduate], [fac_id], [sci_level_id]) VALUES (2, 223, N'omar', NULL, N'omar', N'omar@mail', N'omar123', NULL, NULL, N'm', 1, 0, 2, 1)
INSERT [dbo].[students] ([id], [personal_id], [name], [age], [user], [email], [pass], [phone], [addr], [gender], [dep_id], [post_graduate], [fac_id], [sci_level_id]) VALUES (3, 323, N'asmaa', NULL, N'asmaa', N'asmaa@gmail', N'asmaa123', NULL, NULL, N'f', 1, 0, 2, 1)
INSERT [dbo].[students] ([id], [personal_id], [name], [age], [user], [email], [pass], [phone], [addr], [gender], [dep_id], [post_graduate], [fac_id], [sci_level_id]) VALUES (4, 423, N'hnaa', NULL, N'hnaa', N'hnaa@gmail', N'hnaa123', NULL, NULL, N'f', 1, 0, 2, 1)
GO
ALTER TABLE [dbo].[answers]  WITH CHECK ADD  CONSTRAINT [FK_answers_questions_bank] FOREIGN KEY([quest_id])
REFERENCES [dbo].[questions_bank] ([quest_id])
GO
ALTER TABLE [dbo].[answers] CHECK CONSTRAINT [FK_answers_questions_bank]
GO
ALTER TABLE [dbo].[course_evaluation]  WITH CHECK ADD  CONSTRAINT [FK_course_evaluation_courses] FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([id])
GO
ALTER TABLE [dbo].[course_evaluation] CHECK CONSTRAINT [FK_course_evaluation_courses]
GO
ALTER TABLE [dbo].[course_evaluation]  WITH CHECK ADD  CONSTRAINT [FK_course_evaluation_professors] FOREIGN KEY([prof_id])
REFERENCES [dbo].[professors] ([id])
GO
ALTER TABLE [dbo].[course_evaluation] CHECK CONSTRAINT [FK_course_evaluation_professors]
GO
ALTER TABLE [dbo].[course_evaluation]  WITH CHECK ADD  CONSTRAINT [FK_course_evaluation_student] FOREIGN KEY([stud_id])
REFERENCES [dbo].[students] ([id])
GO
ALTER TABLE [dbo].[course_evaluation] CHECK CONSTRAINT [FK_course_evaluation_student]
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD  CONSTRAINT [FK_courses_departments] FOREIGN KEY([dep_id])
REFERENCES [dbo].[departments] ([dep_id])
GO
ALTER TABLE [dbo].[courses] CHECK CONSTRAINT [FK_courses_departments]
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD  CONSTRAINT [FK_courses_faculty] FOREIGN KEY([fac_id])
REFERENCES [dbo].[faculty] ([fac_id])
GO
ALTER TABLE [dbo].[courses] CHECK CONSTRAINT [FK_courses_faculty]
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD  CONSTRAINT [FK_courses_scintific_level] FOREIGN KEY([sci_level_id])
REFERENCES [dbo].[scintific_level] ([sci_id])
GO
ALTER TABLE [dbo].[courses] CHECK CONSTRAINT [FK_courses_scintific_level]
GO
ALTER TABLE [dbo].[Department_exam]  WITH CHECK ADD  CONSTRAINT [FK_Department_exam_departments] FOREIGN KEY([department_id])
REFERENCES [dbo].[departments] ([dep_id])
GO
ALTER TABLE [dbo].[Department_exam] CHECK CONSTRAINT [FK_Department_exam_departments]
GO
ALTER TABLE [dbo].[Department_exam]  WITH CHECK ADD  CONSTRAINT [FK_Department_exam_exam] FOREIGN KEY([exam_id])
REFERENCES [dbo].[exam] ([ex_id])
GO
ALTER TABLE [dbo].[Department_exam] CHECK CONSTRAINT [FK_Department_exam_exam]
GO
ALTER TABLE [dbo].[departments]  WITH CHECK ADD  CONSTRAINT [FK_departments_faculty] FOREIGN KEY([fac_id])
REFERENCES [dbo].[faculty] ([fac_id])
GO
ALTER TABLE [dbo].[departments] CHECK CONSTRAINT [FK_departments_faculty]
GO
ALTER TABLE [dbo].[departments]  WITH CHECK ADD  CONSTRAINT [FK_departments_professors] FOREIGN KEY([dep_manager_id])
REFERENCES [dbo].[professors] ([id])
GO
ALTER TABLE [dbo].[departments] CHECK CONSTRAINT [FK_departments_professors]
GO
ALTER TABLE [dbo].[exam]  WITH CHECK ADD  CONSTRAINT [FK_exam_courses] FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([id])
GO
ALTER TABLE [dbo].[exam] CHECK CONSTRAINT [FK_exam_courses]
GO
ALTER TABLE [dbo].[exam]  WITH CHECK ADD  CONSTRAINT [FK_exam_departments] FOREIGN KEY([dep_id])
REFERENCES [dbo].[departments] ([dep_id])
GO
ALTER TABLE [dbo].[exam] CHECK CONSTRAINT [FK_exam_departments]
GO
ALTER TABLE [dbo].[exam]  WITH CHECK ADD  CONSTRAINT [FK_exam_faculty] FOREIGN KEY([fac_id])
REFERENCES [dbo].[faculty] ([fac_id])
GO
ALTER TABLE [dbo].[exam] CHECK CONSTRAINT [FK_exam_faculty]
GO
ALTER TABLE [dbo].[exam]  WITH CHECK ADD  CONSTRAINT [FK_exam_professors] FOREIGN KEY([ex_profid_creator])
REFERENCES [dbo].[professors] ([id])
GO
ALTER TABLE [dbo].[exam] CHECK CONSTRAINT [FK_exam_professors]
GO
ALTER TABLE [dbo].[exam]  WITH CHECK ADD  CONSTRAINT [FK_exam_scintific_level] FOREIGN KEY([sci_lev_id])
REFERENCES [dbo].[scintific_level] ([sci_id])
GO
ALTER TABLE [dbo].[exam] CHECK CONSTRAINT [FK_exam_scintific_level]
GO
ALTER TABLE [dbo].[exam_questions]  WITH CHECK ADD  CONSTRAINT [FK_exam_questions_exam] FOREIGN KEY([ex_id])
REFERENCES [dbo].[exam] ([ex_id])
GO
ALTER TABLE [dbo].[exam_questions] CHECK CONSTRAINT [FK_exam_questions_exam]
GO
ALTER TABLE [dbo].[exam_questions]  WITH CHECK ADD  CONSTRAINT [FK_exam_questions_questions_bank] FOREIGN KEY([quest_id])
REFERENCES [dbo].[questions_bank] ([quest_id])
GO
ALTER TABLE [dbo].[exam_questions] CHECK CONSTRAINT [FK_exam_questions_questions_bank]
GO
ALTER TABLE [dbo].[grades]  WITH CHECK ADD  CONSTRAINT [FK_grades_exam] FOREIGN KEY([ex_id])
REFERENCES [dbo].[exam] ([ex_id])
GO
ALTER TABLE [dbo].[grades] CHECK CONSTRAINT [FK_grades_exam]
GO
ALTER TABLE [dbo].[grades]  WITH CHECK ADD  CONSTRAINT [FK_grades_student] FOREIGN KEY([stud_id])
REFERENCES [dbo].[students] ([id])
GO
ALTER TABLE [dbo].[grades] CHECK CONSTRAINT [FK_grades_student]
GO
ALTER TABLE [dbo].[prof_evaluatuion]  WITH CHECK ADD  CONSTRAINT [FK_prof_evaluatuion_courses] FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([id])
GO
ALTER TABLE [dbo].[prof_evaluatuion] CHECK CONSTRAINT [FK_prof_evaluatuion_courses]
GO
ALTER TABLE [dbo].[prof_evaluatuion]  WITH CHECK ADD  CONSTRAINT [FK_prof_evaluatuion_professors] FOREIGN KEY([prof_id])
REFERENCES [dbo].[professors] ([id])
GO
ALTER TABLE [dbo].[prof_evaluatuion] CHECK CONSTRAINT [FK_prof_evaluatuion_professors]
GO
ALTER TABLE [dbo].[prof_evaluatuion]  WITH CHECK ADD  CONSTRAINT [FK_prof_evaluatuion_student] FOREIGN KEY([stud_id])
REFERENCES [dbo].[students] ([id])
GO
ALTER TABLE [dbo].[prof_evaluatuion] CHECK CONSTRAINT [FK_prof_evaluatuion_student]
GO
ALTER TABLE [dbo].[professor_course]  WITH CHECK ADD  CONSTRAINT [FK_professor_course_courses] FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([id])
GO
ALTER TABLE [dbo].[professor_course] CHECK CONSTRAINT [FK_professor_course_courses]
GO
ALTER TABLE [dbo].[professor_course]  WITH CHECK ADD  CONSTRAINT [FK_professor_course_professors] FOREIGN KEY([prof_id])
REFERENCES [dbo].[professors] ([id])
GO
ALTER TABLE [dbo].[professor_course] CHECK CONSTRAINT [FK_professor_course_professors]
GO
ALTER TABLE [dbo].[professor_department]  WITH CHECK ADD  CONSTRAINT [FK_professor_department_departments] FOREIGN KEY([dep_id])
REFERENCES [dbo].[departments] ([dep_id])
GO
ALTER TABLE [dbo].[professor_department] CHECK CONSTRAINT [FK_professor_department_departments]
GO
ALTER TABLE [dbo].[professor_department]  WITH CHECK ADD  CONSTRAINT [FK_professor_department_professors] FOREIGN KEY([prof_id])
REFERENCES [dbo].[professors] ([id])
GO
ALTER TABLE [dbo].[professor_department] CHECK CONSTRAINT [FK_professor_department_professors]
GO
ALTER TABLE [dbo].[professors]  WITH CHECK ADD  CONSTRAINT [FK_professors_faculty] FOREIGN KEY([faculty_id])
REFERENCES [dbo].[faculty] ([fac_id])
GO
ALTER TABLE [dbo].[professors] CHECK CONSTRAINT [FK_professors_faculty]
GO
ALTER TABLE [dbo].[questions_bank]  WITH CHECK ADD  CONSTRAINT [FK_questions_bank_answers] FOREIGN KEY([correct_ans_id])
REFERENCES [dbo].[answers] ([ans_id])
GO
ALTER TABLE [dbo].[questions_bank] CHECK CONSTRAINT [FK_questions_bank_answers]
GO
ALTER TABLE [dbo].[questions_bank]  WITH CHECK ADD  CONSTRAINT [FK_questions_bank_courses] FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([id])
GO
ALTER TABLE [dbo].[questions_bank] CHECK CONSTRAINT [FK_questions_bank_courses]
GO
ALTER TABLE [dbo].[student_answers]  WITH CHECK ADD  CONSTRAINT [FK_student_answers_answers] FOREIGN KEY([ans_id])
REFERENCES [dbo].[answers] ([ans_id])
GO
ALTER TABLE [dbo].[student_answers] CHECK CONSTRAINT [FK_student_answers_answers]
GO
ALTER TABLE [dbo].[student_answers]  WITH CHECK ADD  CONSTRAINT [FK_student_answers_exam] FOREIGN KEY([ex_id])
REFERENCES [dbo].[exam] ([ex_id])
GO
ALTER TABLE [dbo].[student_answers] CHECK CONSTRAINT [FK_student_answers_exam]
GO
ALTER TABLE [dbo].[student_answers]  WITH CHECK ADD  CONSTRAINT [FK_student_answers_questions_bank] FOREIGN KEY([quest_id])
REFERENCES [dbo].[questions_bank] ([quest_id])
GO
ALTER TABLE [dbo].[student_answers] CHECK CONSTRAINT [FK_student_answers_questions_bank]
GO
ALTER TABLE [dbo].[student_answers]  WITH CHECK ADD  CONSTRAINT [FK_student_answers_student] FOREIGN KEY([stud_id])
REFERENCES [dbo].[students] ([id])
GO
ALTER TABLE [dbo].[student_answers] CHECK CONSTRAINT [FK_student_answers_student]
GO
ALTER TABLE [dbo].[student_course]  WITH CHECK ADD  CONSTRAINT [FK_student_course_courses] FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([id])
GO
ALTER TABLE [dbo].[student_course] CHECK CONSTRAINT [FK_student_course_courses]
GO
ALTER TABLE [dbo].[student_course]  WITH CHECK ADD  CONSTRAINT [FK_student_course_student] FOREIGN KEY([stud_id])
REFERENCES [dbo].[students] ([id])
GO
ALTER TABLE [dbo].[student_course] CHECK CONSTRAINT [FK_student_course_student]
GO
ALTER TABLE [dbo].[student_professor]  WITH CHECK ADD  CONSTRAINT [FK_student_professor_professors] FOREIGN KEY([professor_id])
REFERENCES [dbo].[professors] ([id])
GO
ALTER TABLE [dbo].[student_professor] CHECK CONSTRAINT [FK_student_professor_professors]
GO
ALTER TABLE [dbo].[student_professor]  WITH CHECK ADD  CONSTRAINT [FK_student_professor_students] FOREIGN KEY([student_id])
REFERENCES [dbo].[students] ([id])
GO
ALTER TABLE [dbo].[student_professor] CHECK CONSTRAINT [FK_student_professor_students]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [FK_student_departments] FOREIGN KEY([dep_id])
REFERENCES [dbo].[departments] ([dep_id])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [FK_student_departments]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [FK_student_faculty] FOREIGN KEY([fac_id])
REFERENCES [dbo].[faculty] ([fac_id])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [FK_student_faculty]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [FK_student_scintific_level] FOREIGN KEY([sci_level_id])
REFERENCES [dbo].[scintific_level] ([sci_id])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [FK_student_scintific_level]
GO
USE [master]
GO
ALTER DATABASE [south_vally_univ] SET  READ_WRITE 
GO
