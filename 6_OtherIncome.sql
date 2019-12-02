USE [JIT_Ac_2018_19]
GO

/****** Object:  Table [dbo].[OtherIncome]    Script Date: 12/02/2019 13:22:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OtherIncome](
	[OI_No] [nvarchar](15) NOT NULL,
	[OI_Date] [date] NULL,
	[OI_StrDate] [nvarchar](10) NULL,
	[OI_NumDate] [int] NULL,
	[OI_CrAcRefNo] [int] NULL,
	[OI_DrAcRefNo] [int] NULL,
	[OI_PayMode] [nvarchar](15) NULL,
	[OI_BankName] [nvarchar](200) NULL,
	[OI_ChDDNo] [nvarchar](30) NULL,
	[OI_NeftRefNo] [nvarchar](30) NULL,
	[OI_ChDate] [date] NULL,
	[OI_ChStrDate] [nvarchar](10) NULL,
	[OI_ChNumDate] [int] NULL,
	[OI_Narr1] [nvarchar](200) NULL,
	[OI_Narr2] [nvarchar](200) NULL,
	[OI_Amount] [money] NULL,
	[OI_Cancel] [nvarchar](1) NULL,
	[OI_RefNo] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OI_RefNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[OtherIncome]  WITH CHECK ADD FOREIGN KEY([OI_CrAcRefNo])
REFERENCES [dbo].[AcMaster] ([AM_RefNo])
GO

ALTER TABLE [dbo].[OtherIncome]  WITH CHECK ADD FOREIGN KEY([OI_DrAcRefNo])
REFERENCES [dbo].[AcMaster] ([AM_RefNo])
GO

ALTER TABLE [dbo].[OtherIncome]  WITH CHECK ADD CHECK  (([OI_Amount]>(0)))
GO

ALTER TABLE [dbo].[OtherIncome] ADD  DEFAULT ('N') FOR [OI_Cancel]
GO

