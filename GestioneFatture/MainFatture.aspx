<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="MainFatture.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-lg mt-5">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded" style="background-color: #e4e4e4">
                    <div class="card-header">
                        <h5 class="card-title">Pagina Fatture</h5>
                    </div>
                    <div class="card-body">
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-9" style="overflow: auto;">
                                <%--TABELLA TUTTI--%>

                                <asp:GridView ID="Griglia" class="table" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="chiave">
                                    <Columns>
                                        <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" SortExpression="chiave" Visible="False" />
                                        <asp:BoundField DataField="chiaveCOMMESSA" HeaderText="chiaveCOMMESSA" SortExpression="chiaveCOMMESSA" Visible="False" />
                                        <asp:BoundField DataField="NUMERO FATTURA" HeaderText="NUMERO FATTURA" SortExpression="NUMERO FATTURA" />
                                        <asp:BoundField DataField="DATA FATTURA" HeaderText="DATA FATTURA" SortExpression="DATA FATTURA" />
                                        <asp:BoundField DataField="IMPORTO" HeaderText="IMPORTO" SortExpression="IMPORTO" />
                                        <asp:BoundField DataField="ALIQUOTA" HeaderText="ALIQUOTA" SortExpression="ALIQUOTA" />
                                        <asp:BoundField DataField="DESCRIZIONE COMMESSA" HeaderText="DESCRIZIONE COMMESSA" SortExpression="DESCRIZIONE COMMESSA" />
                                        <asp:BoundField DataField="DATASALDO" HeaderText="DATASALDO" SortExpression="DATASALDO" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spFATTURE_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spFATTURE_SelectDate_Interval" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtSTARTDATE" DbType="Date" Name="STARTDATE" PropertyName="Text" />
                                        <asp:ControlParameter ControlID="txtENDDATE" DbType="Date" Name="ENDDATE" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spFATTURE_SelectByYear" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlANNO" Name="YEAR" PropertyName="SelectedValue" Type="Int32" DefaultValue="2020" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spFATTURE_SelectByYearByMonth" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlANNO" Name="ANNO" PropertyName="SelectedValue" Type="Int32" />
                                        <asp:ControlParameter ControlID="ddlMESE" Name="MESE" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spFATTURE_SelectByDataSaldo" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtDATASALDO" DbType="Date" Name="DATASALDO" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>

                                <%--TABELLA INTERVALLO--%>
=======
                                <%--TABELLA--%>

                                <asp:GridView runat="server" class="table" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="chiaveCliente">
                                    <Columns>
                                        <asp:BoundField DataField="chiaveCliente" HeaderText="chiaveCliente" SortExpression="chiaveCliente" InsertVisible="False" ReadOnly="True" />
                                        <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                        <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME" />
                                        <asp:BoundField DataField="RAGIONE_SOCIALE" HeaderText="RAGIONE_SOCIALE" SortExpression="RAGIONE_SOCIALE" />
                                        <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO" />
                                        <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA" />
                                        <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA" />
                                        <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP" />
                                        <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                        <asp:BoundField DataField="DATANASCITA" HeaderText="DATANASCITA" SortExpression="DATANASCITA" />
                                        <asp:BoundField DataField="CODICEFISCALE" HeaderText="CODICEFISCALE" SortExpression="CODICEFISCALE" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ESERCIZIOAUTOSALONEConnectionString %>" SelectCommand="SELECT * FROM [REGISTRAZIONE]"></asp:SqlDataSource>
                            </div>
                            <div class="col-md-3">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h5>
                                            <asp:Label ID="Label4" runat="server" Text="Gestisci"></asp:Label>

                                        </h5>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                        <asp:UpdatePanel ID="up1" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="btnInserisci" class="btn btn-block btn-primary" data-bs-toggle="modal" data-bs-target="#myModal" runat="server" data-bs-backdrop="static" Text="Inserisci" />

                                                <asp:Button ID="btnModifica" class="btn btn-block btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Modifica" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>


                                    </div>
                                </div>
                                <div class="row mt-5">
                                    <div class="col-md-12">
                                        <h5>
                                            <asp:Label ID="Label3" runat="server" Text="Visualizza per intervallo"></asp:Label>

                                        </h5>
                                    </div>
                                </div>


                                <div class="row">

                                    <div class="col-md-6">
                                        <asp:Label ID="Label1" runat="server" Text="Data Inizio"></asp:Label>
                                        <asp:TextBox ID="txtSTARTDATE" class="form-control" runat="server" TextMode="Date"></asp:TextBox>

                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label2" runat="server" Text="Data Fine"></asp:Label>

                                        <asp:TextBox ID="txtENDDATE" class="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-md-12 text-lg-end">

                                        <asp:Button ID="btnCercaIntervallo" class="btn btn-block btn-primary " data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cerca" OnClick="btnCercaIntervallo_Click" />

                                        <asp:Button ID="btnCercaIntervallo" class="btn btn-block btn-primary " data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cerca" />

                                    </div>
                                </div>
                                <div class="row mt-5">
                                    <div class="col-md-12">
                                        <h5>
                                            <asp:Label ID="Label5" runat="server" Text="Visualizza il periodo"></asp:Label>

                                        </h5>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-6">
                                        <asp:Label ID="Label6" runat="server" Text="Anno"></asp:Label>

                                    </div>

                                    <div class="col-md-6">
                                        <asp:Label ID="Label7" runat="server" Text="Mese"></asp:Label>
                                    </div>

                                    <div class="row">

                                        <div class="col-md-6">
                                            <asp:DropDownList ID="ddlANNO" class="btn btn-outline-primary" runat="server" DataSourceID="SqlDataSource6" DataTextField="ANNO" DataValueField="ANNO">
                                                <asp:ListItem Text="" Value="" />
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spFATTURE_AnnoDll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


                                        </div>
                                        <div class="col-md-6">
                                            <asp:DropDownList ID="ddlMESE" class="btn btn-outline-primary" runat="server">

                                                <asp:ListItem></asp:ListItem>

                                                <asp:ListItem Value="1">Gennaio</asp:ListItem>
                                                <asp:ListItem Value="2">Febbraio</asp:ListItem>
                                                <asp:ListItem Value="3">Marzo</asp:ListItem>
                                                <asp:ListItem Value="4">Aprile</asp:ListItem>
                                                <asp:ListItem Value="5">Maggio</asp:ListItem>
                                                <asp:ListItem Value="6">Giugno</asp:ListItem>
                                                <asp:ListItem Value="7">Luglio</asp:ListItem>
                                                <asp:ListItem Value="8">Agosto</asp:ListItem>
                                                <asp:ListItem Value="9">Settembre</asp:ListItem>
                                                <asp:ListItem Value="10">Ottobre</asp:ListItem>
                                                <asp:ListItem Value="11">Novembre</asp:ListItem>
                                                <asp:ListItem Value="12">Dicembre</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                        <asp:DropDownList ID="ddlANNO" class="btn btn-outline-primary" runat="server"></asp:DropDownList>


                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label7" runat="server" Text="Mese"></asp:Label>
                                        <asp:DropDownList ID="ddlMESE" class="btn btn-outline-primary" runat="server"></asp:DropDownList>


                                    </div>
                                </div>



                                <div class="row mt-3">
                                    <div class="col-md-12 text-lg-end">
                                        <asp:Button ID="btnCercaPeriodo" class="btn btn-block btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cerca" OnClick="btnCercaPeriodo_Click" />

                                <div class="row mt-3">
                                    <div class="col-md-12 text-lg-end">
                                        <asp:Button ID="btnCercaPeriodo" class="btn btn-block btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cerca" />

                                    </div>
                                </div>
                                <div class="row mt-5">
                                    <div class="col-md-12">
                                        <h5>
                                            <asp:Label ID="Label8" runat="server" Text="Seleziona per data saldo"></asp:Label>

                                        </h5>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtDATASALDO" class="form-control" runat="server" TextMode="Date"></asp:TextBox>


                                    </div>
                                    <div class="col-md-12 text-lg-end">

                                        <asp:Button ID="btnCercaSaldo" class="btn btn-block btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cerca" OnClick="btnCercaSaldo_Click" />

                                    </div>
                                </div>

                                        <asp:Button ID="btnCercaSaldo" class="btn btn-block btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cerca" />

                                    </div>
                                </div>
                               

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

