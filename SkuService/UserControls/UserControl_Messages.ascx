<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_Messages.ascx.cs" Inherits="SkuService.UserControls.UserControl_Message" %>
<%@ Register Src="~/UserControls/UserControl_NewMessage.ascx" TagPrefix="uc1" TagName="UserControl_NewMessage" %>
<%--/***************************************/--%>
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

<%--/***************************************/--%>
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
                                            <td style="width: 100%; background-color: #ffe6ff; border-color: white" class="rounded-pill"><a data-toggle="modal" data-target="#ModalNewMessage" class="rounded-pill" style="cursor: pointer;"><span class="fa fa-pencil"></span>&nbsp; پیام جدید </a>&nbsp;&nbsp; <span id="ar_4" class="fa fa-caret-square-o-left" style="float: left; color: rgb(28, 128, 172); display: none;"></span></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; background-color: #ffccff; border-color: white" class="rounded-pill"><a onclick="Call(0);" class="rounded-pill" style="cursor: pointer;"><span class="fa fa-edit"></span>&nbsp;پیش نویس</a>&nbsp;&nbsp; <span id="ar_1" class="fa fa-caret-square-o-left" style="float: left; color: rgb(28, 128, 172); display: none;"></span></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; background-color: #ffb3ff; border-color: white" class="rounded-pill"><a onclick="Call(1);" class="rounded-pill" style="cursor: pointer;"><span class="fa fa-briefcase"></span>&nbsp;صندوق دریافت</a>&nbsp;&nbsp; <span id="ar_2" class="fa fa-caret-square-o-left" style="float: left; color: #1c80ac;"></span></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; background-color: #ff99ff; border-color: white" class="rounded-pill"><a onclick="Call(2);" class="rounded-pill" style="cursor: pointer;"><span class="fa fa-send"></span>&nbsp;صندوق ارسال</a>&nbsp;&nbsp; <span id="ar_3" class="fa fa-caret-square-o-left" style="float: left; color: rgb(28, 128, 172); display: none;"></span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                        <td style="width: 85%;">
                            <div id="div_size" style="width: 100%; overflow-x: scroll; overflow-y: hidden;">

                                <div id="MessageList">
                                    <div class="aspNetHidden">
                                        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="vtwApRZ7W63v+TdPHjFSnFBFSF6vspSBla7cKwV7oEKJhjCBhrEOF8prLaSkc6aohPpYqXhNRHE20CrK8Q5vgyRpflrxfQn14pifRiiqzLJB7bmRQ8eT6OE8r3O007AV">
                                    </div>


                                    <table style="width: 100%; text-align: center; border-collapse: collapse;">
                                        <tbody>
                                            <tr>
                                                <td style="width: 92%; border-color: white;">
                                                    <div class="input-group" style="direction: ltr;">
                                                        <div class="input-group-prepend">
                                                            <asp:LinkButton runat="server" class="input-group-text" BackColor="#b89fc6" Font-Underline="false" ForeColor="Yellow"><span class="fa fa-search"></span>&nbsp;جستجــــو</asp:LinkButton>
                                                        </div>
                                                        <asp:TextBox runat="server" type="text" class="form-control" BackColor="#f3eff6" />
                                                    </div>
                                                </td>
                                                <td style="width: 8%; border-color: white;">
                                                    <asp:LinkButton runat="server" ID="a_Return" class="btn-sm btn btn-default" BackColor="#956eaa" ForeColor="Yellow" Width="78px">همه <span class="fa fa-reply-all"></span></asp:LinkButton></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <br>
                                    <div>

                                        <%--/*****************************/--%>

                                        <div>
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

                                        </div>

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


<%--/**********************************/--%>

<div class="modal" id="ModalNewMessage" style="text-align: right; direction: rtl">
    <div class="modal-dialog">
        <div class="modal-content" style="overflow-y: auto; max-height: 540px;min-width:900px;">


            <!-- Modal body -->
            <div class="modal-body">
                <p>به: </p>
                <asp:TextBox runat="server" name="TextBox_Receiver" type="text" ID="TextBox_Receiver1" class="form-control inputstl" Style="width: 100%;" />
                <br />
                <asp:LinkButton runat="server" ID="a_Users" class="btn-sm btn btn-outline btn-primary" Style="float: left; background-color: #956eaa">افزودن گیرنده</asp:LinkButton>
                <Button runat="server" ID="a_clear" class="btn-sm btn btn-outline btn-default" Style="float: left; background-color: #b89fc6;">پاک کردن آدرس ها</Button>
                <br />
                <br />
                <p>عنوان: </p>
                <asp:TextBox runat="server" name="TextBox_Title" type="text" ID="TextBox_Title" class="form-control inputstl" Style="width: 100%;" />
                <br />
                <p>متن: </p>
                <textarea class="form-control inputstl" rows="5"></textarea>
                <br />

                <p>افزودن فایل ضمیمه: </p>
                <asp:FileUpload runat="server" type="file" name="FileUpload_File" ID="FileUpload_File" class="form-control inputstl" Style="width: 100%; margin-bottom: 2px;" />
                <hr />
                <p style="text-align: center; width: 100%">
                    ضمیمه: &nbsp; &nbsp; <span id="Label_Attachs"></span>
                </p>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer" style="text-align: center">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <asp:LinkButton runat="server" class="btn-sm btn btn-info" BackColor="#956eaa">ارسال</asp:LinkButton>
                    <asp:LinkButton runat="server" class="btn-sm btn btn-info" BackColor="#956eaa">انتقال به پیش نویس</asp:LinkButton>
                    <asp:LinkButton runat="server" ID="Cancelbtn" type="button" class="btn-sm btn btn-defult" data-dismiss="modal" BackColor="#b89fc6">انصراف</asp:LinkButton>
                    <br />
                    <br />
                </div>
            </div>

        </div>
    </div>
</div>

<%--/**********************************/--%>
<script>
    Cancelbtn.onclick = function() {
  modal.style.display = "none";
    }
    </script>