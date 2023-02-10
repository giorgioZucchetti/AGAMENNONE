<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModReferentiPopUp.aspx.cs" Inherits="ModReferentiPopUp" %>

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
                <div class="col-sm-2">
                    <asp:Label ID="lblCLIENTI" class="form-label" runat="server" Text="Scegli Clienti"></asp:Label>
                    <asp:DropDownList ID="ddlCLIENTE" class="form-select" runat="server"></asp:DropDownList>
                </div>

            </div>
            <div class="row">
                <div class="col-sm-2">
                    <asp:Label ID="lblCOGNOME" class="form-label" runat="server" Text="Cognome"></asp:Label>
                    <asp:TextBox ID="txtCOGNOME" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">

                <div class="col-sm-2">
                    <asp:Label ID="lblNOME" class="form-label" runat="server" Text="Nome"></asp:Label>
                    <asp:TextBox ID="txtNOME" class="form-control" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="row">

                <div class="col-sm-2">
                    <asp:Label ID="lblEMAIL" class="form-label" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEMAIL" class="form-control" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="row">

                <div class="col-sm-2">
                    <asp:Label ID="lblTELEFONO" class="form-label" runat="server" Text="Telefono"></asp:Label>
                    <asp:TextBox ID="txtTELEFONO" class="form-control" runat="server"></asp:TextBox>
                </div>

            </div>
            <div class="text-center mt-2">
                <asp:Button ID="btnInserisci" class="btn btn-primary" runat="server" Text="Inserisci" />
            </div>
        </div>
    </form>
</body>
</html>
