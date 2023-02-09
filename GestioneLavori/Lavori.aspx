<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="Lavori.aspx.cs" Inherits="Default2" %>

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
                        <h5 class="card-title">Pagina Lavori</h5>
                    </div>
                    <div class="card-body">
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-9" style="overflow: auto;">
                                <asp:GridView ID="Griglia" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="ddlLAVORI">
                                    <Columns>
                                        <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" SortExpression="chiave" />
                                        <asp:BoundField DataField="chiaveCOMMESSA" HeaderText="chiaveCOMMESSA" SortExpression="chiaveCOMMESSA" />
                                        <asp:BoundField DataField="chiaveDIPENDENTE" HeaderText="chiaveDIPENDENTE" SortExpression="chiaveDIPENDENTE" />
                                        <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME" />
                                        <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                        <asp:BoundField DataField="DATAAPERTURA" HeaderText="DATAAPERTURA" SortExpression="DATAAPERTURA" />
                                        <asp:BoundField DataField="DATACHIUSURA" HeaderText="DATACHIUSURA" SortExpression="DATACHIUSURA" />
                                        <asp:BoundField DataField="DATAORA" HeaderText="DATAORA" SortExpression="DATAORA" />
                                        <asp:BoundField DataField="ORE" HeaderText="ORE" SortExpression="ORE" />
                                        <asp:BoundField DataField="DESCRIZIONE" HeaderText="DESCRIZIONE" SortExpression="DESCRIZIONE" />
                                        <asp:BoundField DataField="PERNOTTAMENTO" HeaderText="PERNOTTAMENTO" SortExpression="PERNOTTAMENTO" />
                                        <asp:BoundField DataField="PASTO" HeaderText="PASTO" SortExpression="PASTO" />
                                        <asp:BoundField DataField="KM" HeaderText="KM" SortExpression="KM" />
                                        <asp:BoundField DataField="PEDAGGI" HeaderText="PEDAGGI" SortExpression="PEDAGGI" />
                                        <asp:BoundField DataField="MEZZI" HeaderText="MEZZI" SortExpression="MEZZI" />
                                        <asp:BoundField DataField="SPESEEXTRA" HeaderText="SPESEEXTRA" SortExpression="SPESEEXTRA" />
                                        <asp:BoundField DataField="DESCRIZIONESPESEEXTRA" HeaderText="DESCRIZIONESPESEEXTRA" SortExpression="DESCRIZIONESPESEEXTRA" />
                                        <asp:CheckBoxField DataField="ACCETTAZIONESPESE" HeaderText="ACCETTAZIONESPESE" SortExpression="ACCETTAZIONESPESE" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="ddlLAVORI" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spLAVORI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
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
                    <h4 class="modal-title" id="staticBackdropLabel">Inserisci dati Lavori</h4>
                    <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                </div>

                <!-- Modal body -->
                <div class="modal-body" runat="server">
                    <div class="ratio ratio-1x1">
                        <iframe src="POPUP_LAVORI_Insert.aspx"></iframe>
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
                    <h4 class="modal-title" id="staticBackdropLabel1">Modifica dati Lavori</h4>
                    <%--<button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                </div>

                <!-- Modal body -->
                <div class="modal-body" runat="server">
                    <div class="ratio ratio-1x1">
                        <iframe src="POPUP_LAVORI_Update.aspx"></iframe>
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

