<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrazione.aspx.cs" Inherits="Registrazione" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
                                        <h3 class="text-center font-weight-light my-4">Registrazione </h3>
                                    </div>
                                    <div class="card-body">
                                        <%--<div class="row mb-3">--%>
                                        <%--<div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">--%>
                                        <asp:Label ID="lblNOME" runat="server" Text="Nome"></asp:Label>
                                        <asp:TextBox ID="txtNOME" class="form-control" type="text" placeholder="Rossi" runat="server"></asp:TextBox>
                                        <%--   </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">--%>
                                        <asp:Label ID="lblCOGNOME" runat="server" Text="Cognome"></asp:Label>
                                        <asp:TextBox ID="txtCOGNOME" class="form-control" type="text" placeholder="Mario" runat="server"></asp:TextBox>
                                        <%--     </div>
                                                </div>
                                            </div>--%>
                                        <%--<div class="form-floating mb-3">--%>
                                        <asp:Label ID="lblEMAIL" runat="server" Text="E-Mail"></asp:Label>
                                        <asp:TextBox ID="txtEMAIL" class="form-control" runat="server" type="email" placeholder="nome@email.com"></asp:TextBox>
                                        <%--</div>--%>
                                        <%--<div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">--%>
                                        <%--<asp:Label ID="lblPWD" runat="server" Text="Password"></asp:Label>
                                        <asp:TextBox ID="TextBox1" class="form-control" runat="server" type="password" placeholder="Create a password"></asp:TextBox>--%>
                                        <%--  </div>
                                                </div>--%>
                                        <%--<div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPasswordConfirm" type="password" placeholder="Confirm password" />
                                                        <label for="inputPasswordConfirm">Confirm Password</label>
                                                    </div>
                                                </div>--%>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                        <asp:Button ID="btnRegistra" class="btn btn-primary" runat="server" Text="Registrati" />
                                    </div>
                                </div>
                                <div class="card-footer text-center py-3">
                                    <div class="small"><a href="Login.aspx">Se hai già un account, vai a Log-in</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
