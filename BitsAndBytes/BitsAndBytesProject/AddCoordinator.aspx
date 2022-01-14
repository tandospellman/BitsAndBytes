 <%@ Page Language="C#" MasterPageFile="~/liason.Master" AutoEventWireup="true" CodeBehind="AddCoordinator.aspx.cs" Inherits="BitsandBytesProject.AddCoordinator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
   Add Coordinator

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="bg-info p-2">
            <h1>Reginal Coordinator Details</h1>
        </div>
    <div id="page" class="container">
        <br />
    <div class="tab">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Name:" AssociatedControlID="Name"></asp:Label>
            <asp:TextBox ID="firstname" runat="server" placeholder="Enter Name here..." firstname="firstname" class="form-control"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" ErrorMessage="Name should contain  letters only!" ForeColor="Red" ControlToValidate="Name" ValidationExpression="^[a-zA-Z]+(?:\s[a-zA-Z]+)?"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name can not be empty!" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="surname:" AssociatedControlID="Surname"></asp:Label>
            <asp:TextBox ID="lastname" runat="server" placeholder="Enter surname here..." name="surname" class="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ErrorMessage="Surname should contain  letters only!" ForeColor="Red" ControlToValidate="surname" ValidationExpression="^[a-zA-Z]+(?:\s[a-zA-Z]+)?"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Surname can not be empty!" ControlToValidate="surname" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Email:" AssociatedControlID="Email"></asp:Label>
            <asp:TextBox ID="email" runat="server" placeholder="Enter Email here..." name="Email" class="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ErrorMessage="Invalid Email Address" ForeColor="Red" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email can not be empty!" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div class="form-group">
            <asp:Label ID="lblphone" runat="server" Text="Cellphone Number:" AssociatedControlID="Number"></asp:Label>
            <asp:TextBox ID="contact" runat="server" placeholder="Enter Cellphone number here..." name="phone" class="form-control"></asp:TextBox>
         <asp:RegularExpressionValidator runat="server" ErrorMessage="Invalid Phone number" ForeColor="Red" ControlToValidate="phone"  ValidationExpression="^((?:\+27|27)|0)(\d{2})-?(\d{3})-?(\d{4})$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Cellphone number can not be empty!" ControlToValidate="phone" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Password:" AssociatedControlID="password"></asp:Label>
            <asp:TextBox ID="Password" runat="server" placeholder="Enter Suburb Name here..." name="suburb" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password can not be empty!" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>       
       
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="User Type:" AssociatedControlID="type"></asp:Label>
            <asp:TextBox ID="Type" runat="server" placeholder="Enter User type here..." name="type" class="form-control"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" ErrorMessage="User type should contain letters only!" ForeColor="Red" ControlToValidate="type" ValidationExpression="^[a-zA-Z]+(?:\s[a-zA-Z]+)?"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="User type can not be empty!" ControlToValidate="type" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>       
        
        </div>
        <div class="text-center">
            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Add Coordinator" OnClick="Button1_Click" UseSubmitBehavior="false" OnClientClick="this.disabled='true'; this.value='Adding...';"  />
            
        </div>
        <br />
    </div>
</asp:Content>

