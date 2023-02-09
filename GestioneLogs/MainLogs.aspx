﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AGAMENNONE.master" AutoEventWireup="true" CodeFile="MainLogs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-lg mt-5">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded" style="background-color: #e4e4e4">
                    <div class="card-header">
                        <h5 class="card-title">Pagina</h5>
                    </div>
                    <div class="card-body">
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-9" style="overflow: auto;">

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
                                            <asp:Button ID="btnCerca" class="btn btn-block btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cerca" />

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

                                            <asp:Button ID="btnCancella" class="btn btn-block btn-danger" data-bs-toggle="modal" data-bs-target="#myModal1" runat="server" data-bs-backdrop="static" Text="Cancella tutto" />


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

