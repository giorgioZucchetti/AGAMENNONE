<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="AbDisDipendenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-lg mt-5">
            <div class="row text-center">
                <div class="col-12 mx-auto">
                    <div class="card bg-light mb-3 border rounded">
                        <div class="card-header">
                            <h5 class="card-title">Gestione Dipendenti</h5>
                        </div>
                        <div class="card-body">
                            <div class="row top-buffer">
                                <div class="col-md-9 divTable">
                                    <asp:GridView ID="griglia" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="sdsDipendentiAbilitaorDisabilita">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" SortExpression="chiave" Visible="False" />
                                            <asp:BoundField DataField="chiaveAZIENDA" HeaderText="chiaveAZIENDA" SortExpression="chiaveAZIENDA" Visible="False" />
                                            <asp:BoundField DataField="RAGIONESOCIALE" HeaderText="RAGIONESOCIALE" SortExpression="RAGIONESOCIALE" Visible="False" />
                                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                            <asp:BoundField DataField="PWD" HeaderText="PWD" SortExpression="PWD" Visible="False" />
                                            <asp:CheckBoxField DataField="ABILITATO" HeaderText="ABILITATO" SortExpression="ABILITATO" />
                                            <asp:CheckBoxField DataField="PRIMOACCESSO" HeaderText="PRIMOACCESSO" SortExpression="PRIMOACCESSO" />
                                            <asp:BoundField DataField="RUOLO" HeaderText="RUOLO" SortExpression="RUOLO" />
                                            <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME" />
                                            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                            <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO" Visible="False" />
                                            <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA" Visible="False" />
                                            <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP" Visible="False" />
                                            <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA" Visible="False" />
                                            <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" Visible="False" />
                                            <asp:BoundField DataField="COSTOORARIO" HeaderText="COSTOORARIO" SortExpression="COSTOORARIO" Visible="False" />
                                            <asp:BoundField DataField="DATAINIZIORAPPORTO" HeaderText="DATAINIZIORAPPORTO" SortExpression="DATAINIZIORAPPORTO" Visible="False" />
                                            <asp:BoundField DataField="DATAFINERAPPORTO" HeaderText="DATAFINERAPPORTO" SortExpression="DATAFINERAPPORTO" Visible="False" />
                                        </Columns>
                                    </asp:GridView>

                                    <asp:SqlDataSource ID="sdsDipendentiAbilitaorDisabilita" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spDIPENDENTI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="up1" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="btnAbilita" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalAbi" runat="server" data-bs-backdrop="static" Text="Abilita"/>
                            <asp:Button ID="btnDisabilita" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalDis" runat="server" data-bs-backdrop="static" Text="Disabilita"/>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
</asp:Content>

