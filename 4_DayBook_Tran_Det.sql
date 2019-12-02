USE [JIT_Ac_2018_19]
GO

/****** Object:  Table [dbo].[DayBookTran]    Script Date: 12/02/2019 13:21:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DayBookTran](
	[DBT_RecVouNo] [nvarchar](30) NULL,
	[DBT_CRDR] [nvarchar](2) NULL,
	[DBT_AcRefNo] [int] NULL,
	[DBT_Narr1] [nvarchar](200) NULL,
	[DBT_Narr2] [nvarchar](200) NULL,
	[DBT_CrAmt] [money] NULL,
	[DBT_DrAmt] [money] NULL,
	[DBT_HeadRefNo] [int] NULL,
	[DBT_RefNo] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DBT_RefNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DayBookTran]  WITH CHECK ADD FOREIGN KEY([DBT_AcRefNo])
REFERENCES [dbo].[AcMaster] ([AM_RefNo])
GO

ALTER TABLE [dbo].[DayBookTran]  WITH CHECK ADD FOREIGN KEY([DBT_HeadRefNo])
REFERENCES [dbo].[DayBookHead] ([DBH_RefNo])
GO

