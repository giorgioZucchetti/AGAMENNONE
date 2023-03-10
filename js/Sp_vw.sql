USE [AGAMENNONE]
GO
/****** Object:  View [dbo].[v_JoinDIPENDENTIAZIENDE]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_JoinDIPENDENTIAZIENDE]
AS
SELECT dbo.DIPENDENTI.chiave, dbo.DIPENDENTI.chiaveAZIENDA, dbo.AZIENDE.RAGIONESOCIALE, dbo.DIPENDENTI.EMAIL, dbo.DIPENDENTI.PWD, dbo.DIPENDENTI.ABILITATO, dbo.DIPENDENTI.RUOLO, dbo.DIPENDENTI.PRIMOACCESSO, 
                  dbo.DIPENDENTI.COGNOME, dbo.DIPENDENTI.NOME, dbo.DIPENDENTI.INDIRIZZO, dbo.DIPENDENTI.CITTA, dbo.DIPENDENTI.CAP, dbo.DIPENDENTI.PROVINCIA, dbo.DIPENDENTI.TELEFONO, dbo.DIPENDENTI.COSTOORARIO, 
                  dbo.DIPENDENTI.DATAINIZIORAPPORTO, dbo.DIPENDENTI.DATAFINERAPPORTO
FROM     dbo.DIPENDENTI INNER JOIN
                  dbo.AZIENDE ON dbo.DIPENDENTI.chiaveAZIENDA = dbo.AZIENDE.chiave
GO
/****** Object:  View [dbo].[v_JoinDIPENDENTIAZIENDELOGS]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_JoinDIPENDENTIAZIENDELOGS]
AS
SELECT dbo.DIPENDENTI.chiave, dbo.DIPENDENTI.chiaveAZIENDA, dbo.AZIENDE.RAGIONESOCIALE, dbo.DIPENDENTI.EMAIL, dbo.DIPENDENTI.PWD, dbo.DIPENDENTI.ABILITATO, dbo.DIPENDENTI.PRIMOACCESSO, dbo.DIPENDENTI.RUOLO, 
                  dbo.DIPENDENTI.COGNOME, dbo.DIPENDENTI.NOME, dbo.DIPENDENTI.INDIRIZZO, dbo.DIPENDENTI.CITTA, dbo.DIPENDENTI.CAP, dbo.DIPENDENTI.PROVINCIA, dbo.DIPENDENTI.TELEFONO, dbo.DIPENDENTI.COSTOORARIO, 
                  dbo.DIPENDENTI.DATAINIZIORAPPORTO, dbo.DIPENDENTI.DATAFINERAPPORTO
FROM     dbo.DIPENDENTI INNER JOIN
                  dbo.LOG_ACCESSI ON dbo.DIPENDENTI.chiave = dbo.LOG_ACCESSI.chiaveDIPENDENTE INNER JOIN
                  dbo.LOG_EVENTI ON dbo.DIPENDENTI.chiave = dbo.LOG_EVENTI.chiaveDIPENDENTE INNER JOIN
                  dbo.AZIENDE ON dbo.DIPENDENTI.chiaveAZIENDA = dbo.AZIENDE.chiave
GO
/****** Object:  View [dbo].[v_JoinDIPENDENTICOMMESSELAVORI]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_JoinDIPENDENTICOMMESSELAVORI]
AS
SELECT dbo.LAVORI.chiave, dbo.LAVORI.chiaveCOMMESSA, dbo.LAVORI.chiaveDIPENDENTE, dbo.CLIENTI.RAGIONESOCIALE, dbo.DIPENDENTI.COGNOME, dbo.DIPENDENTI.NOME, dbo.LAVORI.DATAORA, dbo.LAVORI.ORE, 
                  dbo.LAVORI.DESCRIZIONE, dbo.LAVORI.PERNOTTAMENTO, dbo.LAVORI.PASTO, dbo.LAVORI.KM, dbo.LAVORI.PEDAGGI, dbo.LAVORI.MEZZI, dbo.LAVORI.SPESEEXTRA, dbo.LAVORI.DESCRIZIONESPESEEXTRA
FROM     dbo.DIPENDENTI INNER JOIN
                  dbo.COMMESSE ON dbo.DIPENDENTI.chiave = dbo.COMMESSE.chiaveRESPONSABILE INNER JOIN
                  dbo.LAVORI ON dbo.DIPENDENTI.chiave = dbo.LAVORI.chiaveDIPENDENTE AND dbo.COMMESSE.chiave = dbo.LAVORI.chiaveCOMMESSA INNER JOIN
                  dbo.CLIENTI ON dbo.COMMESSE.chiaveCLIENTE = dbo.CLIENTI.chiave
GO
/****** Object:  View [dbo].[v_JoinFATTURECOMMESSE]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_JoinFATTURECOMMESSE]
AS
SELECT dbo.FATTURE.chiave, dbo.FATTURE.chiaveCOMMESSA, dbo.COMMESSE.DATACONSEGNA, dbo.FATTURE.NUMEROFATTURA, dbo.FATTURE.DATAFATTURA, dbo.FATTURE.IMPORTO, dbo.FATTURE.DESCRIZIONE, 
                  dbo.FATTURE.ALIQUOTA, dbo.FATTURE.DATASALDO
FROM     dbo.FATTURE INNER JOIN
                  dbo.COMMESSE ON dbo.FATTURE.chiaveCOMMESSA = dbo.COMMESSE.chiave
GO
/****** Object:  StoredProcedure [dbo].[spDIPENDENTI_CambioPassword]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDIPENDENTI_CambioPassword]
(
	@PWD nvarchar(50),
	@EMAIL nvarchar(50)
)
AS
BEGIN UPDATE DIPENDENTI
SET PWD = @PWD, PRIMOACCESSO = 0
where EMAIL = @EMAIL
END
GO
/****** Object:  StoredProcedure [dbo].[spDIPENDENTI_Registra]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spDIPENDENTI_Registra]
(
	@EMAIL nvarchar(50),
	@NOME nvarchar(50),
	@COGNOME nvarchar(50)
)
AS
BEGIN
	SELECT EMAIL, NOME, COGNOME 
	from DIPENDENTI
	where EMAIL = @EMAIL and NOME = @NOME and COGNOME = @COGNOME
      
end
GO
/****** Object:  StoredProcedure [dbo].[spDIPENDENTI_SelectAll]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDIPENDENTI_SelectAll]
AS
BEGIN
SELECT [chiave]
      ,[chiaveAZIENDA]
	  ,[RAGIONESOCIALE]
      ,[EMAIL]
      ,[PWD]
      ,[ABILITATO]
      ,[PRIMOACCESSO]
      ,[RUOLO]
      ,[COGNOME]
      ,[NOME]
      ,[INDIRIZZO]
      ,[CITTA]
      ,[CAP]
      ,[PROVINCIA]
      ,[TELEFONO]
      ,[COSTOORARIO]
      ,[DATAINIZIORAPPORTO]
      ,[DATAFINERAPPORTO]
  FROM [dbo].[v_JoinDIPENDENTIAZIENDE]
END
GO
/****** Object:  StoredProcedure [dbo].[spDIPENDENTI_SelectAll_DDL]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spDIPENDENTI_SelectAll_DDL]
AS
BEGIN
	Select concat (COGNOME, ' ', NOME) as nomecognome, chiave
	  from DIPENDENTI
      
end
GO
/****** Object:  StoredProcedure [dbo].[spDIPENDENTI_SelectByKey]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDIPENDENTI_SelectByKey]
(
	@chiave int
)
AS
BEGIN
SELECT [chiave]
      ,[chiaveAZIENDA]
      ,[EMAIL]
      ,[PWD]
      ,[ABILITATO]
      ,[PRIMOACCESSO]
      ,[RUOLO]
      ,[COGNOME]
      ,[NOME]
      ,[INDIRIZZO]
      ,[CITTA]
      ,[CAP]
      ,[PROVINCIA]
      ,[TELEFONO]
      ,[COSTOORARIO]
      ,[DATAINIZIORAPPORTO]
      ,[DATAFINERAPPORTO]
  FROM [dbo].[DIPENDENTI]
  where chiave = @chiave 
END
GO
/****** Object:  StoredProcedure [dbo].[spFATTURE_Insert]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFATTURE_Insert]
(
@chiaveCOMMESSA int,
           @NUMEROFATTURA nchar(10),
           @DATAFATTURA date,
           @IMPORTO decimal(9,2),
           @ALIQUOTA tinyint,
           @DESCRIZIONE nvarchar(300),
           @DATASALDO date
)
AS
BEGIN
INSERT INTO [dbo].[FATTURE]
           ([chiaveCOMMESSA]
           ,[NUMEROFATTURA]
           ,[DATAFATTURA]
           ,[IMPORTO]
           ,[ALIQUOTA]
           ,[DESCRIZIONE]
           ,[DATASALDO])
     VALUES
           (@chiaveCOMMESSA
           ,@NUMEROFATTURA
           ,@DATAFATTURA
           ,@IMPORTO
           ,@ALIQUOTA
           ,@DESCRIZIONE
           ,@DATASALDO)
	
END
GO
/****** Object:  StoredProcedure [dbo].[spFATTURE_SelectAll]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFATTURE_SelectAll]
AS
BEGIN 

SELECT [chiave]
      ,[chiaveCOMMESSA]
	  ,[DATACONSEGNA]
      ,[NUMEROFATTURA]
      ,[DATAFATTURA]
      ,[IMPORTO]
      ,[ALIQUOTA]
      ,[DESCRIZIONE]
      ,[DATASALDO]
  FROM [dbo].[v_JoinFATTURECOMMESSE]

END
GO
/****** Object:  StoredProcedure [dbo].[spFATTURE_SelectByDataSaldo]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFATTURE_SelectByDataSaldo]
(
	@DATASALDO date
)
AS
BEGIN 

SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[NUMEROFATTURA]
      ,[DATAFATTURA]
      ,[IMPORTO]
      ,[ALIQUOTA]
      ,[DESCRIZIONE]
      ,[DATASALDO]
  FROM [dbo].[FATTURE]
  where DATASALDO = @DATASALDO

END
GO
/****** Object:  StoredProcedure [dbo].[spFATTURE_SelectByKey]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFATTURE_SelectByKey]
(
	@chiave int
)
AS
BEGIN 

SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[NUMEROFATTURA]
      ,[DATAFATTURA]
      ,[IMPORTO]
      ,[ALIQUOTA]
      ,[DESCRIZIONE]
      ,[DATASALDO]
  FROM [dbo].[FATTURE]
  where chiave = @chiave

END
GO
/****** Object:  StoredProcedure [dbo].[spFATTURE_SelectByMonth]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFATTURE_SelectByMonth]
(
	@MONTH int
)
AS
BEGIN 

SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[NUMEROFATTURA]
      ,[DATAFATTURA]
      ,[IMPORTO]
      ,[ALIQUOTA]
      ,[DESCRIZIONE]
      ,[DATASALDO]
  FROM [dbo].[FATTURE]
  where month(DATASALDO) = @MONTH

END
GO
/****** Object:  StoredProcedure [dbo].[spFATTURE_SelectByYear]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFATTURE_SelectByYear]
(
	@YEAR int
)
AS
BEGIN 

SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[NUMEROFATTURA]
      ,[DATAFATTURA]
      ,[IMPORTO]
      ,[ALIQUOTA]
      ,[DESCRIZIONE]
      ,[DATASALDO]
  FROM [dbo].[FATTURE]
  where year(DATASALDO) = @YEAR

END
GO
/****** Object:  StoredProcedure [dbo].[spFATTURE_SelectDate_Interval]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFATTURE_SelectDate_Interval]
(
	@STARTDATE date,
	@ENDDATE date
)
AS
BEGIN 

SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[NUMEROFATTURA]
      ,[DATAFATTURA]
      ,[IMPORTO]
      ,[ALIQUOTA]
      ,[DESCRIZIONE]
      ,[DATASALDO]
  FROM [dbo].[FATTURE]
  where DATASALDO between @STARTDATE AND @ENDDATE

END
GO
/****** Object:  StoredProcedure [dbo].[spFATTURE_Update]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFATTURE_Update]
(
		@chiave int,
		@chiaveCOMMESSA int,
        @NUMEROFATTURA nchar(10),
        @DATAFATTURA date,
        @IMPORTO decimal(9,2),
        @ALIQUOTA tinyint,
        @DESCRIZIONE nvarchar(300),
        @DATASALDO date
)
AS
BEGIN 

UPDATE [dbo].[FATTURE]
   SET [chiaveCOMMESSA] = @chiaveCOMMESSA
      ,[NUMEROFATTURA] = @NUMEROFATTURA
      ,[DATAFATTURA] = @DATAFATTURA
      ,[IMPORTO] = @IMPORTO
      ,[ALIQUOTA] = @ALIQUOTA
      ,[DESCRIZIONE] = @DESCRIZIONE
      ,[DATASALDO] = @DATASALDO
 WHERE chiave = @chiave

END
GO
/****** Object:  StoredProcedure [dbo].[spREFERENTICOMMESSE_Delete]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spREFERENTICOMMESSE_Delete]
(
	@chiaveREFERENTE int
)
AS
BEGIN 
DELETE FROM REFERENTICOMMESSE where chiaveREFERENTE = @chiaveREFERENTE
END
GO
/****** Object:  StoredProcedure [dbo].[spREFERENTICOMMESSE_Insert]    Script Date: 03/02/2023 17:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spREFERENTICOMMESSE_Insert]
(
	@chiaveREFERENTE int,
	@chiaveCOMMESSA int
)
AS
BEGIN 
INSERT INTO REFERENTICOMMESSE(chiaveREFERENTE,chiaveCOMMESSA) values (@chiaveREFERENTE,@chiaveCOMMESSA)
END
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
         Begin Table = "DIPENDENTI"
            Begin Extent = 
               Top = 13
               Left = 70
               Bottom = 176
               Right = 321
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AZIENDE"
            Begin Extent = 
               Top = 13
               Left = 556
               Bottom = 176
               Right = 771
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_JoinDIPENDENTIAZIENDE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_JoinDIPENDENTIAZIENDE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[50] 4[19] 2[21] 3) )"
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
         Begin Table = "DIPENDENTI"
            Begin Extent = 
               Top = 0
               Left = 500
               Bottom = 163
               Right = 751
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AZIENDE"
            Begin Extent = 
               Top = 0
               Left = 863
               Bottom = 163
               Right = 1078
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LOG_ACCESSI"
            Begin Extent = 
               Top = 2
               Left = 147
               Bottom = 165
               Right = 372
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LOG_EVENTI"
            Begin Extent = 
               Top = 195
               Left = 145
               Bottom = 358
               Right = 370
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
         Column = 1728
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_JoinDIPENDENTIAZIENDELOGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_JoinDIPENDENTIAZIENDELOGS'
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
         Begin Table = "LAVORI"
            Begin Extent = 
               Top = 0
               Left = 181
               Bottom = 163
               Right = 452
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DIPENDENTI"
            Begin Extent = 
               Top = 87
               Left = 927
               Bottom = 250
               Right = 1178
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "COMMESSE"
            Begin Extent = 
               Top = 0
               Left = 608
               Bottom = 163
               Right = 846
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CLIENTI"
            Begin Extent = 
               Top = 165
               Left = 301
               Bottom = 328
               Right = 516
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_JoinDIPENDENTICOMMESSELAVORI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_JoinDIPENDENTICOMMESSELAVORI'
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
         Begin Table = "FATTURE"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "COMMESSE"
            Begin Extent = 
               Top = 0
               Left = 733
               Bottom = 163
               Right = 971
            End
            DisplayFlags = 280
            TopColumn = 3
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_JoinFATTURECOMMESSE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_JoinFATTURECOMMESSE'
GO
