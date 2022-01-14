<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorMaster.Master" AutoEventWireup="true" CodeBehind="frmCreateManager.aspx.cs" Inherits="BitsAndBytesProject.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content-wrapper" style="padding-bottom: 0; margin-bottom: 0;">
        <div class="col-12 grid-margin stretch-card" style="margin-bottom: 0;">
            <div class="card">
                <div class="card-body">
                   CREATE MANAGER PROFILE
                </div>
            </div>
        </div>

        <div class="content-wrapper" style="padding-bottom: 0; margin-bottom: 0;">
            <div class="col-12 grid-margin stretch-card" style="margin-bottom: 0;">
                <div class="card">
                    <div class="card-body">
                        <br />
                        <br />
                        <section>
                            <div class="txtBorder">
                                <div class="displayline">
                                    <div class="input-container">
                                        <input type="text" runat="server" id="name" value="" required="required" />
                                        <label for="name">Name</label>
                                        <div class="bar"></div>
                                    </div>
                                </div>
                                <div class="displayline">
                                    <div class="input-container">
                                        <input type="text" runat="server" id="Surname" value="" required="required" />
                                        <label for="surname">Surname</label>
                                        <div class="bar"></div>
                                    </div>
                                </div>
                                <div class="displayline">
                                    <div class="input-container">
                                        <input type="text" runat="server" id="emailAddress" value="" required="required" />
                                        <label for="emailAddress">Email</label>
                                        <div class="bar"></div>
                                    </div>
                                </div>
                                <div class="displayline">
                                    <div class="input-container">
                                    <asp:DropDownList ID="drpProvinces" OnSelectedIndexChanged="drpProvinces_SelectedIndexChanged" AutoPostBack="true" runat="server" Placeholder="Provinces" Width="150"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="txtBorder">
                                <div class="displayline">
                                    <div class="input-container">
                                        <input type="text" runat="server" id="phone" value="" required="required" />
                                        <label for="phone">Phone</label>
                                        <div class="bar"></div>
                                    </div>
                                </div>
                                <div class="displayline">
                                    <div class="input-container">
                                        <input type="password" id="password" runat="server" value="" required="required" />
                                        <label for="password">Password</label>
                                        <div class="bar"></div>
                                    </div>
                                </div>
                                <div class="displayline">
                                    <div class="input-container">
                                        <input type="password" id="verifyPassword" runat="server" value="" required="required" />
                                        <label for="verifyPassword">Verify</label>
                                        <div class="bar"></div>
                                    </div>
                                </div>
                                <div class="displayline">
                                    <div class="input-container">

                                    <asp:DropDownList ID="drpRegion" AutoPostBack="true" runat="server" Placeholder="Regions" Width="150"></asp:DropDownList>
                                </div>
                                </div>
                            </div>
                            <div class="txtBorder">
                                <div>
                                    <asp:Button ID="btnCreateManager" OnClick="btnCreateManager_Click" runat="server" CssClass="btn btn-primary mr-2 updateButton" Text="Create Manager Account" />
                                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label> </div>
                            </div>

                        </section>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
