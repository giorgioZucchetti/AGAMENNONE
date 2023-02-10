<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsFattureModPopup.aspx.cs" Inherits="InsFattureModPopup" %>

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
                <div class="col">
                    <asp:Label ID="lblDATAFATTURA" class="form-label" runat="server" Text="Data Fattura"></asp:Label>
                    <asp:TextBox ID="txtDATAFATTURA" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="lblDATASALDO" class="form-label" runat="server" Text="Data Saldo"></asp:Label>
                    <asp:TextBox ID="txtDATASALDO" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Label ID="lblDESCRIZIONE" class="form-label" runat="server" Text="Descrizione"></asp:Label>
                    <asp:TextBox ID="txtDESCRIZIONE" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    <asp:Label ID="lblALIQUOTA" class="form-label" runat="server" Text="Aliquota"></asp:Label>
                    <asp:TextBox ID="txtALIQUOTA" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="text-center mt-2">
            <asp:Button ID="btnModifica" class="btn btn-primary" runat="server" Text="Modifica" />
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>


