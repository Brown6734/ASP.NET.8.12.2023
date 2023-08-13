using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

using SE256_Brown_Masterbackend.App_Code;

namespace SE256_Brown_Masterbackend.Backend
{
    public partial class EBookSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] != null && Session["LoggedIn"].ToString() == "TRUE")
            {
                //good ... can stay here
            }
            else
            {
                Response.Redirect("~/Backen/Default.aspx");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            EBook temp = new EBook();

            DataSet ds = temp.SearchEBooks_DS(txtTitle.Text, txtAuthorLast.Text);

            dgResults.DataSource = ds;
            dgResults.DataMember = ds.Tables[0].TableName;
            dgResults.DataBind();

            SqlDataReader dr = null;

            dr = temp.SearchEBooks_DR(txtTitle.Text, txtAuthorLast.Text);

            rptSearch.DataSource = dr;
            rptSearch.DataBind();

            dr = temp.SearchEBooks_DR(txtTitle.Text, txtAuthorLast.Text);

            litResults.Text = "<table>";

            litResults.Text += "<th>Title</th><th>First Name</th><th>Last Name</th><th>Date Published</th><th>Edit Link</th>";

            while (dr.Read())
            {
                litResults.Text +=
                    "<tr>" +
                    "<td>" + dr["Title"].ToString() + "</td>" +
                    "<td>" + dr["AuthorFirst"].ToString() + "</td>" +
                    "<td>" + dr["AuthorLast"].ToString() + "</td>" +
                    "<td>" + dr["DatePublished"].ToString() + "</td>" +
                    "<td>" + "<a href='EBookMgr.aspx?EBook_ID=" + dr["eBook_ID"].ToString() + "'>Edit</a></td>" + "</tr>";
            }

            litResults.Text += "</table>";
        }
    }
}