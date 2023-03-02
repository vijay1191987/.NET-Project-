<%@ Page Title="" Language="C#" MasterPageFile="~/AwazAAwam/master/Home.Master" AutoEventWireup="true" CodeBehind="ScreenReader.aspx.cs" Inherits="CitizenPortal.AwazAAwam.ScreenReader" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
            $("#home").removeClass("active");
            $("#imptlinks").removeClass("active");
            $("#contactus").removeClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
        <div class="content_txt">
            <div class="container">
                <h3><span>SCREEN READER ACCESS</span></h3>
                <p>J & K Grievance Cell Portal website complies with World Wide Web Consortium (W3C) Web Content Accessibility Guidelines (WCAG) 2.0 level AA. This will enable people with visual impairments access the website using assistive technologies, such as screen readers. The information of the website is accessible with different screen readers.</p>
                <p>Various Screen Readers to choose from</p>
                <div class="table-responsive">
                    <table class="table table-bordered" style="background-color:#fff;">
                    <tbody>
                        <tr>
                            <th title="Screen Reader">Screen Reader</th>
                            <th title="Website">Website</th>
                            <th title="Free / Commercial">Free / Commercial</th>
                        </tr>
                        <tr>
                            <td>Screen Access For All (SAFA)</td>
                            <td><a href="http://safa-reader.software.informer.com/download/" target="_blank" title="External website that opens in a new window">http://safa-reader.software.informer.com/download/</a></td>
                            <td>Free</td>
                        </tr>
                        <tr>
                            <td>Non Visual Desktop Access (NVDA)</td>
                            <td><a href="http://www.nvda-project.org/" target="_blank" title="External website that opens in a new window">
                                http://www.nvda-project.org/</a></td>
                            <td>Free</td>
                        </tr>
                        <tr>
                            <td>System Access To Go</td>
                            <td><a href="http://www.satogo.com/" target="_blank" title="External website that opens in a new window">http://www.satogo.com/</a> </td>
                            <td>Free</td>
                        </tr>
                        <tr>
                            <td>Thunder</td>
                            
                            <td><a href="http://www.screenreader.net/index.php?pageid=11" target="_blank" title="External website that opens in a new window">http://www.screenreader.net/index.php?pageid=11 </a></td>
                            <td>Free</td>
                        </tr>
                        <tr>
                            <td>WebAnywhere</td>
                            <td><a href="http://webanywhere.cs.washington.edu/wa.php" target="_blank" title="External website that opens in a new window">http://webanywhere.cs.washington.edu/wa.php</a></td>
                            <td>Free</td>
                        </tr>
                        <tr>
                            <td>Hal</td>
                            <td><a href="http://www.yourdolphin.co.uk/productdetail.asp?id=5" target="_blank" title="External website that opens in a new window">http://www.yourdolphin.co.uk/productdetail.asp?id=5</a></td>
                            <td>Commercial</td>
                        </tr>
                        <tr>
                            <td>JAWS</td>
                            <td><a href="http://www.freedomscientific.com/jaws-hq.asp" target="_blank" title="External website that opens in a new window">http://www.freedomscientific.com/jaws-hq.asp </a></td>
                            <td>Commercial</td>
                        </tr>
                        <tr>
                            <td>Supernova</td>
                            <td><a href="http://www.yourdolphin.co.uk/productdetail.asp?id=1" target="_blank" title="External website that opens in a new window">http://www.yourdolphin.co.uk/productdetail.asp?id=1</a></td>
                            <td>Commercial</td>
                        </tr>
                        <tr>
                            <td>Window-Eyes</td>
                            <td><a href="http://www.gwmicro.com/Window-Eyes/" target="_blank" title="External website that opens in a new window">http://www.gwmicro.com/Window-Eyes/</a></td>
                            <td>Commercial</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                
                </div>
            </div>
        </section>
</asp:Content>
