USE [AGAMENNONE]
GO
/****** Object:  StoredProcedure [dbo].[spLAVORI_Accetta]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spLAVORI_Accetta]
(
        @chiave int
)
as
begin
	UPDATE LAVORI
	SET ACCETTAZIONESPESE = '1'
	WHERE chiave = @chiave
end
GO
/****** Object:  StoredProcedure [dbo].[spLAVORI_Insert]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spLAVORI_Insert]
           (
           @chiaveCOMMESSA int,
           @chiaveDIPENDENTE int,
           @DATAORA smalldatetime,
           @ORE int,
           @DESCRIZIONE ntext,
           @PERNOTTAMENTO decimal(6,2),
           @PASTO decimal(6,2),
           @KM int,
           @PEDAGGI decimal(6,2),
           @MEZZI decimal(8,2),
           @SPESEEXTRA decimal(6,2),
           @DESCRIZIONESPESEEXTRA ntext,
           @ACCETTAZIONESPESE bit
)
AS
BEGIN
	INSERT INTO LAVORI
           (
		    chiaveCOMMESSA
           ,chiaveDIPENDENTE
           ,DATAORA
           ,ORE
           ,DESCRIZIONE
           ,PERNOTTAMENTO
           ,PASTO
           ,KM
           ,PEDAGGI
           ,MEZZI
           ,SPESEEXTRA
           ,DESCRIZIONESPESEEXTRA
           ,ACCETTAZIONESPESE
		   )
     VALUES
           (
		   @chiaveCOMMESSA,
           @chiaveDIPENDENTE,
           @DATAORA,
           @ORE,
           @DESCRIZIONE,
           @PERNOTTAMENTO,
           @PASTO,
           @KM,
           @PEDAGGI,
           @MEZZI,
           @SPESEEXTRA,
           @DESCRIZIONESPESEEXTRA,
           @ACCETTAZIONESPESE
		   )
end
GO
/****** Object:  StoredProcedure [dbo].[spLAVORI_SelectAll]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spLAVORI_SelectAll]
           
AS
BEGIN
	SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[chiaveDIPENDENTE]
      ,[DATAORA]
      ,[ORE]
      ,[DESCRIZIONE]
      ,[PERNOTTAMENTO]
      ,[PASTO]
      ,[KM]
      ,[PEDAGGI]
      ,[MEZZI]
      ,[SPESEEXTRA]
      ,[DESCRIZIONESPESEEXTRA]
      ,[ACCETTAZIONESPESE]
  FROM LAVORI
end
GO
/****** Object:  StoredProcedure [dbo].[spLAVORI_SelectByAccettazioneSpese]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spLAVORI_SelectByAccettazioneSpese]
           (
		   @ACCETTAZIONESPESE bit
		   )
AS
BEGIN
	SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[chiaveDIPENDENTE]
      ,[DATAORA]
      ,[ORE]
      ,[DESCRIZIONE]
      ,[PERNOTTAMENTO]
      ,[PASTO]
      ,[KM]
      ,[PEDAGGI]
      ,[MEZZI]
      ,[SPESEEXTRA]
      ,[DESCRIZIONESPESEEXTRA]
      ,[ACCETTAZIONESPESE]
  FROM LAVORI
  where ACCETTAZIONESPESE = @ACCETTAZIONESPESE
end
GO
/****** Object:  StoredProcedure [dbo].[spLAVORI_SelectByCommessa]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spLAVORI_SelectByCommessa]
           (
		   @chiaveCOMMESSA int
		   )
AS
BEGIN
	SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[chiaveDIPENDENTE]
      ,[DATAORA]
      ,[ORE]
      ,[DESCRIZIONE]
      ,[PERNOTTAMENTO]
      ,[PASTO]
      ,[KM]
      ,[PEDAGGI]
      ,[MEZZI]
      ,[SPESEEXTRA]
      ,[DESCRIZIONESPESEEXTRA]
      ,[ACCETTAZIONESPESE]
  FROM LAVORI
  where chiaveCOMMESSA = @chiaveCOMMESSA
end
GO
/****** Object:  StoredProcedure [dbo].[spLAVORI_SelectByDipendenti_DDL]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spLAVORI_SelectByDipendenti_DDL]
           (
		   @chiaveDIPENDENTE int
		   )
AS
BEGIN
	SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[chiaveDIPENDENTE]
      ,[DATAORA]
      ,[ORE]
      ,[DESCRIZIONE]
      ,[PERNOTTAMENTO]
      ,[PASTO]
      ,[KM]
      ,[PEDAGGI]
      ,[MEZZI]
      ,[SPESEEXTRA]
      ,[DESCRIZIONESPESEEXTRA]
      ,[ACCETTAZIONESPESE]
  FROM LAVORI
  where chiaveDIPENDENTE = @chiaveDIPENDENTE
end
GO
/****** Object:  StoredProcedure [dbo].[spLAVORI_SelectByKey]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spLAVORI_SelectByKey]
          (
		  @chiave int
		  )
AS
BEGIN
	SELECT [chiave]
      ,[chiaveCOMMESSA]
      ,[chiaveDIPENDENTE]
      ,[DATAORA]
      ,[ORE]
      ,[DESCRIZIONE]
      ,[PERNOTTAMENTO]
      ,[PASTO]
      ,[KM]
      ,[PEDAGGI]
      ,[MEZZI]
      ,[SPESEEXTRA]
      ,[DESCRIZIONESPESEEXTRA]
      ,[ACCETTAZIONESPESE]
  FROM LAVORI
  where chiave= @chiave
end
GO
/****** Object:  StoredProcedure [dbo].[spLAVORI_Update]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spLAVORI_Update]
 (
		   @chiave int,
		   @chiaveCOMMESSA int,
           @chiaveDIPENDENTE int,
           @DATAORA smalldatetime,
           @ORE int,
           @DESCRIZIONE ntext,
           @PERNOTTAMENTO decimal(6,2),
           @PASTO decimal(6,2),
           @KM int,
           @PEDAGGI decimal(6,2),
           @MEZZI decimal(8,2),
           @SPESEEXTRA decimal(6,2),
           @DESCRIZIONESPESEEXTRA ntext,
           @ACCETTAZIONESPESE bit
		   )
AS
BEGIN
   UPDATE LAVORI
   SET 
	  chiaveCOMMESSA = @chiaveCOMMESSA,
      chiaveDIPENDENTE = @chiaveDIPENDENTE,
      DATAORA = @DATAORA,
      ORE = @ORE,
      DESCRIZIONE = @DESCRIZIONE,
      PERNOTTAMENTO = @PERNOTTAMENTO,
      PASTO = @PASTO,
      KM = @KM,
      PEDAGGI = @PEDAGGI,
      MEZZI = @MEZZI,
      SPESEEXTRA = @SPESEEXTRA,
      DESCRIZIONESPESEEXTRA = @DESCRIZIONESPESEEXTRA,
      ACCETTAZIONESPESE = @ACCETTAZIONESPESE

 WHERE chiave = @chiave
      
end
GO
/****** Object:  StoredProcedure [dbo].[spREFERENTI_Insert]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spREFERENTI_Insert]
           (
           @COGNOME nvarchar(50),
           @NOME nvarchar(50),
           @EMAIL nvarchar(50),
           @TELEFONO nvarchar(50)
)
AS
BEGIN
	INSERT INTO [dbo].[REFERENTI]
           (
		   COGNOME
           ,NOME
           ,EMAIL
           ,TELEFONO
		   )
     VALUES
	 (
           @COGNOME,
           @NOME,
           @EMAIL,
           @TELEFONO
      )
end
GO
/****** Object:  StoredProcedure [dbo].[spREFERENTI_SelectAll]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spREFERENTI_SelectAll]
           
AS
BEGIN
	  SELECT [chiave]
      ,[chiaveCLIENTE]
      ,[COGNOME]
      ,[NOME]
      ,[EMAIL]
      ,[TELEFONO]
  FROM REFERENTI
      
end
GO
/****** Object:  StoredProcedure [dbo].[spREFERENTI_SelectAll_DDL]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spREFERENTI_SelectAll_DDL]
AS
BEGIN
	Select concat (COGNOME, ' ', NOME) as nomecognome, chiave
	  from REFERENTI
      
end
GO
/****** Object:  StoredProcedure [dbo].[spREFERENTI_SelectByKey]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spREFERENTI_SelectByKey]
           (
		   @chiave int
		   )
AS
BEGIN
	  SELECT 
      [chiaveCLIENTE]
      ,[COGNOME]
      ,[NOME]
      ,[EMAIL]
      ,[TELEFONO]
  FROM REFERENTI
  where chiave = @chiave
      
end
GO
/****** Object:  StoredProcedure [dbo].[spREFERENTI_Update]    Script Date: 03/02/2023 17:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spREFERENTI_Update]
           (
		   @chiave int,
		   @chiaveCLIENTE int,
           @COGNOME nvarchar(50),
           @NOME nvarchar(50),
           @EMAIL nvarchar(50),
           @TELEFONO nvarchar(50)
)
AS
BEGIN
	UPDATE [dbo].[REFERENTI]
   SET
	  chiaveCLIENTE = @chiaveCLIENTE,
      COGNOME = @COGNOME,
      NOME = @NOME, 
      EMAIL = @EMAIL, 
      TELEFONO = @TELEFONO 

 WHERE chiave = @chiave
      
end
GO
