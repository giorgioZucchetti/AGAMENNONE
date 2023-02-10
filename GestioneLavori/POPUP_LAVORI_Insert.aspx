<%@ Page Language="C#" AutoEventWireup="true" CodeFile="POPUP_LAVORI_Insert.aspx.cs" Inherits="POPUP_LAVORI_Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>INSERIMENTO LAVORI</title>
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="col-sm-2">
                <asp:Label ID="Label1" runat="server" class="form-label" Text="Commessa:"></asp:Label>
                <asp:DropDownList ID="ddlCOMMESSA" runat="server" DataSourceID="sdsCOMMESSA" DataTextField="DESCRIZIONE" DataValueField="chiave"></asp:DropDownList>
                <asp:SqlDataSource ID="sdsCOMMESSA" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spCOMMESSE_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
            <div class="col-sm-2">
                <asp:Label ID="Label2" runat="server" class="form-label" Text="Dipendente:"></asp:Label>
                <asp:DropDownList ID="ddlDIPENDENTE" runat="server" DataSourceID="sdsDIPENDENTE" DataTextField="EMAIL" DataValueField="chiave"></asp:DropDownList>
                <asp:SqlDataSource ID="sdsDIPENDENTE" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spDIPENDENTI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>

            <div class="row">
                <div class="col-6">
                    <asp:Label ID="Label22" runat="server" class="form-label" Text="Data:"></asp:Label>
                    <asp:TextBox ID="txtData" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col-3">
                    <asp:Label ID="Label3" runat="server" class="form-label" Text="Ore:"></asp:Label>
                    <asp:TextBox ID="txtOre" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-12">
                <asp:Label ID="Label4" runat="server" class="form-label" Text="Descrizione:"></asp:Label>
                <asp:TextBox ID="txtDescrizione" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="col-sm-6">
                <asp:Label ID="Label5" runat="server" class="form-label" Text="Pernottamento:"></asp:Label>
                <asp:TextBox ID="txtPernottamento" class="form-control" runat="server"></asp:TextBox>
            </div>


            <div class="col-sm-6">
                <asp:Label ID="Label6" runat="server" class="form-label" Text="Pasto:"></asp:Label>
                <asp:TextBox ID="txtPasto" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="row">
                <div class="col">
                    <asp:Label ID="Label7" runat="server" class="form-label" Text="Km:"></asp:Label>
                    <asp:TextBox ID="txtKm" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="col">
                    <asp:Label ID="Label8" runat="server" class="form-label" Text="Pedaggi:"></asp:Label>
                    <asp:TextBox ID="txtPedaggi" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <asp:Label ID="Label9" runat="server" class="form-label" Text="Mezzi:"></asp:Label>
                    <asp:TextBox ID="txtMezzi" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-10">
                    <asp:Label ID="Label10" runat="server" class="form-label" Text="Spese Extra:"></asp:Label>
                    <asp:TextBox ID="txtSpeseExtra" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-5">
                <asp:Label ID="Label11" runat="server" class="form-label" Text="Descrizione Spese Extra:"></asp:Label>
                <asp:TextBox ID="txtDescrizioneSpeseExtra" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="text-center mt-2">
                <asp:Button ID="btnInserisci" type="button" runat="server" Text="Inserisci" class="btn btn-primary" />
            </div>

        </div>
    </form>
</body>
</html>
