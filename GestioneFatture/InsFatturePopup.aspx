<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsFatturePopup.aspx.cs" Inherits="InsFatturePopup" %>

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
            <div class="row mb-2 mt-1">
                <div class="col-md-6 mb-2">
                    <asp:DropDownList ID="ddlChiaveCOMMESSA" class="btn btn-outline-primary" runat="server" DataSourceID="SqlDataSource2" DataTextField="DESCRIZIONE" DataValueField="chiave"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="FATTURE_SelectCommessaDDL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <asp:Label ID="lblNUMEROFATTURA" class="form-label" runat="server" Text="Numero Fattura"></asp:Label>
                    <asp:TextBox ID="txtNUMEROFATTURA" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="lblIMPORTO" class="form-label" runat="server" Text="Importo"></asp:Label>
                    <asp:TextBox ID="txtIMPORTO" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label1" class="form-label" runat="server" Text="Commessa"></asp:Label>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <asp:Label ID="lblDATAFATTURA" class="form-label" runat="server" Text="Data Fattura"></asp:Label>
                    <asp:TextBox ID="txtDATAFATTURA" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="lblDATASALDO" class="form-label" runat="server" Text="Data Saldo"></asp:Label>
                    <asp:TextBox ID="txtDATASALDO" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col">
                    <asp:Label ID="lblDESCRIZIONE" class="form-label" runat="server" Text="Descrizione"></asp:Label>
                    <asp:TextBox ID="txtDESCRIZIONE" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-3">
                    <asp:Label ID="lblALIQUOTA" class="form-label" runat="server" Text="Aliquota"></asp:Label>
                    <asp:TextBox ID="txtALIQUOTA" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="text-center mt-2">
            <asp:Button ID="btnInserisci" class="btn btn-primary" runat="server" Text="Inserisci" OnClick="btnInserisci_Click" />
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>

