<%@ Page Title="" Language="C#" MasterPageFile="~/AwazAAwam/master/Home.Master" AutoEventWireup="true" CodeBehind="ImportantLinks.aspx.cs" Inherits="CitizenPortal.AwazAAwam.ImportantLinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#home").removeClass("active");
            $("#contactus").removeClass("active");
            $("#imptlinks").addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <a name="content1"></a>
        <div class="content_txt">
            <div class="container">
                <h3><span>IMPORTANT LINKS</span></h3>
                <h4>Below are the List of Department of J & K.</h4>
                <ul>
                    <li class="col-lg-4"><a target="_blank" href="http://www.jkapd.nic.in/" title="Agriculture Production Department">Agriculture Production Department                            </a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://jkash.nic.in/" title="Animal and Sheep Husbandry Department">Animal and Sheep Husbandry Department                        </a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://www.jkaritrainings.nic.in/" title="ARI, Training's and Stationery & Office Supplies Departments">ARI, Training's and Stationery & Office Supplies Departments </a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://www.jkcac.nic.in/" title="Civil Aviation Department">Civil Aviation Department</a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://jkcooperatives.nic.in/" title="Co-operatives Department">Co-operatives Department</a></li>
                    <li class="col-lg-4">
                        <a href="#" title="Consumer Affairs & Public Distribution Department">Consumer Affairs & Public Distribution Department </a>

                    </li>
                    <li class="col-lg-4"><a href="#" title="Department of Fisheries ">Department of Fisheries</a></li>
                    <li class="col-lg-4">
                    <a target="_blank" href="http://jklaw.nic.in/" title="Department of Law, Justice & Parliamentary Affairs">Department of Law, Justice & Parliamentary Affairs           </a></li>
                    <li class="col-lg-4">
                     <a target="_blank" href="https://www.jkpr.gov.in/" title="Department of Rural Development and Panchayati Raj">Department of Rural Development and Panchayati Raj           </a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://ceojammukashmir.nic.in/" title="Election Department">Election Department</a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://jkestates.nic.in/" title="Estates Department">Estates Department </a></li>
                    <li class="col-lg-4"><a target="_blank" href="#" title="Excise Department">Excise Department </a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://jakfinance.nic.in/" title="Finance Department">Finance Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jkfloriculture.nic.in/" title="Floriculture, Parks and Gardens Department">Floriculture, Parks and Gardens Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jkforest.gov.in/" title="Forest, Environment and Ecology Department">Forest, Environment and Ecology Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="https://jkgad.nic.in/" title="General Administration Department(GAD)">General Administration Department(GAD)</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jkhealth.org" title="Health & Medical Education Department">Health & Medical Education Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jkhighereducation.nic.in/" title="Higher Education Department">Higher Education Department</a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://jkhome.nic.in/" title="Home Department">Home Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jkhudd.gov.in/" title="Housing & Urban Development Department">Housing & Urban Development Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jkindustriescommerce.nic.in/" title="Industries & Commerce Department">Industries & Commerce Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://new.jkdirinf.in/" title="Information & Public Relations Department">Information & Public Relations Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://www.jkit.nic.in/" title="Information Technology Department">Information Technology Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jklabouremp.nic.in/" title="Labour & Employment Department">Labour & Employment Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jkpheirrigation.nic.in/" title="PHE, Irrigation & Flood Control Department ">PHE, Irrigation & Flood Control Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jkplanning.gov.in/" title="Planning & Development Department">Planning & Development Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://www.jkpdd.gov.in/" title="Power Development Department">Power Development Department</a></li>
                    <li class="col-lg-4">
                        <a target="_blank" href="http://jkpwdrb.nic.in/" title="PUBLIC WORKS (R&B) DEPARTMENT">PUBLIC WORKS (R&B) DEPARTMENT</a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://jkrevenue.nic.in/" title="Revenue Department ">Revenue Department</a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://www.jkeducation.gov.in/" title="School Education Department">School Education Department</a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://jksocialwelfare.nic.in/" title="Social Welfare Department">Social Welfare Department</a></li>
                    <li class="col-lg-4"><a target="_blank" href="https://www.jktourism.jk.gov.in/" title="Tourism Department">Tourism Department</a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://jaktrans.nic.in/" title="Transport Department">Transport Department</a></li>
                    <li class="col-lg-4"><a target="_blank" href="https://tribalaffairs.jk.gov.in" title="Tribal Affairs Department">Tribal Affairs Department</a></li>
                    <li class="col-lg-4"><a target="_blank" href="http://www.dteyssjk.nic.in/" title="Youth Services And Sports Department">Youth Services And Sports Department                         </a></li>
                </ul>
                <p class="clearfix"></p>
            </div>
        </div>
    </section>
</asp:Content>