USE [JIT_Ac_2018_19]
GO

/****** Object:  View [dbo].[V_ContraEntry]    Script Date: 12/02/2019 13:22:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_ContraEntry]
AS
SELECT     dbo.AcMaster.AM_AcDesc AS DrAcDesc, dbo.ContraEntry.Con_No, dbo.ContraEntry.Con_Date, dbo.ContraEntry.Con_StrDate, dbo.ContraEntry.Con_NumDate, 
                      dbo.ContraEntry.Con_CrAcRefNo, dbo.ContraEntry.Con_DrAcRefNo, dbo.ContraEntry.Con_PayMode, dbo.ContraEntry.Con_ChDDNo, dbo.ContraEntry.Con_ChDate, 
                      dbo.ContraEntry.Con_ChStrDate, dbo.ContraEntry.Con_ChNumDate, dbo.ContraEntry.Con_Narr1, dbo.ContraEntry.Con_Narr2, dbo.ContraEntry.Con_Amount, 
                      dbo.ContraEntry.Con_Cancel, dbo.ContraEntry.Con_RefNo, AcMaster_1.AM_AcDesc AS CrAcDesc
FROM         dbo.ContraEntry INNER JOIN
                      dbo.AcMaster ON dbo.ContraEntry.Con_DrAcRefNo = dbo.AcMaster.AM_RefNo INNER JOIN
                      dbo.AcMaster AS AcMaster_1 ON dbo.ContraEntry.Con_CrAcRefNo = AcMaster_1.AM_RefNo

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ContraEntry"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 210
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AcMaster"
            Begin Extent = 
               Top = 78
               Left = 608
               Bottom = 197
               Right = 777
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AcMaster_1"
            Begin Extent = 
               Top = 0
               Left = 393
               Bottom = 119
               Right = 562
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ContraEntry'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ContraEntry'
GO

