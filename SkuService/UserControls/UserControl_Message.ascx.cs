using SKU.BLL.Main;
using SKU.Entities.Main;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkuService.UserControls
{
    public partial class UserControl_Message : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindGridview(0, 3);

            }
        }

        private void BindGridview(int pageIndex, int pageSize)
        {
            try
            {
                int total;
                ReceiverManager receiverManager = new ReceiverManager();
                List<Receivers> allReceivers = receiverManager.SelectAllWithPaging(pageIndex, pageSize, out total);
                gridView1.VirtualItemCount = total;
                gridView1.PageSize = pageSize;
                gridView1.PageIndex = pageIndex;
                gridView1.DataSource = allReceivers;
                gridView1.DataBind();
            }
            catch (Exception exp)
            {

            }
        }

        protected void gridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                int total = 0;
                int pageIndex = e.NewPageIndex;
                ReceiverManager receiverManager = new ReceiverManager();
                List<Receivers> allNews = receiverManager.SelectAllWithPaging(pageIndex, 3, out total);
                gridView1.VirtualItemCount = total;
                gridView1.PageSize = 3;
                gridView1.PageIndex = pageIndex;
                gridView1.DataSource = allNews;
                gridView1.DataBind();
            }
            catch (Exception exp)
            {

            }


        }

        protected void gridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = gridView1.SelectedRow;
            SendLIst_Textbox.Text = gr.Cells[1].Text;

        }
    }
}