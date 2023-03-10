USE [AGAMENNONE]
GO
/****** Object:  StoredProcedure [dbo].[spACCESSI_Insert]    Script Date: 03/02/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spACCESSI_Insert]
(
			@chiaveDIPENDENTE int,
			@DATAORA smalldatetime,
			@EVENTO nvarchar (100)
			
)
as
begin
INSERT INTO LOG_ACCESSI
           (chiaveDIPENDENTE,
		    DATAORA,
		    EVENTO)
VALUES
           (@chiaveDIPENDENTE,
		   @DATAORA,
		   @EVENTO)
end
GO
/****** Object:  StoredProcedure [dbo].[spACCESSI_SelectAll]    Script Date: 03/02/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spACCESSI_SelectAll]
AS
BEGIN
SELECT chiave,
	   chiaveDIPENDENTE,
	   DATAORA,
	   EVENTO

      
  FROM LOG_ACCESSI
	
END
GO
/****** Object:  StoredProcedure [dbo].[spCLIENTI_Insert]    Script Date: 03/02/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCLIENTI_Insert]

(@RAGIONESOCIALE nvarchar(50),
			@INDIRIZZO nvarchar(50),
			@CITTA nvarchar(50),
			@CAP nchar(5),
			@PROVINCIA nchar(2),
			@EMAIL nvarchar(50),
			@TELEFONO nvarchar(15),
			@CODICEFISCALE nvarchar(16),
			@PIVA nchar(11),
			@PEC nvarchar(50),
			@CFE nchar(7),
			@TITOLARE nvarchar(50),
			@EMAILTITOLARE nvarchar(50),
			@TELTITOLARE nvarchar(50) 
			)

as
begin
INSERT INTO CLIENTI
           ([RAGIONESOCIALE]
           ,[INDIRIZZO]
           ,[CITTA]
           ,[CAP]
           ,[PROVINCIA]
           ,[EMAIL]
           ,[TELEFONO]
           ,[CODICEFISCALE]
           ,[PIVA]
           ,[PEC]
           ,[CFE]
           ,[TITOLARE]
           ,[EMAILTITOLARE]
           ,[TELTITOLARE])
     VALUES
           (@RAGIONESOCIALE,
           @INDIRIZZO,
           @CITTA,
           @CAP,
           @PROVINCIA,
           @EMAIL,
           @TELEFONO,
           @CODICEFISCALE,
           @PIVA,
           @PEC,
           @CFE,
           @TITOLARE,
           @EMAILTITOLARE,
           @TELTITOLARE) 
end
GO
/****** Object:  StoredProcedure [dbo].[spCLIENTI_SelectAll]    Script Date: 03/02/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCLIENTI_SelectAll]
AS
BEGIN
SELECT [chiave]
      ,[RAGIONESOCIALE]
      ,[INDIRIZZO]
      ,[CITTA]
      ,[CAP]
      ,[PROVINCIA]
      ,[EMAIL]
      ,[TELEFONO]
      ,[CODICEFISCALE]
      ,[PIVA]
      ,[PEC]
      ,[CFE]
      ,[TITOLARE]
      ,[EMAILTITOLARE]
      ,[TELTITOLARE]
  FROM [CLIENTI]
	
END
GO
/****** Object:  StoredProcedure [dbo].[spCLIENTI_SelectAll_DDL]    Script Date: 03/02/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCLIENTI_SelectAll_DDL]

AS
BEGIN
	SELECT chiave, RAGIONESOCIALE
	from AZIENDE 

	
END
GO
/****** Object:  StoredProcedure [dbo].[spCLIENTI_SelectByKey]    Script Date: 03/02/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCLIENTI_SelectByKey]
(
	@chiave int
)
AS
BEGIN
SELECT [chiave]
      ,[RAGIONESOCIALE]
      ,[INDIRIZZO]
      ,[CITTA]
      ,[CAP]
      ,[PROVINCIA]
      ,[EMAIL]
      ,[TELEFONO]
      ,[CODICEFISCALE]
      ,[PIVA]
      ,[PEC]
      ,[CFE]
      ,[TITOLARE]
      ,[EMAILTITOLARE]
      ,[TELTITOLARE]
  FROM [dbo].[AZIENDE]
  where chiave = @chiave 
	
END
GO
/****** Object:  StoredProcedure [dbo].[spCLIENTI_Update]    Script Date: 03/02/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spCLIENTI_Update]
(
	@chiave int,
	@RAGIONESOCIALE nvarchar(50),
	@INDIRIZZO nvarchar(50),
	@CITTA nvarchar(50),
	@CAP nchar(5),
	@PROVINCIA nchar(2),
	@EMAIL nvarchar(50),
	@TELEFONO nvarchar(15),
	@CODICEFISCALE nvarchar(16),
	@PIVA nchar(11),
	@PEC nvarchar(50),
	@CFE nchar(7),
	@TITOLARE nvarchar(50),
	@EMAILTITOLARE nvarchar(50),
	@TELTITOLARE nvarchar(50) 
)
as
begin
UPDATE CLIENTI

   SET RAGIONESOCIALE = @RAGIONESOCIALE, 
       INDIRIZZO = @INDIRIZZO
      ,CITTA = @CITTA 
      ,[CAP] = @CAP
      ,[PROVINCIA] = @PROVINCIA
      ,[EMAIL] = @EMAIL
      ,[TELEFONO] = @TELEFONO
      ,[CODICEFISCALE] = @CODICEFISCALE
      ,[PIVA] = @PIVA
      ,[PEC] = @PEC
      ,[CFE] = @CFE
      ,[TITOLARE] = @TITOLARE
      ,[EMAILTITOLARE] = @EMAILTITOLARE
      ,[TELTITOLARE] = @TELTITOLARE
 WHERE chiave = @chiave 
end
GO
/****** Object:  StoredProcedure [dbo].[spEVENTI_Insert]    Script Date: 03/02/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spEVENTI_Insert]
(
			@chiaveDIPENDENTE int,
			@DATAORA smalldatetime,
			@EVENTO nvarchar (100)
			
)
as
begin
INSERT INTO LOG_EVENTI
           (chiaveDIPENDENTE,
		    DATAORA,
		    EVENTO)
VALUES
           (@chiaveDIPENDENTE,
		   @DATAORA,
		   @EVENTO)
end
GO
/****** Object:  StoredProcedure [dbo].[spEVENTI_SelectAll]    Script Date: 03/02/2023 15:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEVENTI_SelectAll]
AS
BEGIN
SELECT chiave,
	   chiaveDIPENDENTE,
	   DATAORA,
	   EVENTO

      
  FROM LOG_EVENTI
	
END

GO
