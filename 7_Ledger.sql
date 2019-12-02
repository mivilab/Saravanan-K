USE [JIT_Ac_2018_19]
GO

/****** Object:  Table [dbo].[Ledger]    Script Date: 12/02/2019 13:22:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ledger](
	[LD_Date] [date] NULL,
	[LD_StrDate] [nvarchar](10) NULL,
	[LD_NumDate] [int] NULL,
	[LD_TranType] [nvarchar](30) NULL,
	[LD_FromScreen] [nvarchar](30) NULL,
	[LD_FromScrRefNo] [int] NULL,
	[LD_CrDr] [nvarchar](2) NULL,
	[LD_VouRecNo] [nvarchar](30) NULL,
	[LD_AcRefNo] [int] NULL,
	[LD_Narr1] [nvarchar](200) NULL,
	[LD_Narr2] [nvarchar](200) NULL,
	[LD_CrAmt] [money] NULL,
	[LD_DrAmt] [money] NULL,
	[LD_Cancel] [nvarchar](1) NULL,
	[LD_RefNo] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LD_RefNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Ledger]  WITH CHECK ADD FOREIGN KEY([LD_AcRefNo])
REFERENCES [dbo].[AcMaster] ([AM_RefNo])
GO

ALTER TABLE [dbo].[Ledger] ADD  DEFAULT ('N') FOR [LD_Cancel]
GO

