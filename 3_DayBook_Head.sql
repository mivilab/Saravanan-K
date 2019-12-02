USE [JIT_Ac_2018_19]
GO

/****** Object:  Table [dbo].[DayBookHead]    Script Date: 12/02/2019 13:21:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DayBookHead](
	[DBH_TranType] [nvarchar](15) NULL,
	[DBH_Date] [date] NULL,
	[DBH_StrDate] [nvarchar](10) NULL,
	[DBH_NumDate] [int] NULL,
	[DBH_Cancel] [nvarchar](1) NULL,
	[DBH_RefNo] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DBH_RefNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DayBookHead] ADD  DEFAULT ('N') FOR [DBH_Cancel]
GO

