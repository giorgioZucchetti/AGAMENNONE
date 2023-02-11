<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="MainLogs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-lg mt-5">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded" style="background-color: #e4e4e4">
                    <div class="card-header">
                        <h5 class="card-title">Pagina Accessi</h5>
                    </div>
                    <div class="card-body">
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-9" style="overflow: auto;">

                                <asp:GridView ID="grdAccessi" class="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="chiave">
                                    <Columns>
                                        <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" SortExpression="chiave" />
                                        <asp:BoundField DataField="chiaveDIPENDENTE" HeaderText="chiaveDIPENDENTE" SortExpression="chiaveDIPENDENTE" />
                                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                        <asp:BoundField DataField="DATAORA" HeaderText="DATAORA" SortExpression="DATAORA" />
                                        <asp:BoundField DataField="EVENTO" HeaderText="EVENTO" SortExpression="EVENTO" />
                                    </Columns>
                                </asp:GridView>

                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spACCESSI_SelectDate_Interval" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtSTARTDATE" DbType="Date" Name="DATAINIZIO" PropertyName="Text" />
                                        <asp:ControlParameter ControlID="txtENDDATE" DbType="Date" Name="DATAFINE" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spACCESSI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                            </div>

                            <div class="col-md-3">

                                <div class="row">
                                    <div class="col-md-12">
                                        <h5>
                                            <asp:Label ID="Label3" runat="server" Text="Seleziona per data"></asp:Label>

                                        </h5>
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
                                        <div class="col-md-12">
                                            <asp:Button ID="btnCerca" class="btn btn-block btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cerca" OnClick="btnCerca_Click" />

                                        </div>
                                    </div>


                                    <div class="row mt-5">
                                        <div class="col-md-12">
                                            <h5>
                                                <asp:Label ID="Label4" runat="server" Text="Gestisci"></asp:Label>

                                            </h5>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12 mt-1">

                                            <asp:Button ID="btnCancella" class="btn btn-block btn-danger" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cancella tutto" OnClick="btnCancella_Click" />


                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="container-lg mt-5" id="Eventi">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded" style="background-color: #e4e4e4">
                    <div class="card-header">
                        <h5 class="card-title">Pagina Eventi</h5>
                    </div>
                    <div class="card-body">
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-9" style="overflow: auto;">

                                <asp:GridView ID="grdEventi" class="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                                    <Columns>
                                        <asp:BoundField DataField="chiaveDIPENDENTE" HeaderText="chiaveDIPENDENTE" SortExpression="chiaveDIPENDENTE" />
                                        <asp:BoundField DataField="DATAORA" HeaderText="DATAORA" SortExpression="DATAORA" />
                                        <asp:BoundField DataField="EVENTO" HeaderText="EVENTO" SortExpression="EVENTO" />
                                    </Columns>
                                </asp:GridView>

                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spEVENTI_SelectDate_Interval" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtSTARTDATEEVENTI" DbType="Date" Name="DATAINIZIO" PropertyName="Text" />
                                        <asp:ControlParameter ControlID="txtENDDATEEVENTI" DbType="Date" Name="DATAFINE" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AGAMENNONEConnectionString %>" SelectCommand="spEVENTI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                            </div>

                            <div class="col-md-3">

                                <div class="row">
                                    <div class="col-md-12">
                                        <h5>
                                            <asp:Label ID="Label5" runat="server" Text="Seleziona per data"></asp:Label>

                                        </h5>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-6">
                                            <asp:Label ID="Label6" runat="server" Text="Data Inizio"></asp:Label>
                                            <asp:TextBox ID="txtSTARTDATEEVENTI" class="form-control" runat="server" TextMode="Date"></asp:TextBox>

                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="Label7" runat="server" Text="Data Fine"></asp:Label>

                                            <asp:TextBox ID="txtENDDATEEVENTI" class="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mt-3">
                                        <div class="col-md-12">
                                            <asp:Button ID="btnCercaEVENTI" class="btn btn-block btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cerca" OnClick="btnCercaEVENTI_Click" />

                                        </div>
                                    </div>


                                    <div class="row mt-5">
                                        <div class="col-md-12">
                                            <h5>
                                                <asp:Label ID="Label8" runat="server" Text="Gestisci"></asp:Label>

                                            </h5>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-12 mt-1">

                                            <asp:Button ID="btnCancellaEVENTI" class="btn btn-block btn-danger" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cancella tutto" OnClick="btnCancellaEVENTI_Click" />


                                        </div>
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

