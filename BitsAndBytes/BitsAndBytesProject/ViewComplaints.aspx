<%@ Page Language="C#" MasterPageFile="~/liason.Master" AutoEventWireup="true" CodeBehind="ViewComplaints.aspx.cs" Inherits="BitsandBytesProject.ViewComplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Enter student number"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="View complaints" OnClick="Button1_Click" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="StudentNumber" HeaderText="StudentNumber" SortExpression="StudentNumber"></asp:BoundField>
            <asp:BoundField DataField="firstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
            <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" SortExpression="RoomNumber"></asp:BoundField>
            <asp:BoundField DataField="FloorNumber" HeaderText="FloorNumber" SortExpression="FloorNumber"></asp:BoundField>
            <asp:BoundField DataField="ComplaintsDescription" HeaderText="ComplaintsDescription" SortExpression="ComplaintsDescription"></asp:BoundField>
            <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:LifeStyleDBConnectionString6 %>' SelectCommand="sp_GetComplaintsByStudentID" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter SessionField="StudentNumber" DefaultValue="" Name="StudentNumber" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetComplaintsByStudentID" TypeName="DAL.DataAccessLayer">
        <SelectParameters>
            <asp:SessionParameter SessionField="StudentNumber" Name="complaints" Type="Object"></asp:SessionParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
