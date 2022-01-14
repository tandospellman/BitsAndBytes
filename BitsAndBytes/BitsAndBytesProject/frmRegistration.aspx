<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRegistration.aspx.cs" Inherits="BitsAndBytesProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h1>Create your account - Register</h1>
    <br />
    <br />
    <div class="card">

    <div class="border">
        <div class="displayline">
            <input type="text"  name="name" value="" placeholder="Name" runat="server" />
        </div>  
        <div class="displayline">
            <input type="text"  name="surname" placeholder="Surname" value="" runat="server" />
        </div>
         <div class="displayline">
            <input type="text"  name="emailAddress" placeholder="Email Address" value="" runat="server" />
        </div>
    </div>
    <br />
    <div class="border">
        <div class="displayline">
            <input type="text"  name="password" value="" placeholder="Enter Password" runat="server" />
        </div>  
        <div class="displayline">
            <input type="text"  name="verifyPassword" value="" placeholder="Verify Password" runat="server" />
        </div>
    </div>
    <br />
    <br />
    <div class="border">
        <div class="displayline">
            <asp:Button ID="btnSubmit" Width="180px" CssClass="btn btn-primary" Text="Submit" runat="server" />
        </div>
    </div>
   
    </div>--%>
    <div class="loginCard">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Registration (Student Account)</h1>
    <section>
        <div class="border">
        <div class="displayline">
            <div class="input-container">
                 <input type="text" runat="server" id="name" required="required"/>
                 <label for="name">Name</label>
        <div class="bar"></div>
      </div>
        </div>
        <div class="displayline">
            <div class="input-container">
        <input type="text" runat="server" id="Surname" required="required"/>
        <label for="surname">Surname</label>
        <div class="bar"></div>
                </div>
                </div>
                <div class="displayline">
            <div class="input-container">
        <input type="text" runat="server" id="emailAddress" required="required"/>
        <label for="emailAddress">Email</label>
        <div class="bar"></div>
      </div>

        </div>
        </div>

         <div class="border">
        <div class="displayline">
            <div class="input-container">
                 <input type="password" id="password" required="required"/>
                 <label for="password">Password</label>
        <div class="bar"></div>
      </div>
        </div>
        <div class="displayline">
            <div class="input-container">
        <input type="password" id="verifyPassword" required="required"/>
        <label for="verifyPassword">Verify</label>
        <div class="bar"></div>
                </div>
                </div>
             </div>


        <div class="border">
         <div class="button-container">
             <asp:LinkButton ID="btnCreateAccount" OnClick="btnCreateAccount_Click" CssClass="btnClass" runat="server"><span>Create Account</span></asp:LinkButton>
                <%--<button ID="btnRegister" runat="server" OnClick="btnRegister_Click" ><span>Create Account</span></button>--%>
         </div>
      </div>
    </section>
  </div>
  </div>
</asp:Content>
