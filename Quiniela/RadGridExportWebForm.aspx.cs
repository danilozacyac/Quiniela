using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Telerik.Web.UI;

public partial class RadGridExportWebForm : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ExportToPdf_Click(object sender, ImageClickEventArgs e)
    {
        RadGrid1.MasterTableView.ExportToPdf();
    }
}
