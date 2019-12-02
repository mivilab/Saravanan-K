USE [JIT_Ac_2018_19]
GO

/****** Object:  Table [dbo].[ContraEntry]    Script Date: 12/02/2019 13:20:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ContraEntry](
	[Con_No] [nvarchar](15) NOT NULL,
	[Con_Date] [date] NULL,
	[Con_StrDate] [nvarchar](10) NULL,
	[Con_NumDate] [int] NULL,
	[Con_CrAcRefNo] [int] NULL,
	[Con_DrAcRefNo] [int] NULL,
	[Con_PayMode] [nvarchar](15) NULL,
	[Con_ChDDNo] [nvarchar](30) NULL,
	[Con_ChDate] [date] NULL,
	[Con_ChStrDate] [nvarchar](10) NULL,
	[Con_ChNumDate] [int] NULL,
	[Con_Narr1] [nvarchar](200) NULL,
	[Con_Narr2] [nvarchar](200) NULL,
	[Con_Amount] [money] NULL,
	[Con_Cancel] [nvarchar](1) NULL,
	[Con_RefNo] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Con_RefNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ContraEntry]  WITH CHECK ADD FOREIGN KEY([Con_CrAcRefNo])
REFERENCES [dbo].[AcMaster] ([AM_RefNo])
GO

ALTER TABLE [dbo].[ContraEntry]  WITH CHECK ADD FOREIGN KEY([Con_DrAcRefNo])
REFERENCES [dbo].[AcMaster] ([AM_RefNo])
GO

ALTER TABLE [dbo].[ContraEntry]  WITH CHECK ADD CHECK  (([Con_Amount]>(0)))
GO

ALTER TABLE [dbo].[ContraEntry] ADD  DEFAULT ('N') FOR [Con_Cancel]
GO

