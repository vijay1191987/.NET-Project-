<%@ Page Title="" Language="C#" MasterPageFile="~/AwazAAwam/master/Home.Master" AutoEventWireup="true" CodeBehind="Faqs.aspx.cs" Inherits="CitizenPortal.AwazAAwam.Faqs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <a name="content1"></a>
        <div class="content_txt">
            <div class="container">
                <h3><span>FAQ's</span></h3>
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse1" class="fnt2x">What is the purpose and objectives of Grievance Redressal platform portal?</a>
                            </h5>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Purpose: The portal has been created to provide convenience to citizens of the state by allowing them to lodge a grievance through their mobile phones or computers. This removes the need for them to appear at any location and file a physical grievance. In addition, it provides them the facility of tracking the live status of their complaint, and providing feedback based on their satisfaction with the resolution. The system also allows the Chief Minister’s Office (CMO) to closely track all lodged grievances, and ensure that corrective action is taken in each case.</p>
                                <p>Objective: The objective of the portal is to ensure speedy, convenient and effective redressal of citizen issues by the administration.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse2" class="fnt2x">What kind of grievances can I post ?</a>
                            </h5>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Any grievances relating to the functioning of the Government offices in the State can be filed. The grievance could be policy related (Mantralaya Level) or field related (District Level).</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse3" class="fnt2x">What are the types of grievances that are not taken up for redressal by the portal?</a>
                            </h5>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>(a) Sub-judice cases or any matter awaiting judgment from any court,</p>
                                <p>(b) Personal and family disputes that were not raised with the proper authority at block, district or sub-divisional level, and</p>
                                <p>(c) RTI related matters.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse4" class="fnt2x">Can I post a grievance against entities which are outside the purview of State Government (e.g. Railways, Banks, RBI etc.) ?</a>
                            </h5>
                        </div>
                        <div id="collapse4" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>No, grievances pertaining to institutions outside the purview of the State Government should not be filed on this portal.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse5" class="fnt2x">What details do I need to login into the system?</a>
                            </h5>
                        </div>
                        <div id="collapse5" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>You are required to provide your valid email id and mobile number. A One Time Password (OTP) will be sent to the Mobile Number and Email Id which needs to be entered. (This procedure is followed to ensure that the grievance is being filed by a citizen with valid identity.)</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse6" class="fnt2x">While posting a grievance, where can I write my name ?</a>
                            </h5>
                        </div>
                        <div id="collapse6" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>After logging into the system, the user name is pre-populated based on the email id that has been entered at the time of generation of OTP (e.g. if email entered is ABC@xyz.com, the name that is pre-populated will be "ABC"). This name can be modified at the time of filing the grievance, if required.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse7" class="fnt2x">Why do I have to provide details of my District & Taluka ?</a>
                            </h5>
                        </div>
                        <div id="collapse7" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>District & Taluka details are critical since the grievance need to be assigned to the correct/proper district administration for resolution.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse8" class="fnt2x">What is the meaning of 'Nature of Grievance'?</a>
                            </h5>
                        </div>
                        <div id="collapse8" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>This is the subject/area that your grievance relates to. It has already been compiled for each administration type / department and are available in dropdown.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse9" class="fnt2x">What if the subject of my grievance does not match with any of the options in the dropdown 'Nature of grievance' ?</a>
                            </h5>
                        </div>
                        <div id="collapse9" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Please select the option 'Others' in the ‘Nature of grievance' dropdown and state the subject of your grievance in the text box.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse10" class="fnt2x">Can I attach a supporting document along with the grievance ?</a>
                            </h5>
                        </div>
                        <div id="collapse10" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Yes. While submission of grievance, supporting documents (image/pdf) may be uploaded along with your grievance. You need to click on the 'Choose File' button to upload the same.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse11" class="fnt2x">How will I get to know that my grievance has been resolved ?</a>
                            </h5>
                        </div>
                        <div id="collapse11" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>You will receive an automated message on your registered mobile number and email id. You can login to the portal and see the detailed response under section "Track Grievance Status".</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" href="#collapse12" class="fnt2x">Where can I track the grievances already submitted by me ?</a>
                            </h5>
                        </div>
                        <div id="collapse12" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>You can go to the website home page, where a Track Grievance Tab is available. By filling you grievance no. and mobile number you will see all the grievances status submitted by you.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        r
    </section>
</asp:Content>