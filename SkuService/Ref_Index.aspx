<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ref_Index.aspx.cs" Inherits="SkuService.W_Index" %>

<%@ Register Src="~/UserControls/UserControl_RefHeader.ascx" TagPrefix="SKU" TagName="UserControl_RefHeader" %>
<%@ Register Src="~/UserControls/UserControl_RefMenu.ascx" TagPrefix="SKU" TagName="UserControl_RefMenu" %>
<%@ Register Src="~/UserControls/UserControl_RefSlider.ascx" TagPrefix="SKU" TagName="UserControl_RefSlider" %>
<%@ Register Src="~/UserControls/UserControl_Footer.ascx" TagPrefix="SKU" TagName="UserControl_Footer" %>
<%@ Register Src="~/UserControls/UserControl_RefNews.ascx" TagPrefix="SKU" TagName="UserControl_RefNews" %>








<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>اداره رفاهی</title>
</head>
<body>
    <form id="form1" runat="server" class="container-fluid">
        <SKU:UserControl_RefHeader runat="server" ID="UserControl_RefHeader" />
        <SKU:UserControl_RefMenu runat="server" ID="UserControl_RefMenu" />
        <SKU:UserControl_RefSlider runat="server" ID="UserControl_RefSlider" />
        <SKU:UserControl_RefNews runat="server" ID="UserControl_RefNews" />
        <SKU:UserControl_Footer runat="server" ID="UserControl_Footer" />

    </form>
</body>
</html>
<script src="Scripts/jquery-3.5.1.min.js"></script>
<script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
<link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
