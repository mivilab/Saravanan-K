USE [JIT_Ac_2018_19]
GO

/****** Object:  Table [dbo].[AcGrpMst]    Script Date: 12/02/2019 13:08:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AcGrpMst](
	[ACG_GroupName] [nvarchar](200) NOT NULL,
	[ACG_ShortName] [nvarchar](15) NULL,
	[ACG_Cancel] [nvarchar](1) NOT NULL,
	[ACG_Refno] [int] IDENTITY(1,1) NOT NULL,
	[ACG_Default] [nvarchar](1) NULL,
	[ACG_HeadGrp] [int] NULL,
	[ACG_OrderNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ACG_Refno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[AcGrpMst] ADD  DEFAULT ('N') FOR [ACG_Cancel]
GO

