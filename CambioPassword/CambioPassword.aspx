<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="CambioPassword.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">Cambio Password</h3>
                                </div>
                                <div class="card-body">
                                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox class="form-control" ID="txtEMAIL" runat="server"></asp:TextBox>
                                    <%--<div class="form-floating mb-3">--%>
                                    <asp:Label ID="lblPWD" runat="server" Text="Inserisci Password"></asp:Label>
                                    <asp:TextBox class="form-control" ID="txtPWD" runat="server"></asp:TextBox>
                                    <%--</div>--%>
                                    <%--<div class="form-floating mb-3">--%>
                                    <asp:Label ID="lblPWDConfirm" runat="server" Text="Conferma password"></asp:Label>
                                    <asp:TextBox class="form-control" ID="txtPWDConfirm" runat="server"></asp:TextBox>
                                    <%--</div>--%>
                                    <%--<div class="form-check mb-3">
                                            <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                            <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                                        </div>--%>
                                    <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                        <asp:Button ID="btnCambioPWD" class="btn btn-primary" runat="server" Text="Cambia Password" OnClick="btnCambioPWD_Click" />

                                        <%--<a class="small" href="password.html">Forgot Password?</a>--%>
                                    </div>
                                </div>
                               <%-- <div class="card-footer text-center py-3">
                                    <div class="small"><a href="Registrazione.aspx">Registrati</a></div>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
</asp:Content>

