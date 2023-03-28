using System;
namespace FirstXamarinApp.BasicUtils
{
    public class StringsMessages
    {
        public struct Common
        {
            public const string NoInternet = "No,Internet connection";
            public const string ComingSoon = "Coming soon";
            public const string NoRecordFound = "No record found";
            public const string NoMoreRecord = "No more records found";
        }
        public struct LoginPage
        {
            public const string IncorrectUserPass = "Incorrect username or password please try again";
            public const string PasswordLength = "Password should be minimum 6 digits.";
            public const string EnterUserName = "Please enter username";
            public const string EnterPassword = "Please enter password";
            public const string LoginFailed = "Login failed. Invalid user or password";
            public const string AgreeTerms = "Please agree to tems and conditions";
        }
        public struct DashBoard
        {
            public const string AllRecord = "All Records";
            public const string SubmittedRecord = "Submitted Records";
            public const string ActionRequired = "Action Required";
        }
    }
}
