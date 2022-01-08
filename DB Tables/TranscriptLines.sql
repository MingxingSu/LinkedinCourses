USE [LinkedinCourses]
GO

/****** Object:  Table [dbo].[TranscriptLines]    Script Date: 1/7/2022 11:46:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TranscriptLines](
	[TranscriptLineID] [int] IDENTITY(1,1) NOT NULL,
	[TranscriptLineDesc] [nvarchar](256) NULL,
	[ClassTranscriptID] [int] NOT NULL,
	[ClassSequenceNo] [int] NOT NULL,
	[IsCollected] [bit] NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TranscriptLines] PRIMARY KEY CLUSTERED 
(
	[TranscriptLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TranscriptLines]  WITH CHECK ADD  CONSTRAINT [FK_TranscriptLines_ClassTranscripts] FOREIGN KEY([ClassTranscriptID])
REFERENCES [dbo].[ClassTranscripts] ([ClassTranscriptID])
GO

ALTER TABLE [dbo].[TranscriptLines] CHECK CONSTRAINT [FK_TranscriptLines_ClassTranscripts]
GO


