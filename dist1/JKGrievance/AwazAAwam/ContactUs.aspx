<%@ Page Title="" Language="C#" MasterPageFile="~/AwazAAwam/master/Home.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CitizenPortal.AwazAAwam.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#home").removeClass("active");
            $("#imptlinks").removeClass("active");
            $("#contactus").addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <a name="content1"></a>
        <div class="content_txt">
            <div class="container">
                <h3><span>CONTACT US</span></h3>
                <p>For any Queries Please contact to the below Details</p>
                <p>Email: <a href="#" title="Email ID : jk-grievance[at]jk[dot]gov[dot]in">jk-grievance[at]jk[dot]gov[dot]in</a></p>
                <p>
                    Phone Numbers:  (Srinagar)  :    0194-2502596, 2502910, 2483236<br />
                    (Jammu)     :   0191 - 2560109, 2560265, 2560266
                </p>
                <p>Fax- 0194-2501262 (S), 0191-2566182(J)</p>
                <p>
                    District Call Center for Jammu Province : 18005722327 (Monday to Saturday, 9:30 AM - 5:30 PM)
                </p>
                <p>
                    District Call Center for Kashmir Province : 18005722328 (Monday to Saturday, 9:30 AM - 5:30 PM)
                </p>
                <br />
                <h4>JOIN US</h4>
                <a href="https://www.facebook.com/jandkgrievance/" target="_blank" title="Facebook Link" style="border: 1px solid #337ab7; height: 49px; padding: 10px 10px 5px; border-radius: 5px; margin-top: 5px; background-color: #fff; display: inline-block;">
                    <i class="fa fa-facebook fa-2x"></i>FACEBOOK</a>

                <a href="https://twitter.com/jkgrievance" target="_blank" title="Twitter Link" style="border: 1px solid #337ab7; height: 49px; padding: 10px 10px 5px; border-radius: 5px; margin-top: 5px; background-color: #fff; display: inline-block; margin-left: 20px;">
                    <i class="fa fa-twitter fa-2x"></i>TWITTER</a>
            </div>
        </div>
    </section>
</asp:Content>
