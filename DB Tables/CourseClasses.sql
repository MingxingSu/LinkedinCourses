USE [LinkedinCourses]
GO

/****** Object:  Table [dbo].[CourseClasses]    Script Date: 1/7/2022 11:52:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CourseClasses](
	[CourseClassID] [int] IDENTITY(1,1) NOT NULL,
	[CourseClassDesc] [nvarchar](256) NOT NULL,
	[CourseID] [int] NOT NULL,
	[ClassSequenceNo] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CoursesClasses] PRIMARY KEY CLUSTERED 
(
	[CourseClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CourseClasses]  WITH CHECK ADD  CONSTRAINT [FK_CourseClasses_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO

ALTER TABLE [dbo].[CourseClasses] CHECK CONSTRAINT [FK_CourseClasses_CourseID]
GO


