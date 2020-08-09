<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_NewMessage.ascx.cs" Inherits="SkuService.UserControls.UserControl_NewMessage" %>
<div class="modal-content" style="overflow-y: auto; max-height: 540px;">
            <div class="modal-body">
                <div id="New_Modal_Content">
                    <p>به: </p>
                    <asp:TextBox runat="server" name="TextBox_Receiver" type="text" ID="TextBox_Receiver" class="form-control" Style="width: 100%;" />
                    &nbsp;&nbsp; <a id="a_Users" class="btn-sm btn btn-outline btn-primary" style="float: left;">افزودن گیرنده</a>
                    <a id="a_clear" class="btn-sm btn btn-outline btn-default" onclick="Clear();" style="float: left;">پاک کردن آدرس ها</a>
                    <p>عنوان: </p>
                    <asp:TextBox runat="server" name="TextBox_Title" type="text" ID="TextBox_Title" class="form-control" Style="width: 100%;" />
                    <p>متن: </p>
                    <textarea name="TextBox_Message" rows="2" cols="20" id="TextBox_Message" class="ckeditor" style="width: 100%; visibility: hidden; display: none;"></textarea>
                    <p>افزودن فایل ضمیمه: </p>
                    <input type="file" name="FileUpload_File" id="FileUpload_File" class="form-control" style="width: 100%;" />
                </div>
                <hr/>
                <p style="text-align: center; width: 100%">
                    ضمیمه: &nbsp; &nbsp; <span id="Label_Attachs"></span>
                </p>
            </div>
            <div class="modal-footer" style="text-align: center">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <a class="btn-sm btn btn-info">ارسال</a>
                    <a class="btn-sm btn btn-info">انتقال به پیش نویس</a>
                    <button type="button" class="btn-sm btn btn-defult" data-dismiss="modal">انصراف</button>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </div>