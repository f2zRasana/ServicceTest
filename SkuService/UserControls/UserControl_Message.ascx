<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_Message.ascx.cs" Inherits="SkuService.UserControls.UserControl_Message" %>
<style>
    .inputstl {
        padding: 9px;
        border: solid 1px #460023;
        outline: 0;
        background: -webkit-gradient(linear, left top, left 25, from(#FFFFFF), color-stop(4%, #FFCEE7), to(#FFFFFF));
        background: -moz-linear-gradient(top, #FFFFFF, #FFCEE7 1px, #FFFFFF 25px);
        box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -moz-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -webkit-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
    }
</style>
<%--/***********************************/--%>

<div class="card shadow" style="border-radius: 20px; color: #603939; direction: rtl">
    <%--Header--%>
    <div class="card-header" style="text-align: right;"></div>
    <h4>سامانه پیام رسانی درون سامانه‌ای</h4>
    <%--Body--%>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered table-responsive">
                <tbody>
                    <tr>
                        <td style="vertical-align: top; width: 15%; padding-top: 5px;">
                            <div id="userPanel" style="text-align: right; direction: rtl; vertical-align: top;">
                                <table style="width: 100%; padding: 10px;" class="table table-striped table-bordered table-hover">
                                    <tbody>
                                        <tr>
                                            <td style="width: 100%; background-color: #ffe6ff; border-color: white" class="rounded-pill"><a class="rounded-pill" style="cursor: pointer;" data-toggle="modal" data-target="#ModalNewMessage"><span class="fa fa-pencil"></span>&nbsp; پیام جدید </a>&nbsp;&nbsp; <span id="ar_4" class="fa fa-caret-square-o-left" style="float: left; color: rgb(28, 128, 172); display: none;"></span></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; background-color: #ffccff; border-color: white" class="rounded-pill"><a class="rounded-pill" style="cursor: pointer;"><span class="fa fa-edit"></span>&nbsp;پیش نویس</a>&nbsp;&nbsp; <span id="ar_1" class="fa fa-caret-square-o-left" style="float: left; color: rgb(28, 128, 172); display: none;"></span></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; background-color: #ffb3ff; border-color: white" class="rounded-pill"><a class="rounded-pill" style="cursor: pointer;"><span class="fa fa-briefcase"></span>&nbsp;صندوق دریافت</a>&nbsp;&nbsp; <span id="ar_2" class="fa fa-caret-square-o-left" style="float: left; color: #1c80ac;"></span></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; background-color: #ff99ff; border-color: white" class="rounded-pill"><a class="rounded-pill" style="cursor: pointer;"><span class="fa fa-send"></span>&nbsp;صندوق ارسال</a>&nbsp;&nbsp; <span id="ar_3" class="fa fa-caret-square-o-left" style="float: left; color: rgb(28, 128, 172); display: none;"></span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                        <td style="width: 85%;">
                            <div id="div_size" style="width: 100%; overflow-x: scroll; overflow-y: hidden;">

                                <div id="MessageList">



                                    <table style="width: 100%; text-align: center; border-collapse: collapse;">
                                        <tbody>
                                            <tr>
                                                <td style="width: 92%; border-color: white;">
                                                    <div class="input-group" style="direction: ltr;">
                                                        <div class="input-group-prepend">
                                                            <asp:LinkButton runat="server" class="input-group-text" BackColor="#875c9b" ForeColor="White" Font-Underline="false"><span class="fa fa-search"></span>&nbsp;جستجــــو</asp:LinkButton>
                                                        </div>
                                                        <asp:TextBox runat="server" type="text" class="form-control" BackColor="#e8dfec" />
                                                    </div>
                                                </td>
                                                <td style="width: 8%; border-color: white;">
                                                    <asp:LinkButton runat="server" ID="a_Return" class="btn-sm btn btn-default" BackColor="#a37eb4" Width="78px">همه <span class="fa fa-reply-all"></span></asp:LinkButton></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <br>
                                    <div>

                                        <%--/*****************************/--%>

                                        <%--           <div>
        <asp:GridView ID="gridView" Width="100%" runat="server" CssClass="table table-bordered table-hover table-responsive" DataKeyNames="ID"
             AutoGenerateColumns="false" HeaderStyle-CssClass="rtl"
             AllowPaging="true" AllowCustomPaging="true">
       <Columns>
           <asp:BoundField DataField="ID" HeaderText="شماره" SortExpression="ID" HeaderStyle-CssClass="" />
           <asp:BoundField DataField="Name" HeaderText="نام" SortExpression="Name" HeaderStyle-CssClass="" />
           <asp:BoundField DataField="FamilyName" HeaderText="نام خانوادگی" SortExpression="Family" HeaderStyle-CssClass="" />    
           </Columns>
           <PagerStyle HorizontalAlign="Center" CssClass="pagination" />
            <EmptyDataTemplate>
                <p>موردی ثبت نشده است</p>
            </EmptyDataTemplate>
            </asp:GridView>

        </div>--%>



                                        <%--/*****************************/--%>
                                    </div>
                                    <div style="text-align: center; width: 100%; margin-top: -10px;">
                                        <br>
                                        <ul class="pagination" id="pager_top">
                                            <li id="previous">
                                                <div></div>
                                            </li>
                                            <li id="NextF">
                                                <div></div>
                                            </li>
                                        </ul>

                                        <input type="hidden" name="ctl01$HiddenField_NumberOfMessages" id="HiddenField_NumberOfMessages" value="0">
                                    </div>


                                    <div class="aspNetHidden">

                                        <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="bA3b71FqvXrFo008yzeNR+TT9QMq0FmfCimD37cjZynmK6ttEEWm30FUuHfbV7u7+Hoy4YzvY3ux2zAO2XBGb0+AFOe8yHTILrLWyRfqHLAsSlk8rn5RMFti1ZIZPcvl">
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>
</div>
<%--/*****************************/--%>


<!-- ModalNewMessage -->
<div class="modal fade" id="ModalNewMessage" role="dialog" style="text-align: right; direction: rtl;">
    <div class="modal-dialog modal-dialog-centered">

        <!-- Modal content-->
        <div class="modal-content" style="overflow-y: auto; max-height: 540px;">
            <div class="modal-body">
                <div id="New_Modal_Content">
                    <p>به: </p>
                    <input name="TextBox_Receiver" type="text" id="TextBox_Receiver" class="form-control inputstl" style="width: 100%;">
                    &nbsp;&nbsp;
                    <asp:LinkButton runat="server" ID="a_Users" class="btn-sm btn btn-outline btn-primary" Style="float: left; background-color: #875c9b" data-toggle="modal" data-target="#Modal_addUsers">افزودن گیرنده</asp:LinkButton>
                    <input type="reset" ID="a_clear" value="پاک کردن آدرس ها" class="btn-sm btn btn-outline btn-default" Style="float: left; background-color: #ba9fc6;">
                    <p>عنوان: </p>
                    <asp:TextBox runat="server" ID="TextBox_Title" class="form-control inputstl" Style="width: 100%;"></asp:TextBox>
                    <p>متن: </p>
                    <textarea class="form-control inputstl" rows="5"></textarea><br />
                    <p>افزودن فایل ضمیمه: </p>
                    <input type="file" name="FileUpload_File" id="FileUpload_File" class="form-control inputstl" style="width: 100%;">
                </div>
                <hr>
                <p style="text-align: center; width: 100%">
                    ضمیمه: &nbsp; &nbsp; <span id="Label_Attachs"></span>
                </p>
            </div>

            <div class="modal-footer" style="text-align: center">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <asp:LinkButton runat="server" class="btn-sm btn btn-info" BackColor="#875c9b">ارسال</asp:LinkButton>
                    <asp:LinkButton runat="server" class="btn-sm btn btn-info" BackColor="#875c9b">انتقال به پیش نویس</asp:LinkButton>
                    <button type="button" class="btn-sm btn btn-defult" data-dismiss="modal" style="background-color: #ba9fc6;" onclick="closeDialog()">انصراف</button>
                </div>
            </div>


        </div>

    </div>
</div>


<%--/*****************Modal_addUsers********************/--%>
<div class="modal fade" id="Modal_addUsers" role="dialog" style="text-align: right; direction: rtl;">
    <div class="modal-dialog modal-dialog-centered">

        <!-- Modal content-->
        <div class="modal-content" style="overflow-y: auto; max-height: 540px;">
            <div class="modal-body">
                <div>
                    <div>
                        <table style="width: 100%">
                            <tbody>
                                <tr>
                                    <td style="width: 20%;">نقش کاربر:</td>
                                    <td style="width: 20%;">کشور:</td>
                                    <td style="width: 15%;">جنسیت:</td>
                                    <td style="width: 25%;">شهر:</td>
                                    <td style="width: 20%;">نام:</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%; vertical-align: top;">
                                        <select name="DropDownList_Roles" id="DropDownList_Roles" style="width: 100%;">
                                            <option value="#">همه</option>
                                            <option value="#">مدیر</option>

                                        </select>
                                    </td>
                                    <td style="width: 20%; vertical-align: top;">
                                        <select name="DropDownList_Contries" id="DropDownList_Contries">
                                            <option value="0">همه</option>
                                            <option value="1">ایران</option>


                                        </select>
                                    </td>
                                    <td style="width: 15%; vertical-align: top;">
                                        <select name="DropDownList_Marital" id="DropDownList_Marital" style="width: 100%;">
                                            <option value="0">همه</option>
                                            <option value="1">مرد</option>
                                            <option value="2">زن</option>

                                        </select>
                                    </td>
                                    <td style="width: 25%; vertical-align: top;">
                                        <input name="TextBox_Address" type="text" id="TextBox_Address" style="height: 26px; width: 100%;">
                                    </td>
                                    <td style="width: 20%; vertical-align: top;">
                                        <input name="TextBox_Name" type="text" id="TextBox_Name" style="height: 26px; width: 100%;">
                                    </td>
                                </tr>
                                <tr id="panelevents" style="border: 1px solid rgb(212, 91, 0); border-radius: 100px; display: none;">
                                    <td colspan="5">
                                        <span style="float: right;">
                                            <input id="Check_Events" type="checkbox" name="Check_Events"></span>&nbsp;
                                            <div id="events" style="float: left;">
                                            </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p style="width: 100%; text-align: center; margin-bottom: 15px; padding-bottom: 30px;">
                            <a id="link_addall" onclick="AddAll();" class="btn-sm btn btn-outline btn-success" style="float: left; display: none;">افزودن همه</a>
                            <a onclick="AddUser();" class="btn-sm btn btn-outline btn-info" style="float: left;">جستجو</a>
                        </p>
                    </div>
                    <div id="UserList">



                        <div style="width: 100%; text-align: center;">
                            <table style="width: 100%">
                                <tbody>
                                    <tr>
                                        <td style="width: 70%;">
                                            <div>




                                                <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
                                                <div class="container-fluid" style="direction: rtl; text-align: center; float: right">
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ViewStateMode="Enabled"
                                                        EnableViewState="true" UpdateMode="Conditional">
                                                        <ContentTemplate>
                                                            <div id="Div_Records" class="panel-body" runat="server">
                                                                <div class="login-panel panel panel-default" style="margin-top: 0px;">
                                                                    <div class="panel-heading" style="direction: rtl">
                                                                    </div>
                                                                    <div class="panel-body">
                                                                        <div class="table-responsive" style="width: 100%; direction: rtl;">
                                                                            <asp:GridView ID="gridView1" Width="100%" runat="server" class=" table table-striped table-bordered table-hover table-responsive" DataKeyNames="ID"
                                                                                AutoGenerateColumns="False" OnPageIndexChanging="gridView1_PageIndexChanging" HeaderStyle-CssClass="rtl" AllowPaging="True" AllowCustomPaging="True" OnSelectedIndexChanged="gridView1_SelectedIndexChanged">
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="ID" HeaderText="#" SortExpression="ID" HeaderStyle-CssClass="alignRight"></asp:BoundField>
                                                                                    <asp:BoundField DataField="Name_Family" HeaderText="نام و نام خانوادگی" SortExpression="ID" HeaderStyle-CssClass="alignRight" ItemStyle-Width="300px"></asp:BoundField>
                                                                                    <asp:BoundField DataField="" HeaderText="" SortExpression="ID" HeaderStyle-CssClass="alignRight" ItemStyle-Width="300px"></asp:BoundField>
                                                                                    <asp:TemplateField ShowHeader="true" HeaderText=" " ItemStyle-Width="150px">
                                                                                        <ItemTemplate>
                                                                                            <asp:LinkButton runat="server" Text="X" CommandName="Select" CausesValidation="true" CssClass="btn-sm btn btn-outline btn-light" ID="LinkButton1"></asp:LinkButton>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>

                                                                                </Columns>
                                                                                <PagerSettings Mode="Numeric" />
                                                                                <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" />
                                                                                <EmptyDataTemplate>
                                                                                    <p>هیچ اطلاعاتی ثبت نشده است </p>
                                                                                </EmptyDataTemplate>
                                                                            </asp:GridView>
                                                                        </div>

                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>


                                            </div>
                                            <br />
                                            <hr />
                                            لیست ارسال:
                                           <hr />
                                            <p style="text-align: justify; width: 100%">
                    <asp:TextBox runat="server" ID="SendLIst_Textbox" class="form-control inputstl" Style="width: 100%;"></asp:TextBox>
                                            </p>
                                            <p>
                                                <a id="a_clear_" class="btn-sm btn btn-outline btn-default" onclick="Clear();" style="float: left;">پاک کردن آدرس ها</a>
                                            </p>
                                            <br>
                                            <br>

                                            <span id="ctl01_Label_EmptyStatus" class="label label-default"></span>

                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>


                    </div>
                </div>
            </div>
            <div class="modal-footer" style="text-align: center">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <button type="button" class="btn-sm btn btn-info" data-dismiss="modal" onclick="addToAddress();">ثبت</button>
                    <button type="button" class="btn-sm btn btn-defult" data-dismiss="modal" onclick="closeDialog2();">انصراف</button>
                </div>
                <br />
                <br />
                <br />
            </div>
        </div>
    </div>
</div>


<%--/*************************************/--%>
<script>
    var x = document.getElementById("ModalNewMessage");
    function closeDialog() {
        x.close();
    }
    var y = document.getElementById("Modal_addUsers");
    function closeDialog2() {
        y.close();
    } 
</script>

<%--/*************************************/--%>  


  


