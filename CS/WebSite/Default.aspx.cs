using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxGridView;



public partial class Editors_ExtLookup : System.Web.UI.Page {

    protected virtual void Page_Load(object sender, EventArgs e) {
        ASPxGridView1.Width = ASPxButtonEdit1.Width;
    }

}
