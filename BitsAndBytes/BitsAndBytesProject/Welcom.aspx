<%@ Page Language="C#" MasterPageFile="~/liason.Master"AutoEventWireup="true" CodeBehind="Welcom.aspx.cs" Inherits="BitsandBytesProject.Welcom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Welcome Provincial Liaison
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="banner-wrapper">
        <div class="container">
            <div id="banner">
                <h2>
                    <script>  
                        var welcome;
                        var date = new Date();
                        var hour = date.getHours();
                        var minute = date.getMinutes();
                        var second = date.getSeconds();
                        if (minute < 10) {
                            minute = "0" + minute;
                        }
                        if (second < 10) {
                            second = "0" + second;
                        }
                        if (hour < 12) {
                            welcome = "good morning";
                        } else if (hour < 17) {
                            welcome = "good afternoon";
                        } else {
                            welcome = "good evening";
                        }
                        document.write(welcome);
                                            
                    </script>
                </h2>
                <span>
                    <asp:Label ID="Name" runat="server"></asp:Label>
                </span>
            </div>
        </div>
    </div>
</asp:Content>
