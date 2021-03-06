﻿<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Raza.aspx.cs" Inherits="Raza" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="row">
            <div class="input-field col s12 m12 l12">
                <asp:TextBox runat="Server" ID="txt_raza" name="raza" type="text" class="validate" length="35"></asp:TextBox>
                <label for="account_circle">Raza</label>
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
    <div class=" container center-align">
        <asp:GridView CssClass="bordered responsive-table centered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Raza" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id_Raza" Visible="false" HeaderText="id_Raza" ReadOnly="True" SortExpression="id_Raza" />
                <asp:BoundField DataField="Raza" HeaderText="Raza" SortExpression="Raza" HeaderStyle-CssClass=" center" >
<HeaderStyle CssClass=" center"></HeaderStyle>
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bd_AdopcionAnimalConnectionString2 %>" SelectCommand="SELECT * FROM [Raza]" DeleteCommand="DELETE FROM Raza WHERE id_Raza = @id_Raza" UpdateCommand="UPDATE Raza SET Raza = @raza WHERE id_Raza = @id_Raza"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

