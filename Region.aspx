﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Region.aspx.cs" Inherits="Region" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" Runat="Server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="row">
            <div class="input-field col s12 m12 l12">
                <asp:TextBox runat="Server" ID="txt_region" name="region" type="text" class="validate" length="35"></asp:TextBox>
                <label for="account_circle">Region</label>
            </div>
            <div class="input-field col s12 m12 l12">
                <asp:TextBox runat="Server" ID="txt_numeroRegion" name="numeroRegion" type="text" class="validate" length="2"></asp:TextBox>
                <label for="account_circle">Numeor Region</label>
            </div>
            <div class="row">
                <div class="input-submit">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Button runat="server" type="submit" ID="btn_insert" class="btn waves-effect waves-light deep-orange" name="action" style="left:3%;" OnClick="Button1_Click" Text="Registro" />
                            <br />
                            <asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="orange-text"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
    <div class=" container">
        <asp:GridView CssClass="bordered responsive-table" ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" DataKeyNames="region_id" DataSourceID="SqlDataSource2"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="region_id" Visible="false" HeaderText="region_id" ReadOnly="True" SortExpression="region_id" InsertVisible="False" />
                <asp:BoundField DataField="region_nombre" HeaderText="region" SortExpression="region_nombre" />
                <asp:BoundField DataField="region_ordinal" HeaderText="region_ordinal" SortExpression="region_ordinal" />
            </Columns>
            <PagerSettings FirstPageText="Primera" LastPageText="Ultima" Mode="NumericFirstLast" NextPageText="&gt;" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bd_AdopcionAnimalConnectionString10 %>" SelectCommand="SELECT * FROM [regiones]" DeleteCommand="DELETE FROM regiones WHERE (region_id = @region_id)" UpdateCommand="UPDATE regiones SET region_nombre = @region_nombre, region_ordinal = @region_ordinal WHERE region_id = @region_id"></asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

