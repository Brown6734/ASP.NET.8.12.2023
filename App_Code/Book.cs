using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//using Week4_Class1;

namespace SE256_Brown_Masterbackend.App_Code
{
    public class Book
    {
        private string title;
        private string authorFirst;
        private string authorLast;
        private string email;
        private DateTime datePublished;
        private int pages;
        private double price;
        private string feedback;

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

        public string Title
        {
            get
            {
                return title;
            }
            set
            {
                if (!ValidationLibrary.GotBadWords(value))
                {
                    title = value;
                }
                else
                {
                    Feedback += "\nERROR: Title has bad word";
                }
            }
        }

        public string AuthorFirst
        {
            get
            {
                return authorFirst;
            }
            set
            {
                if (!ValidationLibrary.GotBadWords(value))
                {
                    authorFirst = value;
                }
                else
                {
                    Feedback += "\nERROR: Author first name has bad word";
                }
            }
        }

        public string AuthorLast
        {
            get
            {
                return authorLast;
            }
            set
            {
                if (!ValidationLibrary.GotBadWords(value))
                {
                    authorLast = value;
                }
                else
                {
                    Feedback += "\nERROR: Author last name has bad word";
                }
            }
        }

        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                if (ValidationLibrary.IsValidEmail(value))
                    //make validation library email part better
                {
                    email = value;
                }
                else
                {
                    Feedback += "\nERROR: Invalid Email";
                }
            }
        }

        public DateTime DatePublished
        {
            get
            {
                return datePublished;
            }
            set
            {
                if (ValidationLibrary.IsAFutureDate(value) == false)
                {
                    datePublished = value;
                }
                else
                {
                    Feedback += "\nERROR: You can not enter future dates";
                }
            }
        }

        public int Pages
        {
            get
            {
                return pages;
            }
            set
            {
                if (ValidationLibrary.IsMinimumAmount(value, 0) == true)
                {
                    pages = value;
                }
                else
                {
                    Feedback += "\nERROR: you entered an invalid # for pages";
                }
            }
        }

        public double Price
        {
            get
            {
                return price;
            }
            set
            {
                if (ValidationLibrary.IsMinimumAmount(value, 1) == true)
                {
                    price = value;
                }
                else
                {
                    Feedback += "\nERROR: not valid price amount";
                }
            }
        }

        public Book()
        {
            title = "";
            authorFirst = "";
            authorLast = "";
            pages = 0;
            datePublished = DateTime.Parse("1/1/1500");
            price = 0.0;
            feedback = "";
        }
    }
}