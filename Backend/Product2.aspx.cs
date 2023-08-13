using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SE256_Brown_Masterbackend.App_Code;

namespace SE256_Brown_Masterbackend.Backend
{
    public partial class Products2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] != null && Session["LoggedIn"].ToString() == "TRUE")
            {
                //good stay here
            }
            else
            {
                Response.Redirect("~/Backend/Default.aspx");
            }
        }

        protected void btnpAdd_Click(object sender, EventArgs e)
        {
            Product temp = new Product();

            //temp.thing = txtthing.text;

            //ProductName
            //ProductManu
            //ProductPrice - double
            //Available - bool
            //ProductDesc
            //ManuDate - datetime
            //QuantOnHand - double

            temp.ProductName = lblProduct_ID.Text;
            temp.ProductManu = txtProdManu.Text;
            temp.ProductPrice = double.Parse(txtProdPrice.Text);
            temp.Available = checkAvaiable.Checked;
            temp.ProductDesc = txtProdDescrip.Text;
            temp.ManuDate = calManuDate.SelectedDate;
            temp.QuantOnHand = double.Parse(txtQuantOnHand.Text);

            if (temp.Feedback.Contains("ERROR:"))
            {
                lblFeedback.Text = temp.Feedback;
            }
            else
            {
                lblFeedback.Text = temp.AddARecord();
            }

            //if temp.Feedback.contains ERROR
            //show error

            //else
            //set lblFeedback.txt equal to add a record function/thing

            
            

        }
    }
}