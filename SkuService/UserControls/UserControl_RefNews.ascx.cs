using SKU.BLL.Ref;
using SKU.Entities.Ref;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkuService.UserControls
{
    public partial class UserControl_RefNews : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RefNewsManager refNewsManager = new RefNewsManager();
                IList<RefNews> allRefNews = refNewsManager.SelectAll();
                /* 1 */
           
                    ImageButton.ImageUrl = allRefNews[0].FilePathImage;
                    HyperLink1.Text = allRefNews[0].Title;
                    Label_B1.Text = allRefNews[0].Body;
                    Label_T1.Text = allRefNews[0].PulishedDate.ToString("yyyy/mm/dd");
                
                /* 2 */
              ImageButton1.ImageUrl = allRefNews[1].FilePathImage;
                    HyperLink2.Text = allRefNews[1].Title;
                    Label_B2.Text = allRefNews[1].Body;
                    Label_T2.Text = allRefNews[1].PulishedDate.ToString("yyyy/mm/dd");
                
                /* 3 */

                    ImageButton2.ImageUrl = allRefNews[2].FilePathImage;
                    HyperLink3.Text = allRefNews[2].Title;
                    Label_B3.Text = allRefNews[2].Body;
                    Label_T3.Text = allRefNews[2].PulishedDate.ToString("yyyy/mm/dd");
                /* 4 */

                    ImageButton3.ImageUrl = allRefNews[3].FilePathImage;
                    HyperLink4.Text = allRefNews[3].Title;
                    Label_B4.Text = allRefNews[3].Body;
                    Label_T4.Text = allRefNews[3].PulishedDate.ToString("yyyy/mm/dd");
            }
        }
    }
}