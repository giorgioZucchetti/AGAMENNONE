<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="Clienti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <div class="container-lg mt-5">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded" style="background-color: #e4e4e4">
                    <div class="card-header">
                        <h5 class="card-title">Pagina Clienti</h5>
                    </div>
                    <div class="card-body">
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-9" style="overflow: auto;">
                                <asp:GridView ID="Griglia" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="sdsCLIENTI">
                                    <Columns>
                                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Modifica"/>
                                        <asp:BoundField DataField="chiave" HeaderText="chiave" InsertVisible="False" ReadOnly="True" SortExpression="chiave" Visible="False" />
                                        <asp:BoundField DataField="RAGIONESOCIALE" HeaderText="RAGIONE SOCIALE" SortExpression="RAGIONESOCIALE" />
                                        <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO" />
                                        <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA" />
                                        <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP" />
                                        <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA" />
                                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                        <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                                        <asp:BoundField DataField="CODICEFISCALE" HeaderText="CODICE FISCALE" SortExpression="CODICEFISCALE" />
                                        <asp:BoundField DataField="PIVA" HeaderText="P.IVA" SortExpression="PIVA" />
                                        <asp:BoundField DataField="PEC" HeaderText="PEC" SortExpression="PEC" />
                                        <asp:BoundField DataField="CFE" HeaderText="CFE" SortExpression="CFE" />
                                        <asp:BoundField DataField="TITOLARE" HeaderText="TITOLARE" SortExpression="TITOLARE" />
                                        <asp:BoundField DataField="EMAILTITOLARE" HeaderText="EMAIL TITOLARE" SortExpression="EMAILTITOLARE" />
                                        <asp:BoundField DataField="TELTITOLARE" HeaderText="TEL TITOLARE" SortExpression="TELTITOLARE" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="sdsCLIENTI" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spCLIENTI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                          
                            <div class="col-md-3">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h5>
                                            <asp:Label ID="Label4" runat="server" Text="Gestisci"></asp:Label>

                                        </h5>
                                    </div>

                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="up1" runat="server">
                                        <ContentTemplate>
                                            <asp:Button ID="btnInserisci" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal" runat="server" data-bs-backdrop="static" Text="Inserisci" />

                                            <asp:Button ID="btnModifica" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Modifica" />

                                              <asp:Button ID="btnAggiorna" class="btn btn-primary" runat="server" Text="Aggiorna" OnClick="btnAggiorna_Click" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- The Modal INSERIMENTO -->
    <div class="modal" id="myModal" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog <%--modal-dialog-scrollable--%>">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title" id="staticBackdropLabel">Inserisci dati Clienti</h4>
                    <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                </div>

                <!-- Modal body -->
                <div class="modal-body" runat="server">
                    <div class="ratio ratio-1x1">
                        <iframe src="POPUP_CLIENTI_Insert.aspx"></iframe>
                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" runat="server" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- The Modal MODIFICA -->
    <div class="modal" id="myModal1" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title" id="staticBackdropLabel1">Modifica dati Clienti</h4>
                    <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                </div>

                <!-- Modal body -->
                <div class="modal-body" runat="server">
                    <div class="ratio ratio-1x1">
                        <iframe src="POPUP_CLIENTI_Insert.aspx"></iframe>
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

