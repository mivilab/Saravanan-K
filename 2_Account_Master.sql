USE [JIT_Ac_2018_19]
GO

/****** Object:  Table [dbo].[AcMaster]    Script Date: 12/02/2019 13:08:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AcMaster](
	[AM_AcDesc] [nvarchar](200) NOT NULL,
	[AM_ShortName] [nvarchar](15) NULL,
	[AM_AcGrpRefNo] [int] NULL,
	[AM_OpBal] [money] NULL,
	[AM_CRDR] [nvarchar](1) NULL,
	[AM_AcName] [nvarchar](200) NULL,
	[AM_Add1] [nvarchar](200) NULL,
	[AM_Add2] [nvarchar](200) NULL,
	[AM_Add3] [nvarchar](200) NULL,
	[Am_Phone] [nvarchar](150) NULL,
	[Am_CellNo] [nvarchar](150) NULL,
	[Am_EmailId] [nvarchar](100) NULL,
	[AM_WebSite] [nvarchar](100) NULL,
	[AM_PAN] [nvarchar](50) NULL,
	[AM_GST] [nvarchar](50) NULL,
	[AM_CSTNo] [nvarchar](50) NULL,
	[AM_CstDate] [nvarchar](15) NULL,
	[AM_OtherInfo] [nvarchar](250) NULL,
	[AM_Cancel] [nvarchar](1) NULL,
	[AM_RefNo] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AM_RefNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[AM_AcDesc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[AcMaster]  WITH CHECK ADD FOREIGN KEY([AM_AcGrpRefNo])
REFERENCES [dbo].[AcGrpMst] ([ACG_Refno])
GO

ALTER TABLE [dbo].[AcMaster] ADD  DEFAULT ('N') FOR [AM_Cancel]
GO

