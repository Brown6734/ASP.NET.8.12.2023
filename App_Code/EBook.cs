using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SE256_Brown_Masterbackend.App_Code;

//using Week4_Class1;

using System.Data;
using System.Data.SqlClient;

namespace SE256_Brown_Masterbackend.App_Code
{
    public class EBook: Book
    {
        private DateTime dateRentalExpires;
        private int bookmarkPage;

        private int eBook_ID;

        public DateTime DateRentalExpires
        {
            get
            {
                return dateRentalExpires;
            }
            set
            {
                if (ValidationLibrary.IsAFutureDate(value))
                {
                    dateRentalExpires = value;
                }
                else
                {
                    Feedback += "\nERROR: you must enter future dates";
                }
            }
        }

        public Int32 EBook_ID
        {
            get
            {
                return eBook_ID;
            }
            set
            {
                if (value > 0)
                {
                    eBook_ID = value;
                }
                else
                {
                    Feedback += "\nERROR: you enterd an invalid ebook id";
                }
            }
        }

        public int BookmarkPage
        {
            get
            {
                return bookmarkPage;
            }
            set
            {
                if (value >= 0 && value <= Pages)
                {
                    bookmarkPage = value;
                }
                else
                {
                    Feedback += "\nERROR: you entered an invalid page # for bookmark value";
                }
            }
        }

        private string GetConnected()
        {
            return @"Server=sql.neit.edu\studentsqlserver,4500;Database=SE133_CBrown;User Id=SE133_CBrown;Password=008017698;";
        }

        public EBook(): base()
        {
            BookmarkPage = 0;
            DateRentalExpires = DateTime.Now.AddDays(14);
        }

        public string AddARecord()
        {
            string strResult = "";

            SqlConnection Conn = new SqlConnection();

            //finish this later;
            //also figure out Book class error at top/beginning of program

            Conn.ConnectionString = GetConnected();

            string strSQL = "INSERT INTO EBooks (Title, AuthorFirst, AuthorLast, Email, Pages, DatePublished, DateRentalExpires, BookmarkPage) VALUES (@Title, @AuthorFirst, @AuthorLast, @Email, @Pages, @DatePublished, @DateRentalExpires, @BookmarkPage)";

            SqlCommand comm = new SqlCommand();

            comm.CommandText = strSQL;
            comm.Connection = Conn;

                         comm.Parameters.AddWithValue("@Title", Title);
            comm.Parameters.AddWithValue("@AuthorFirst", AuthorFirst);
            comm.Parameters.AddWithValue("@AuthorLast", AuthorLast);
            comm.Parameters.AddWithValue("@Email", Email);
            comm.Parameters.AddWithValue("@Pages", Pages);
            comm.Parameters.AddWithValue("@DatePublished", DatePublished);
            comm.Parameters.AddWithValue("@DateRentalExpires", DateRentalExpires);

            comm.Parameters.AddWithValue("@BookmarkPage", BookmarkPage);

            try
            {
                Conn.Open();

                int intRecs = comm.ExecuteNonQuery();
                strResult = $"SUCCESS: Inserted {intRecs} records";
                Conn.Close();
            }
            catch (Exception err)
            {
                strResult = "ERROR: " + err.Message;
            }
            finally
            {

            }
            return strResult;

        }

        public DataSet SearchEBooks_DS(String strTitle, String strAuthorLast)
        {
            DataSet ds = new DataSet();

            SqlCommand comm = new SqlCommand();

            String strSQL = "SELECT Ebook_ID, Title, AuthorFirst, AuthorLast, DatePublished FROM EBooks WHERE 0=0";

            

            //I have EBook = Ebook_ID
            //incorrect syntax near from here??

            if (strTitle.Length > 0)
            {
                strSQL += " AND Title Like @Title";
                comm.Parameters.AddWithValue("@Title", "%" + strTitle + "%");
            }

            if (strAuthorLast.Length > 0)
            {
                strSQL += " AND AuthorLast LIKE @AuthorLast";
                comm.Parameters.AddWithValue("@AuthorLast", "%" + strAuthorLast + "%");
            }

            SqlConnection conn = new SqlConnection();
            string strConn = GetConnected();
            conn.ConnectionString = strConn;

            comm.Connection = conn;
            comm.CommandText = strSQL;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;

            conn.Open();
            
            da.Fill(ds, "EBooks_Temp");
            conn.Close();

            return ds;
            
        }

        public SqlDataReader SearchEBooks_DR(String strTitle, String strAuthorLast)
        {
            SqlDataReader dr;
            SqlCommand comm = new SqlCommand();

            String strSQL = "SELECT Ebook_ID, Title, AuthorFirst, AuthorLast, DatePublished FROM EBooks WHERE 0=0";

            if (strTitle.Length > 0)
            {
                strSQL += " AND Title LIKE @Title";
                comm.Parameters.AddWithValue("@Title", "%" + strTitle + "%");

            }

            if (strAuthorLast.Length > 0)
            {
                strSQL += " AND AuthorLast LIKE @AuthorLast";
                comm.Parameters.AddWithValue("@AuthorLast", "%" + strAuthorLast + "%");
            }

            SqlConnection conn = new SqlConnection();
            string strConn = GetConnected();
            conn.ConnectionString = strConn;

            comm.Connection = conn;
            comm.CommandText = strSQL;

            conn.Open();
            dr = comm.ExecuteReader();

            return dr;
        }

        public SqlDataReader FindOneEBook(int intEbook_ID)
        {
            //remember for ebook id it is = Ebook_ID

            SqlConnection conn = new SqlConnection();
            SqlCommand comm = new SqlCommand();

            string strConn = GetConnected();

            string sqlString = "SELECT * FROM EBooks WHERE Ebook_ID = @Ebook_ID;";

            conn.ConnectionString = strConn;

            comm.Connection = conn;
            comm.CommandText = sqlString;
            comm.Parameters.AddWithValue("@Ebook_ID", intEbook_ID);

            conn.Open();

            return comm.ExecuteReader();
            

        }
    }
}