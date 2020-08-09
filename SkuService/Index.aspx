<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SkuService.Index" %>
<%@ Register Src="~/UserControls/UserControl_Header.ascx" TagPrefix="SKU" TagName="UserControl_Header"%>
<%@ Register Src="~/UserControls/UserControl_Menu.ascx" TagPrefix="SKU" TagName="UserControl_Menu" %>
<%@ Register Src="~/UserControls/UserControl_Footer.ascx" TagPrefix="SKU" TagName="UserControl_Footer" %>
<%@ Register Src="~/UserControls/UserControl_Labs.ascx" TagPrefix="SKU" TagName="UserControl_Labs" %>
<%@ Register Src="~/UserControls/UserControl_Slider.ascx" TagPrefix="SKU" TagName="UserControl_Slider" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="container-fluid">
            <SKU:UserControl_Header ID="UserControl_Header" runat="server" />
        <SKU:UserControl_Menu ID="UserControl_Menu" runat="server"/>
        <SKU:UserControl_Slider runat="server" id="UserControl_Slider" />
        <SKU:UserControl_Labs ID="UserControl_Labs" runat="server" />
        <SKU:UserControl_Footer ID="UserControl_Footer" runat="server"/>
    </form>
<script src="Scripts/jquery-3.5.1.min.js"></script>
<script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
<link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />


</body>
</html>
