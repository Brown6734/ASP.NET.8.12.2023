using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Chloe Brown
/// Lab #7
/// C Sharp
/// drill down-search lab
/// The name of the lab is:Lab 7 - Drill-Down Searches from a DB (PersonV2)
/// 
/// BUT 
/// The lab document (word doc) does not mention the word "Person" at all
/// INSTEAD
/// it talks about items/products
/// /narrowing things down to one specific item/product
/// </summary>

namespace SE256_Brown_Masterbackend
{
    class Product
    {
        ///product name
        ///product manufacturer
        ///product price
        ///available
        ///product description
        ///manufactured date
        ///feedback
        ///QOH - int
        ///


        private string productName;
        private string productManu;
        private double productPrice;
        private bool available;
        private string productDesc;
        private DateTime manuDate;
        private string feedback = "";
        private double quantOnHand;

        ///gets and sets
        ///

        public string ProductName
        {
            ///check for bad words
            ///
            get
            {
                return productName;
            }
            set
            {
                if (!ValidationLibrary.GotBadWords(value))
                {
                    productName = value;
                }
                else
                {
                    feedback += "\nERROR: The produc t name contains at least one Bad Word.";
                }

            }
        }

        public string ProductManu
        {
            get
            {
                return productManu;
            }
            set
            {
                productManu = value;
            }
        }

        ///need one for priice
        ///

        public double ProductPrice
        {
            get
            {
                return productPrice;
            }

            set
            {
                if (ValidationLibrary.IsMinimumAmount(value, 0) == true)
                {
                    productPrice = value;
                }
                else
                {
                    feedback += "\nERROR: you entered an invalid amount for the product price.";
                }
            }
        }

        public bool Available
        {
            get
            {
                return available;
            }
            set
            {
                available = value;
            }
        }

        public string ProductDesc
        {
            get
            {
                return productDesc;
            }
            set
            {
                productDesc = value;
            }
        }

        ///manufactured date
        ///

        public DateTime ManuDate
        {
            get
            {
                return manuDate;
            }
            set
            {
                if (ValidationLibrary.IsAFutureDate(value) == false)
                {
                    manuDate = value;
                }
                else
                {
                    feedback += "\nERROR: you must enter past dates for the manufactured date.";
                }
            }
        }

        public string Feedback
        {
            get
            {
                return feedback;
            }
            set
            {
                feedback = value;
            }
        }

        public double QuantOnHand
        {
            get
            {
                return quantOnHand;
            }
            set
            {
                quantOnHand = value;
            }
        }


        /// <summary>
        /// data set part below
        /// what using to search:
        /// product name; product manu?
        /// available?

        /// <summary>
        /// data reader part below
        /// 

        public string AddARecord()
        {
            //Init string var
            string strResult = "";

            //Make a connection object
            SqlConnection Conn = new SqlConnection();

            //Initialize it's properties
            Conn.ConnectionString = @GetConnected();     //Set the Who/What/Where of DB


            //*******************************************************************************************************
            string strSQL = "INSERT INTO Products3 (ProductName, ProductManu, ProductPrice, Available, ProductDesc, ManuDate, QuantOnHand) VALUES (@ProductName, @ProductManu, @ProductPrice, @Available, @ProductDesc, @ManuDate, @QuantOnHand)";
            // Bark out our command
            SqlCommand comm = new SqlCommand();
            comm.CommandText = strSQL;  //Commander knows what to say
            comm.Connection = Conn;     //Where's the phone?  Here it is

            //Fill in the paramters (Has to be created in same sequence as they are used in SQL Statement)
            comm.Parameters.AddWithValue("@ProductName", ProductName);
            comm.Parameters.AddWithValue("@ProductManu", ProductManu);
            comm.Parameters.AddWithValue("@ProductPrice", ProductPrice);
            comm.Parameters.AddWithValue("@Available", Available);
            comm.Parameters.AddWithValue("@ProductDesc", ProductDesc);
            comm.Parameters.AddWithValue("@ManuDate", ManuDate);
            comm.Parameters.AddWithValue("@QuantOnHand", QuantOnHand);
            

            //*******************************************************************************************************

            //attempt to connect to the server
            try
            {
                Conn.Open();                                        //Open connection to DB - Think of dialing a friend on phone
                int intRecs = comm.ExecuteNonQuery();
                strResult = $"SUCCESS: Inserted {intRecs} records.";       //Report that we made the connection and added a record
                Conn.Close();                                       //Hanging up after phone call
            }
            catch (Exception err)                                   //If we got here, there was a problem connecting to DB
            {
                strResult = "ERROR: " + err.Message;                //Set feedback to state there was an error & error info
            }
            finally
            {

            }

            //Return resulting feedback string
            return strResult;
        }

        public DataSet SearchProducts3(String strProdName, String strProdManu)
        {
            //Create a dataset to return filled
            DataSet ds = new DataSet();


            //Create a command for our SQL statement
            SqlCommand comm = new SqlCommand();


            //Write a Select Statement to perform Search
            String strSQL = "SELECT Products3_ID, ProductName, ProductManu FROM Products3 WHERE 0=0";

            //If the First/Last Name is filled in include it as search criteria
            if (strProdName.Length > 0)
            {
                strSQL += " AND ProductName LIKE @ProductName";
                comm.Parameters.AddWithValue("@ProductName", "%" + strProdName + "%");
            }
            if (strProdManu.Length > 0)
            {
                strSQL += " AND ProductManu LIKE @ProductManu";
                comm.Parameters.AddWithValue("@ProductManu", "%" + strProdManu + "%");
            }


            //Create DB tools and Configure
            //*********************************************************************************************
            SqlConnection conn = new SqlConnection();
            //Create the who, what where of the DB
            string strConn = @GetConnected();
            conn.ConnectionString = strConn;

            //Fill in basic info to command object
            comm.Connection = conn;     //tell the commander what connection to use
            comm.CommandText = strSQL;  //tell the command what to say

            //Create Data Adapter
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;    //commander needs a translator(dataAdapter) to speak with datasets

            //*********************************************************************************************

            //Get Data
            conn.Open();                //Open the connection (pick up the phone)
            da.Fill(ds, "Products3_Temp");     //Fill the dataset with results from database and call it "EBooks_Temp"
            conn.Close();               //Close the connection (hangs up phone)

            //Return the data
            return ds;
        }

        public SqlDataReader FindOneProduct(int intProducts3_ID)
        {
            //Create and Initialize the DB Tools we need
            SqlConnection conn = new SqlConnection();
            SqlCommand comm = new SqlCommand();

            //My Connection String
            string strConn = GetConnected();

            //My SQL command string to pull up one EBook's data
            string sqlString =
           "SELECT * FROM Products3 WHERE Products3_ID = @Products3_ID;";

            //Tell the connection object the who, what, where, how
            conn.ConnectionString = strConn;

            //Give the command object info it needs
            comm.Connection = conn;
            comm.CommandText = sqlString;
            comm.Parameters.AddWithValue("@Products3_ID", intProducts3_ID);

            //Open the DataBase Connection and Yell our SQL Command
            conn.Open();

            //Return some form of feedback
            return comm.ExecuteReader();   //Return the dataset to be used by others (the calling form)

        }

        private string GetConnected()
        {
            return @"Server=sql.neit.edu\sqlstudentserver,4500;Database=SE133_CBrown;User Id=SE133_CBrown;Password=008017698;";
        }

        ///at the END OF THE program:
        ///default constructor
        ///public name() {stuff in here}
        ///

        public Product()
        {
            ProductName = "";
            ProductManu = "";
            ProductPrice = 0.0;
            Available = true;
            ProductDesc = "";
            ManuDate = DateTime.Parse("1/1/1500");
            Feedback = "";
            QuantOnHand = 1;
            

        }

    }
}
