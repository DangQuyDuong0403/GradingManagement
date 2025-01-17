
USE [PRN221_ProjectTest1]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 1/9/2024 5:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Active] [bit] NULL,
	[TeacherId] [int] NULL,
	[CreatedAt] [date] NULL,
	[CreatedBy] [int] NULL,
	[SubjectId] [int] NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassStudent]    Script Date: 1/9/2024 5:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassStudent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[ClassId] [int] NULL,
	[JoinDate] [date] NULL,
 CONSTRAINT [PK_ClassStudent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponentScore]    Script Date: 1/9/2024 5:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponentScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Percent] [float] NULL,
	[Active] [bit] NULL,
	[Description] [nvarchar](250) NULL,
	[SubjectId] [int] NULL,
 CONSTRAINT [PK_ComponentScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 1/9/2024 5:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 1/9/2024 5:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[ComponentScoreId] [int] NULL,
	[Score] [float] NULL,
	[Note] [nvarchar](250) NULL,
 CONSTRAINT [PK_StudentScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 1/9/2024 5:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Active] [bit] NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedAt] [date] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/9/2024 5:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Email] [varchar](150) NULL,
	[Password] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Gender] [bit] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([Id], [Name], [Active], [TeacherId], [CreatedAt], [CreatedBy], [SubjectId]) VALUES (1, N'SE1630', 1, 4, NULL, 1, 1)
INSERT [dbo].[Class] ([Id], [Name], [Active], [TeacherId], [CreatedAt], [CreatedBy], [SubjectId]) VALUES (2, N'SE1235', 1, 5, NULL, 1, 1)
INSERT [dbo].[Class] ([Id], [Name], [Active], [TeacherId], [CreatedAt], [CreatedBy], [SubjectId]) VALUES (3, N'SE3466', 1, 4, NULL, 1, 2)
INSERT [dbo].[Class] ([Id], [Name], [Active], [TeacherId], [CreatedAt], [CreatedBy], [SubjectId]) VALUES (4, N'SE0932', 1, 5, CAST(N'2023-11-10' AS Date), 1, 2)
INSERT [dbo].[Class] ([Id], [Name], [Active], [TeacherId], [CreatedAt], [CreatedBy], [SubjectId]) VALUES (5, N'SE3401', 1, 5, NULL, 1, 1)
INSERT [dbo].[Class] ([Id], [Name], [Active], [TeacherId], [CreatedAt], [CreatedBy], [SubjectId]) VALUES (6, N'SE1631', 1, 4, NULL, 1, 3)
INSERT [dbo].[Class] ([Id], [Name], [Active], [TeacherId], [CreatedAt], [CreatedBy], [SubjectId]) VALUES (7, N'SE4078', 1, 4, NULL, 1, 3)
INSERT [dbo].[Class] ([Id], [Name], [Active], [TeacherId], [CreatedAt], [CreatedBy], [SubjectId]) VALUES (8, N'SE1236', 1, 4, CAST(N'2023-11-14' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[ClassStudent] ON 

INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (1, 2, 2, NULL)
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (3, 6, 2, NULL)
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (4, 7, 2, NULL)
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (5, 3, 3, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (6, 6, 3, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (7, 9, 3, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (8, 7, 3, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (9, 3, 5, CAST(N'2023-11-11' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (10, 10, 5, CAST(N'2023-11-11' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (15, 9, 2, CAST(N'2023-11-13' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (16, 2, 6, CAST(N'2023-11-13' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (17, 3, 6, CAST(N'2023-11-13' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (19, 9, 6, CAST(N'2023-11-13' AS Date))
INSERT [dbo].[ClassStudent] ([id], [StudentId], [ClassId], [JoinDate]) VALUES (20, 8, 6, CAST(N'2023-11-13' AS Date))
SET IDENTITY_INSERT [dbo].[ClassStudent] OFF
GO
SET IDENTITY_INSERT [dbo].[ComponentScore] ON 

INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (1, N'PT1', 5, 1, N'dsff', 1)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (3, N'PT2', 5, 1, N'sda', 1)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (5, N'ASM1', 10, 1, N'sf', 1)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (6, N'ASM2', 10, 1, N'gf', 1)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (8, N'PE', 30, 1, N'sd', 1)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (9, N'FE', 40, 1, N'gsd', 1)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (10, N'Lab1', 5, 1, N'fv', 2)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (12, N'FE', 40, 1, N'hf', 2)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (13, N'Lab2', 5, 1, N'dsf', 2)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (15, N'Asm1', 10, 1, N'fd', 2)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (16, N'Quiz1', 10, 1, N'vvd', 3)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (17, N'Quiz2', 10, 1, N'sdf', 3)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (18, N'FE', 40, 1, N'fe of swd', 3)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (20, N'FinalProject', 40, 1, N'dsf', 3)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (21, N'Lab1', 5, 1, N'fds', 4)
INSERT [dbo].[ComponentScore] ([Id], [Name], [Percent], [Active], [Description], [SubjectId]) VALUES (22, N'PT2', 95, 1, N'sa', 4)
SET IDENTITY_INSERT [dbo].[ComponentScore] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name], [Description]) VALUES (1, N'STUDENT', NULL)
INSERT [dbo].[Role] ([Id], [Name], [Description]) VALUES (2, N'TEACHER', NULL)
INSERT [dbo].[Role] ([Id], [Name], [Description]) VALUES (3, N'ADMIN', NULL)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Score] ON 

INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (1, 1, 1, 9, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (2, 3, 1, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (3, 4, 1, 6, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (5, 1, 3, 7, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (6, 1, 5, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (7, 1, 6, 7.7, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (8, 1, 8, 8.5, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (9, 1, 9, 7.7, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (10, 3, 3, 7, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (11, 3, 5, 8.5, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (12, 3, 6, 8.9, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (13, 3, 8, 7.8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (14, 3, 9, 9, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (15, 4, 5, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (16, 4, 6, 9, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (17, 4, 8, 9, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (18, 4, 9, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (19, 4, 3, 9.9, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (20, 5, 10, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (22, 5, 12, 6, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (23, 6, 10, 7, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (26, 9, 1, 5, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (27, 10, 1, 9, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (28, 7, 12, 8.6, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (29, 8, 10, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (30, 7, 10, 7, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (31, 6, 12, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (32, 9, 3, 7, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (33, 10, 5, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (34, 16, 16, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (35, 17, 16, 9, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (36, 19, 16, 6, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (37, 20, 16, 7, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (38, 15, 1, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (40, 15, 6, 7.5, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (41, 15, 8, 8.6, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (42, 15, 3, 8, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (43, 15, 9, 9.5, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (45, 15, 5, 8.6, NULL)
INSERT [dbo].[Score] ([Id], [StudentId], [ComponentScoreId], [Score], [Note]) VALUES (46, 16, 17, 8, NULL)
SET IDENTITY_INSERT [dbo].[Score] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([Id], [Name], [Active], [Description], [CreatedAt], [CreatedBy]) VALUES (1, N'PRN221', 1, N'acs vf gg', CAST(N'2023-11-11' AS Date), 1)
INSERT [dbo].[Subject] ([Id], [Name], [Active], [Description], [CreatedAt], [CreatedBy]) VALUES (2, N'PRM392', 1, N'cxttnn cg', CAST(N'2023-11-11' AS Date), 1)
INSERT [dbo].[Subject] ([Id], [Name], [Active], [Description], [CreatedAt], [CreatedBy]) VALUES (3, N'SWD392', 1, N'sdfasfsawrff', CAST(N'2023-11-11' AS Date), 1)
INSERT [dbo].[Subject] ([Id], [Name], [Active], [Description], [CreatedAt], [CreatedBy]) VALUES (4, N'PRJ301', 1, N'sfas', CAST(N'2023-11-13' AS Date), 1)
INSERT [dbo].[Subject] ([Id], [Name], [Active], [Description], [CreatedAt], [CreatedBy]) VALUES (6, N'PRN231', 1, N'sdf ff', CAST(N'2023-11-13' AS Date), 1)
INSERT [dbo].[Subject] ([Id], [Name], [Active], [Description], [CreatedAt], [CreatedBy]) VALUES (7, N'PRU211', 1, N'ds', CAST(N'2023-11-13' AS Date), 1)
INSERT [dbo].[Subject] ([Id], [Name], [Active], [Description], [CreatedAt], [CreatedBy]) VALUES (8, N'PRN211', 1, N'ef fd df', CAST(N'2023-11-13' AS Date), 1)
INSERT [dbo].[Subject] ([Id], [Name], [Active], [Description], [CreatedAt], [CreatedBy]) VALUES (9, N'PRN223', 1, N'sadv', CAST(N'2023-11-14' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (1, N'Admin', N'admin@gmail.com', N'123', 1, 1, 3)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (2, N'User1', N'user@gmail.com', N'123', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (3, N'user2 vv', N'user2@gmail.com', N'123456', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (4, N'Teacher 1 new', N'teacher1@gmail.com', N'123', 1, 1, 2)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (5, N'Teacher 2', N'teacher2@gmail.com', N'123', 1, 0, 2)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (6, N'Nguyen Van A', N'avc@gmail.com', N'123', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (7, N'Nguyen Van B', N'ad@gmail.com', N'123', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (8, N'Mai Van C', N'car@gmail.com', N'123', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (9, N'Pham Van F', N'saf@gmail.com', N'123', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (10, N'ABCD', N'sdf@gmail.com', N'123', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (11, N'New Student', N'sad@gmail.com', N'123', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (12, N'teacher 3', N'teacher3@gmail.com', N'123', 1, 1, 2)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (16, N'student dd', N'trekf@gmail.com', N'123456', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (17, N'Nguyen Van HH', N'abc@gmail.com', N'1234', 1, 0, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (18, N'Nguyen Van O', N'xyz@gmail.com', N'123', 1, 1, 1)
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Active], [Gender], [RoleId]) VALUES (19, N'Pham Van Rz', N'rpv@gmai', N'123', 1, 0, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Subject]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_User] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_User]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_User1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_User1]
GO
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_Class]
GO
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_User] FOREIGN KEY([StudentId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_User]
GO
ALTER TABLE [dbo].[ComponentScore]  WITH CHECK ADD  CONSTRAINT [FK_ComponentScore_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[ComponentScore] CHECK CONSTRAINT [FK_ComponentScore_Subject]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_ClassStudent] FOREIGN KEY([StudentId])
REFERENCES [dbo].[ClassStudent] ([id])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_ClassStudent]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_ComponentScore] FOREIGN KEY([ComponentScoreId])
REFERENCES [dbo].[ComponentScore] ([Id])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_ComponentScore]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
