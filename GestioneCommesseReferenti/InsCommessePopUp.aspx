<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsCommessePopUp.aspx.cs" Inherits="InsCommessePopUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <asp:Label ID="lblClienti" class="form-label" runat="server" Text="Scegli cliente"></asp:Label>
                <asp:DropDownList class="form-select" ID="ddlCLIENTI" runat="server" DataSourceID="sdsCLIENTI" DataTextField="RAGIONESOCIALE" DataValueField="chiave"></asp:DropDownList>
                <asp:SqlDataSource ID="sdsCLIENTI" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spCLIENTI_SelectAll_DDL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
            <div class="row">
                <asp:Label ID="lblDipendenti" class="form-label" runat="server" Text="Scegli dipendente"></asp:Label>
                <asp:DropDownList class="form-select" ID="ddlDIPENDENTI" runat="server" DataSourceID="sdsDIPENDENTE" DataTextField="nomecognome" DataValueField="chiave"></asp:DropDownList>
                <asp:SqlDataSource ID="sdsDIPENDENTE" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spDIPENDENTI_SelectAll_DDL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>

            <div class="row">
                <asp:Label ID="lblCORPOORA" class="form-label" runat="server" Text="Scegli tipologia commessa"></asp:Label>
                <select id="ddlCORPOORA" runat="server" class="form-select">
                    <option value="C">Corpo</option>
                    <option value="R">Ora</option>
                </select>
            </div>
            <div class="row">
                <div class="col-4">
                    <asp:Label ID="lblDATAAPERTURA" class="form-label" runat="server" Text="Data apertura"></asp:Label>
                    <asp:TextBox ID="txtDATAAPERTURA" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col-4">
                    <asp:Label ID="lblDATACHIUSURA" class="form-label" runat="server" Text="Data chiusura"></asp:Label>
                    <asp:TextBox ID="txtDATACHIUSURA" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col-4">
                    <asp:Label ID="lblDATACONSEGNA" class="form-label" runat="server" Text="Data consegna"></asp:Label>
                    <asp:TextBox ID="txtDATACONSEGNA" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <asp:Label ID="lblDESCRIZIONE" runat="server" Text="Descrizione"></asp:Label>
                <asp:TextBox ID="txtDESCRIZIONE" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="row">
                <div class="col">
                    <asp:Label ID="lblIMPORTOCORPO" class="form-label" runat="server" Text="Importo Corpo"></asp:Label>
                    <asp:TextBox ID="txtIMPORTOCORPO" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="lblIMPORTOORARIO" class="form-label" runat="server" Text="Importo Orario"></asp:Label>
                    <asp:TextBox ID="txtIMPORTOORARIO" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="col">
                    <asp:Label ID="lblANTICIPO" class="form-label" runat="server" Text="Anticipo"></asp:Label>
                    <asp:TextBox ID="txtANTICIPO" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <asp:Label ID="lblPERNOTTAMENTO" class="form-label" runat="server" Text="Pernottamento"></asp:Label>
                    <asp:TextBox ID="txtPERNOTTAMENTO" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="lblPASTO" class="form-label" runat="server" Text="Pasto"></asp:Label>
                    <asp:TextBox ID="txtPASTO" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <asp:Label ID="lblKM" class="form-label" runat="server" Text="Km"></asp:Label>
                    <asp:TextBox ID="txtKM" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="lblPEDAGGI" class="form-label" runat="server" Text="Pedaggi"></asp:Label>
                    <asp:TextBox ID="txtPEDAGGI" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="lblMEZZI" class="form-label" runat="server" Text="Mezzi"></asp:Label>
                    <asp:TextBox ID="txtMEZZI" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="text-center mt-2">
                <asp:Button ID="btnInserisci" class="btn btn-primary" runat="server" Text="Inserisci" OnClick="btnInserisci_Click" />
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
