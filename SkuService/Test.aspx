<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="SkuService.Test" %>

<%@ Register Src="~/UserControls/UserControl_Menus.ascx" TagPrefix="uc1" TagName="UserControl_Menus" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="container-fluid">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:UserControl_Menus runat="server" ID="UserControl_Menus" />
        </div>
    </form>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
<script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
<link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</body>
</html>
