<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="CommesseReferenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container-lg mt-5">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded">
                    <div class="card-header">
                        <h5 class="card-title">Lista commesse</h5>
                    </div>
                    <div class="card-body">
                        <div class="row top-buffer">
                            <div class="col-md-9 divTable">
                                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            </div>
                            <div class="col-md-3">
                                <asp:UpdatePanel ID="up1" runat="server">
                                    <contenttemplate>
                                        <asp:Button ID="btnInserisciCommessa" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalInsCommesse" runat="server" data-bs-backdrop="static" Text="Inserisci" />
                                        <asp:Button ID="btnModificaCommessa" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalModCommesse" runat="server" data-bs-backdrop="static" Text="Modifica" />
                                    </contenttemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-lg mt-5">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded">
                    <div class="card-header">
                        <h5 class="card-title">Lista referenti</h5>
                    </div>
                    <div class="card-body">
                        <div class="row top-buffer">
                            <div class="col-md-9 divTable">
                                Quì ci va la tabella
                            </div>
                            <div class="col-md-3">
                                <asp:UpdatePanel ID="up2" runat="server">
                                    <contenttemplate>
                                        <asp:Button ID="btnInserisciReferente" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalInsReferenti" runat="server" data-bs-backdrop="static" Text="Inserisci" />
                                        <asp:Button ID="btnModificaReferente" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalModReferenti" runat="server" data-bs-backdrop="static" Text="Modifica" />
                                    </contenttemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Inserisci Commesse -->
    <div class="modal" id="modalInsCommesse" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <%--Modal header--%>
                <div class="modal-header">
                    <h4 class="modal-title" id="staticBackdropLabel1">Inserisci dati commessa</h4>
                    <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                </div>
                <!-- Modal body -->
                <div class="modal-body" runat="server">
                    <div class="ratio ratio-1x1">
                        <iframe src="InsCommessePopUp.aspx"></iframe>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" runat="server" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Modifica -->
    <div class="modal" id="modalModCommesse" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <%--Modal header--%>
                <div class="modal-header">
                    <h4 class="modal-title" id="staticBackdropLabel2">Modifica dati commessa</h4>
                    <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                </div>
                <!-- Modal body -->
                <div class="modal-body" runat="server">
                    <div class="ratio ratio-1x1">
                        <iframe src="ModCommessePopUp.aspx"></iframe>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" runat="server" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal Inserisci -->
    <div class="modal" id="modalInsReferenti" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel3" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <%--Modal header--%>
                <div class="modal-header">
                    <h4 class="modal-title" id="staticBackdropLabel3">Inserisci dati referenti</h4>
                    <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                </div>
                <!-- Modal body -->
                <div class="modal-body" runat="server">
                    <div class="ratio ratio-1x1">
                        <iframe src="InsReferentiPopUp.aspx"></iframe>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" runat="server" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Modifica -->
    <div class="modal" id="modalModReferenti" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel4" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <%--Modal header--%>
                <div class="modal-header">
                    <h4 class="modal-title" id="staticBackdropLabel4">Modifica dati referenti</h4>
                    <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                </div>
                <!-- Modal body -->
                <div class="modal-body" runat="server">
                    <div class="ratio ratio-1x1">
                        <iframe src="ModReferentiPopUp.aspx"></iframe>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" runat="server" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

