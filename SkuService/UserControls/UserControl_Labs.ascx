 <%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_Labs.ascx.cs" Inherits="SkuService.UserControls.UserControl_Labs" %>
<div>
    <asp:DataList ID="ListLabs" runat="server" RepeatColumns="3" Width="100%" RepeatLayout="Table" DataKeyField="ID">
        <ItemTemplate>
            <div class="col-12 col-sm-12 col-md-6 col-lg-4">
                <table class="box" style="width: 200px; height: 200px; margin-top: 10px; margin-bottom: 10px; height: 100px; background-color: #FFFFFF; color: green; border: 1px solid; border-color: green; border-radius: 30px; border-collapse: separate;">
                    <tr>
                        <td>
                          <a href="UserControl_LabsBody.ascx"><p style="width: 100%; text-align: center; font-size: medium;">
                                <asp:Label ID="Label_Title" Text='<%# Eval("Title").ToString()%>' runat="server" CssClass="label label-success " />
                            </p></a> 
                            <hr />
                            <br />
                            <p style="width: 100%; text-align: center;">
                                <asp:Label ID="Label1" Text='<%# Eval("Item1").ToString() %>' runat="server" /><br />
                                <asp:Label ID="Label2" Text='<%# Eval("Item2").ToString() %>' runat="server" /><br />
                                <asp:Label ID="Label3" Text='<%# Eval("Item3").ToString() %>' runat="server" /><br />
                                <asp:Label ID="Label4" Text='<%# Eval("Item4").ToString() %>' runat="server" /><br />
                                <asp:Label ID="Label5" Text='<%# Eval("Item5").ToString() %>' runat="server" /><br />
                                <asp:Label ID="Label6" Text='<%# Eval("Item6").ToString() %>' runat="server" /><br />
                                <asp:Label ID="Label7" Text='<%# Eval("Item7").ToString() %>' runat="server" /><br />
                                <asp:Label ID="Label8" Text='<%# Eval("Item8").ToString() %>' runat="server" /><br />

                            </p>

                        </td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:DataList>
</div>
