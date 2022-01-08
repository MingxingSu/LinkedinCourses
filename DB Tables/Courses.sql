USE [LinkedinCourses]
GO

/****** Object:  Table [dbo].[Courses]    Script Date: 1/7/2022 11:51:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](256) NOT NULL,
	[CourseTypeID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_CourseType] FOREIGN KEY([CourseTypeID])
REFERENCES [dbo].[CourseType] ([CourseTypeID])
GO

ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_CourseType]
GO


