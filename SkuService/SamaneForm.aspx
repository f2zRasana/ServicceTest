<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SamaneForm.aspx.cs" Inherits="SkuService.SamaneForm" %>

<%@ Register Src="~/UserControls/UserControl_Message.ascx" TagPrefix="SKU" TagName="UserControl_Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <SKU:UserControl_Message runat="server" ID="UserControl_Message" />

        </div>
    </form>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

</body>
</html>
