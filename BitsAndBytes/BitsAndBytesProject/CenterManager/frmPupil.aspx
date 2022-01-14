<%@ Page Title="" Language="C#" MasterPageFile="~/CenterManager/managerMaster.Master" AutoEventWireup="true" CodeBehind="frmPupil.aspx.cs" Inherits="BitsAndBytesProject.CenterManager.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Attendance Register</h4>
                <br />
                <div class="txtBorder">

                <div class="displayline">
                    <label for="drpStatus">Select Center</label>
                </div>
                </div>
                <div class="displayline">
                    <asp:DropDownList ID="drpCenter" runat="server" CssClass="form-control dropdown" Width="200px" OnSelectedIndexChanged="drpCenter_SelectedIndexChanged"  AutoPostBack="true">
                    </asp:DropDownList>
                </div>
                <br />
                <div class="txtBorder">
                    <div class="displayline">
                    <label >Select Activity:</label>
                    </div>
                     <div class="displayline">
                    <label >Select Present Student:</label>
                    </div>
                    </div>
                <div class="txtBorder">
                <div class="displayline">
                    <asp:RadioButtonList ID="rdActivities" CssClass="custom-radio" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="rdActivities_SelectedIndexChanged" runat="server"></asp:RadioButtonList>
                </div>
                <br />
                <div class="displayline">
                <asp:CheckBoxList ID="chkRegister" Visible="true" runat="server" CssClass="custom-checkbox"></asp:CheckBoxList>
                    </div>
                    </div>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Width="200px" Text="Submit Register" OnClick="btnSubmit_Click" CssClass="btn btn-linkedin" />
                <asp:Label runat="server" Visible="false" ID="lblError" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
