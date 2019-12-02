USE [JIT_Ac_2018_19]
GO

/****** Object:  View [dbo].[V_LdgDayBook]    Script Date: 12/02/2019 13:23:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_LdgDayBook]
AS
SELECT     dbo.AcMaster.AM_AcDesc, dbo.AcMaster.AM_ShortName, dbo.AcMaster.AM_AcGrpRefNo, dbo.AcMaster.AM_OpBal, dbo.AcMaster.AM_CRDR, 
                      dbo.AcMaster.AM_AcName, dbo.AcMaster.AM_Add1, dbo.AcMaster.AM_Add2, dbo.AcMaster.AM_Add3, dbo.AcMaster.Am_Phone, dbo.AcMaster.Am_CellNo, 
                      dbo.AcMaster.Am_EmailId, dbo.AcMaster.AM_WebSite, dbo.AcMaster.AM_PAN, dbo.AcMaster.AM_GST, dbo.AcMaster.AM_CSTNo, dbo.AcMaster.AM_CstDate, 
                      dbo.AcMaster.AM_OtherInfo, dbo.AcMaster.AM_Cancel, dbo.AcMaster.AM_RefNo, dbo.DayBook.DB_Date, dbo.DayBook.DB_StrDate, dbo.DayBook.DB_NumDate, 
                      dbo.DayBook.DB_TranType, dbo.DayBook.DB_FromScreen, dbo.DayBook.DB_FromScrRefNo, dbo.DayBook.DB_CrDr, dbo.DayBook.DB_VouRecNo, 
                      dbo.DayBook.DB_AcRefNo, dbo.DayBook.DB_Narr1, dbo.DayBook.DB_Narr2, dbo.DayBook.DB_CashRec, dbo.DayBook.DB_CashPay, dbo.DayBook.DB_CrAmt, 
                      dbo.DayBook.DB_DrAmt, dbo.DayBook.DB_Cancel, dbo.DayBook.DB_RefNo
FROM         dbo.AcMaster INNER JOIN
                      dbo.DayBook ON dbo.AcMaster.AM_RefNo = dbo.DayBook.DB_AcRefNo

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
         Begin Table = "AcMaster"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DayBook"
            Begin Extent = 
               Top = 33
               Left = 388
               Bottom = 152
               Right = 565
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_LdgDayBook'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_LdgDayBook'
GO

