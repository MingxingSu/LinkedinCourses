USE [LinkedinCourses]
GO

/****** Object:  Table [dbo].[ClassTranscripts]    Script Date: 1/7/2022 11:40:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ClassTranscripts](
	[ClassTranscriptID] [int] IDENTITY(1,1) NOT NULL,
	[ClassTranscriptDesc] [nvarchar](256) NULL,
	[CourseClassID] [int] NOT NULL,
	[ClassSequenceNo] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ClassTranscripts] PRIMARY KEY CLUSTERED 
(
	[ClassTranscriptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClassTranscripts]  WITH CHECK ADD  CONSTRAINT [FK_ClassTranscripts_CourseID] FOREIGN KEY([CourseClassID])
REFERENCES [dbo].[CourseClasses] ([CourseClassID])
GO

ALTER TABLE [dbo].[ClassTranscripts] CHECK CONSTRAINT [FK_ClassTranscripts_CourseID]
GO

