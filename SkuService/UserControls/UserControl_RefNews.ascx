<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_RefNews.ascx.cs" Inherits="SkuService.UserControls.UserControl_RefNews" %>
<%--<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 pull-right" style="margin-bottom: 20px; padding: 0px; height: 320px; overflow-y: hidden;">
    <a style="text-decoration: none; cursor: pointer" href="CLab/News/12/جلسه-آموزشی-برای-کارشناسان-آزمایشگاه-های-دانشکده-ها">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-right" style="width: 100%; height: 178px;">
            <asp:ImageButton ID="ImageButton" runat="server" Height="50px" ImageUrl="#" CssClass="img-fluid  img-responsive img-thumbnail" />
        </div>
    </a>
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-right">
        <div style="height: 116px; overflow: hidden;">
            <a style="text-decoration: none; cursor: pointer" href="CLab/News/12/جلسه-آموزشی-برای-کارشناسان-آزمایشگاه-های-دانشکده-ها">
                <span style="font-size: 10px; height: 40px; overflow-y: hidden;">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="B Mitra" Font-Overline="False" Font-Size="13pt" ForeColor="#336699" NavigateUrl="#" Target="_blank"></asp:HyperLink>
                </span>
                <div style="font-size: 10px; margin-top: 10px; text-decoration: none; color: black; height: 60px; overflow-y: hidden;">
                    <asp:Label ID="Label_RN" runat="server" Text="Label"></asp:Label>
                </div>

            </a>

        </div>
        <p style="text-align: left;">
            <span style="color: black; font-size: xx-small;">
                <p>
                    <span class="fa fa-calendar" style="color: #a4a4a4; font-size: x-small;"></span>
                    &nbsp;
                    <span class="label label-default" style="background-color: rgba(0, 0, 0, 0.075); color: black; border-radius: 10px; font-size: small; padding: 2px 5px 2px 5px;">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </span>
                </p>
            </span>

        </p>

    </div>

</div>--%>
<style>
    .text {
        display: block;
        width: 100px;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
    }
</style>

<%--/******************************************--%>
<div class="container-fluid">
    <div class="row" style="margin-right: 15px;">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12" style="text-align: right; margin-top: 20px; font-family: 'B Mitra'; font-size: 22px;">
            <span id="Label_Title" style="border-bottom: 3px solid #e75460; padding-bottom: 10px;">خبرها</span>
        </div>
    </div>
    <br />
    <div class="row" style="font-family: 'B Mitra'; direction: rtl; text-align: right;">
        <div class="col-md-3 col-lg-3">
            <div class="row">
                <div class="col-lg-3">
                    <asp:ImageButton ID="ImageButton" runat="server" Height="50px" ImageUrl="#" CssClass="img-fluid" />
                </div>
                <div class="col-lg-8 text">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="B Mitra" Font-Overline="False" Font-Size="13pt" ForeColor="#336699" NavigateUrl="#" Target="_blank"></asp:HyperLink><br />
                    <asp:Label ID="Label_B1" runat="server" Font-Bold="True" Font-Names="B Mitra" Font-Overline="False" Font-Size="10pt" ForeColor="black" NavigateUrl="#" Target="_blank"></asp:Label>

                    <p>
                        <span class="fa fa-calendar" style="color: #a4a4a4; font-size: x-small;"></span>
                        &nbsp;
                    <span class="label label-default" style="background-color: rgba(0, 0, 0, 0.075); color: black; border-radius: 10px; font-size: small; padding: 2px 5px 2px 5px;">
                        <asp:Label ID="Label_T1" runat="server" Text="Label"></asp:Label>
                    </span>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-lg-3">
            <div class="row">
                <div class="col-lg-3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="#" CssClass="img-fluid" />
                </div>
                <div class="col-lg-8 text">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="B Mitra" Font-Overline="False" Font-Size="13pt" ForeColor="#336699" NavigateUrl="#" Target="_blank"></asp:HyperLink><br />
                    <asp:Label ID="Label_B2" runat="server" Font-Bold="True" Font-Names="B Mitra" Font-Overline="False" Font-Size="10pt" ForeColor="black" NavigateUrl="#" Target="_blank"></asp:Label>

                    <p>
                        <span class="fa fa-calendar" style="color: #a4a4a4; font-size: x-small;"></span>
                        &nbsp;
                    <span class="label label-default" style="background-color: rgba(0, 0, 0, 0.075); color: black; border-radius: 10px; font-size: small; padding: 2px 5px 2px 5px;">
                        <asp:Label ID="Label_T2" runat="server" Text="Label"></asp:Label>
                    </span>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-lg-3">
            <div class="row">
                <div class="col-lg-3">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" ImageUrl="#" CssClass="img-fluid" />
                </div>
                <div class="col-lg-8 text">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="B Mitra" Font-Overline="False" Font-Size="13pt" ForeColor="#336699" NavigateUrl="#" Target="_blank"></asp:HyperLink><br />
                    <asp:Label ID="Label_B3" runat="server" Font-Bold="True" Font-Names="B Mitra" Font-Overline="False" Font-Size="10pt" ForeColor="black" NavigateUrl="#" ></asp:Label>

                    <p>
                        <span class="fa fa-calendar" style="color: #a4a4a4; font-size: x-small;"></span>
                        &nbsp;
                    <span class="label label-default" style="background-color: rgba(0, 0, 0, 0.075); color: black; border-radius: 10px; font-size: small; padding: 2px 5px 2px 5px;">
                        <asp:Label ID="Label_T3" runat="server" Text="Label"></asp:Label>
                    </span>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-lg-3">
            <div class="row">
                <div class="col-lg-3">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" ImageUrl="#" CssClass="img-fluid" />
                </div>
                <div class="col-lg-8 text">
                    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="B Mitra" Font-Overline="False" Font-Size="13pt" ForeColor="#336699" NavigateUrl="#" Target="_blank"></asp:HyperLink><br />
                    <asp:Label ID="Label_B4" runat="server" Font-Bold="True" Font-Names="B Mitra" Font-Overline="False" Font-Size="10pt" ForeColor="black" NavigateUrl="#" Target="_blank"></asp:Label>

                    <p>
                        <span class="fa fa-calendar" style="color: #a4a4a4; font-size: x-small;"></span>
                        &nbsp;
                    <span class="label label-default" style="background-color: rgba(0, 0, 0, 0.075); color: black; border-radius: 10px; font-size: small; padding: 2px 5px 2px 5px;">
                        <asp:Label ID="Label_T4" runat="server" Text="Label"></asp:Label>
                    </span>
                    </p>
                </div>
            </div>
        </div>

    </div>
    <br />
    <br />
    <br />
    <hr style="width: 100%;" />
</div>


<link href="../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="../Scripts/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="../bootstrap-4.3.1/js/bootstrap.min.js"></script>
