<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="Dipendenti.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-lg mt-5">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded">
                    <div class="card-header">
                        <h5 class="card-title">Lista Dipendenti</h5>
                    </div>
                    <div class="card-body">
                        <div class="row top-buffer">
                            <div class="col-md-9" style="overflow: auto;">
                                <asp:GridView ID="Griglia" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="sdsSelectDipendenti" OnSelectedIndexChanged="Griglia_SelectedIndexChanged">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                                        <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" SortExpression="chiave" Visible="False"  ></asp:BoundField>
                                        <asp:BoundField DataField="chiaveAZIENDA" HeaderText="chiaveAZIENDA" SortExpression="chiaveAZIENDA" Visible="False"  ></asp:BoundField>
                                        <asp:BoundField DataField="RAGIONESOCIALE" HeaderText="RAGIONESOCIALE" SortExpression="RAGIONESOCIALE"></asp:BoundField>
                                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL"></asp:BoundField>
                                        <asp:BoundField DataField="PWD" HeaderText="PWD" SortExpression="PWD" Visible="False" ></asp:BoundField>
                                        <asp:CheckBoxField DataField="ABILITATO" HeaderText="ABILITATO" SortExpression="ABILITATO"></asp:CheckBoxField>
                                        <asp:CheckBoxField DataField="PRIMOACCESSO" HeaderText="PRIMOACCESSO" SortExpression="PRIMOACCESSO" Visible="False" ></asp:CheckBoxField>
                                        <asp:BoundField DataField="RUOLO" HeaderText="RUOLO" SortExpression="RUOLO"></asp:BoundField>
                                        <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME"></asp:BoundField>
                                        <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME"></asp:BoundField>
                                        <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO"></asp:BoundField>
                                        <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA"></asp:BoundField>
                                        <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP"></asp:BoundField>
                                        <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA"></asp:BoundField>
                                        <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO"></asp:BoundField>
                                        <asp:BoundField DataField="COSTOORARIO" HeaderText="COSTOORARIO" SortExpression="COSTOORARIO"></asp:BoundField>
                                        <asp:BoundField DataField="DATAINIZIORAPPORTO" HeaderText="DATAINIZIORAPPORTO" SortExpression="DATAINIZIORAPPORTO"></asp:BoundField>
                                        <asp:BoundField DataField="DATAFINERAPPORTO" HeaderText="DATAFINERAPPORTO" SortExpression="DATAFINERAPPORTO"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="sdsSelectDipendenti" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spDIPENDENTI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>                     
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
            <!-- Modal Inserisci -->
            <div class="modal" id="modalIns" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <%--Modal header--%>
                        <div class="modal-header">
                            <h4 class="modal-title" id="staticBackdropLabel">Inserisci dati Dipendente</h4>
                            <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body" runat="server">
                            <div class="ratio ratio-1x1">
                                <iframe src="InsDipendentiPopup.aspx"></iframe>
                            </div>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" runat="server" class="btn btn-danger" data-bs-dismiss="modal">Chiudi</button>
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
                            <h4 class="modal-title" id="staticBackdropLabel1">Modifica dati Dipendente</h4>
                            <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body" runat="server">
                            <div class="ratio ratio-1x1">
                                <iframe src="InsDipendentiModPopup.aspx"></iframe>
                            </div>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" runat="server" class="btn btn-danger" data-bs-dismiss="modal">Chiudi</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
