<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="Aziende.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-lg mt-5">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded" style="background-color: #e4e4e4">
                    <div class="card-header">
                        <h5 class="card-title">Lista aziende</h5>
                    </div>
                    <div class="card-body">
                        <div class="row top-buffer">
                            <div class="col-md-9" style="overflow: auto;">
                                <asp:GridView ID="Griglia" runat="server" AutoGenerateColumns="False" DataSourceID="sdsGrigliaAziende" DataKeyNames="chiave" OnSelectedIndexChanged="Griglia_SelectedIndexChanged">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                                        <asp:BoundField DataField="RAGIONESOCIALE" HeaderText="RAGIONESOCIALE" SortExpression="RAGIONESOCIALE"></asp:BoundField>
                                        <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO"></asp:BoundField>
                                        <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA"></asp:BoundField>
                                        <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP"></asp:BoundField>
                                        <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA"></asp:BoundField>
                                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL"></asp:BoundField>
                                        <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO"></asp:BoundField>
                                        <asp:BoundField DataField="CODICEFISCALE" HeaderText="CODICEFISCALE" SortExpression="CODICEFISCALE"></asp:BoundField>
                                        <asp:BoundField DataField="PIVA" HeaderText="PIVA" SortExpression="PIVA"></asp:BoundField>
                                        <asp:BoundField DataField="PEC" HeaderText="PEC" SortExpression="PEC"></asp:BoundField>
                                        <asp:BoundField DataField="CFE" HeaderText="CFE" SortExpression="CFE"></asp:BoundField>
                                        <asp:BoundField DataField="TITOLARE" HeaderText="TITOLARE" SortExpression="TITOLARE"></asp:BoundField>
                                        <asp:BoundField DataField="EMAILTITOLARE" HeaderText="EMAILTITOLARE" SortExpression="EMAILTITOLARE"></asp:BoundField>
                                        <asp:BoundField DataField="TELTITOLARE" HeaderText="TELTITOLARE" SortExpression="TELTITOLARE"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="sdsGrigliaAziende" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spAZIENDE_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                            <div class="col-md-3">
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:UpdatePanel ID="up1" runat="server">
                                    <ContentTemplate>
                                        <asp:Button ID="btnInserisci" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalIns" runat="server" data-bs-backdrop="static" Text="Inserisci" />
                                        <asp:Button ID="btnModifica" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalMod" runat="server" data-bs-backdrop="static" Text="Modifica" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Inserisci -->
        <div class="modal" id="modalIns" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <%--Modal header--%>
                    <div class="modal-header">
                        <h4 class="modal-title" id="staticBackdropLabel">Inserisci dati azienda</h4>
                        <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body" runat="server">
                        <div class="ratio ratio-1x1">
                            <iframe src="InsAziendePopUp.aspx"></iframe>
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
        <div class="modal" id="modalMod" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <%--Modal header--%>
                    <div class="modal-header">
                        <h4 class="modal-title" id="staticBackdropLabel1">Modifica dati azienda</h4>
                        <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body" runat="server">
                        <div class="ratio ratio-1x1">
                            <iframe src="ModAziendePopUp.aspx"></iframe>
                        </div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" runat="server" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

