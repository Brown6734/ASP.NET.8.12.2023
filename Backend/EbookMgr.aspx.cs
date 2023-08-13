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
    public partial class EbookMgr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] != null && Session["LoggedIn"].ToString() == "TRUE")
            {
                //we can stay here .. they are godo
            }
            else
            {
                Response.Redirect("~/Backend/Default.aspx");
            }

            string strEbook_ID = "";
            int intEbook_ID = 0;

            if ((!IsPostBack) && Request.QueryString["Ebook_ID"] != null)
            {
                strEbook_ID = Request.QueryString["Ebook_ID"].ToString();
                lblEbook_ID.Text = strEbook_ID;

                intEbook_ID = Convert.ToInt32(strEbook_ID);

                EBook temp = new EBook();

                SqlDataReader dr = temp.FindOneEBook(intEbook_ID);
            

                while (dr.Read())
                {
                    txtTitle.Text = dr["Title"].ToString();
                    txtAuthorFirst.Text = dr["AuthorFirst"].ToString();
                    txtAuthorLast.Text = dr["AuthorLast"].ToString();
                    txtAuthorEmail.Text = dr["Email"].ToString();
                    txtPages.Text = dr["Pages"].ToString();
                    txtPrice.Text = dr["Price"].ToString();
                    txtBookmarkPage.Text = dr["BookmarkPage"].ToString();

                    calDatePublished.VisibleDate = DateTime.Parse(dr["DatePublished"].ToString()).Date;
                    calDatePublished.SelectedDate = DateTime.Parse(dr["DatePublished"].ToString()).Date;

                    calRentalExpires.VisibleDate = DateTime.Parse(dr["DateRentalExpires"].ToString()).Date;
                    calRentalExpires.SelectedDate = DateTime.Parse(dr["DateRentalExpires"].ToString()).Date;

                }
            }
            else
            {
                //btnDelete.Visible = false;
                //btnUpdate.Visible = false;
                //btnDelete.Enabled = false;
                //btnUpdate.Enabled = false;

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            EBook temp = new EBook();

            temp.Title = txtTitle.Text;
            temp.AuthorFirst = txtAuthorFirst.Text;
            temp.AuthorLast = txtAuthorLast.Text;
            temp.Email = txtAuthorEmail.Text;
            temp.DatePublished = calDatePublished.SelectedDate;
            temp.DateRentalExpires = calRentalExpires.SelectedDate;


            Int32 intPages = 0;
            if (Int32.TryParse(txtPages.Text, out intPages))
            {
                temp.Pages = intPages;
            }

            Double dblPrice = 0;
            if (Double.TryParse(txtPrice.Text, out dblPrice))
            {
                temp.Price = dblPrice;
            }

            Int32 intBookmarkPage = 0;
            if (Int32.TryParse(txtBookmarkPage.Text, out intBookmarkPage))
            {
                temp.BookmarkPage = intBookmarkPage;
            }


            if (temp.Feedback.Contains("ERROR:"))
            {
                lblFeedback.Text = temp.Feedback;
            }
            else
            {
                lblFeedback.Text = temp.AddARecord();
            }

        }
    }
}