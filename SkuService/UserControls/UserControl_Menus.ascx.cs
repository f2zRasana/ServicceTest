using SKU.BLL.Labs;
using SKU.BLL.Ref;
using SKU.Entities;
using SKU.Entities.Labs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SkuService.UserControls
{
    public partial class UserControl_Menus : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LabManager labManager = new LabManager();
                List<Lab> allLabs = labManager.SelectAll();

                RefPartsManager refPartsManager = new RefPartsManager();
                List<Parts> allParts = refPartsManager.SelectAll();


                for (int i = 0; i < allLabs.Count; i++)
                {
                    if (allLabs[i].Item1 == null)
                        allLabs[i].Item1 = " ";

                    if (allLabs[i].Item2 == null)
                        allLabs[i].Item2 = " ";

                    if (allLabs[i].Item3 == null)
                        allLabs[i].Item3 = " ";

                    if (allLabs[i].Item4 == null)
                        allLabs[i].Item4 = " ";

                    if (allLabs[i].Item5 == null)
                        allLabs[i].Item5 = " ";

                    if (allLabs[i].Item6 == null)
                        allLabs[i].Item6 = " ";

                    if (allLabs[i].Item7 == null)
                        allLabs[i].Item7 = " ";


                }
                for (int i = 0; i < allParts.Count; i++)
                {
                    if (allParts[i].Item1 == null)
                        allParts[i].Item1 = " ";

                    if (allParts[i].Item2 == null)
                        allParts[i].Item2 = " ";

                    if (allParts[i].Item3 == null)
                        allParts[i].Item3 = " ";

                    if (allParts[i].Item4 == null)
                        allParts[i].Item4 = " ";
                }

                ListLabs.DataSource = allLabs;
                ListLabs.DataBind();
                ListParts.DataSource = allParts;
                ListParts.DataBind();

            }
        }

        protected void ListLabs_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            for (int i = 1; i < 8; i++)
            {

                if (((Label)e.Item.FindControl("Label" + i.ToString())).Text == " ")
                {
                    ((Label)e.Item.FindControl("Label_" + i.ToString())).Visible = false;
                }
                if (((Label)e.Item.FindControl("L" + i.ToString())).Text == " ")
                {
                    ((Label)e.Item.FindControl("LT" + i.ToString())).Visible = false;
                }


            }
        }
        }
    }
