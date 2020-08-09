<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_RefMenu.ascx.cs" Inherits="SkuService.UserControls.UserControl_RefMenu" %>
<style>
    .menu li:hover {
        background-color: #ef5661;
    }

    .hover-submenu a:hover {
        background-color: #ef5661;
        color: white;
    }
</style>

<%-- ******************************************************************** --%>
<div class="row">
    <nav class="navbar navbar-expand-lg navbar-dark col-12 col-sm-12 col-md-12 col-lg-12" style="margin-top: 20px; font-family: 'B Mitra'; font-size: 18px; padding: 0px; background-color: #616161; direction: rtl; text-align: right; float: right;">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="true" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse menu" id="navbarNavDropdown">
            <ul class="navbar-nav">

                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">درباره اداره
                    </a>
                    <ul class="dropdown-menu dropleft hover-submenu" aria-labelledby="navbarDropdownMenuLink" style="text-align: right;">
                        <li class="dropdown-submenu">
                            <a class="dropdown-item" href="#">معرفی اداره</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">ساختار اداره</a>
                        </li>
                    </ul>
                </li>

                <%--/*************************************************************************/--%>    
            </ul>
        </div>
    </nav>
</div>



<%-- ********************************************************************** --%>
<script src="../Scripts/jquery-3.5.1.min.js"></script>
<script src="../Scripts/MenuScript.js"></script>
<link href="../Styles/MenuStyle.css" rel="stylesheet" />
