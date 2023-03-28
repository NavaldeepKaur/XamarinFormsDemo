using System;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Input;
using Plugin.Toast;
using Xamarin.Essentials;
using Xamarin.Forms;
using FirstXamarinApp.BasicUtils;
using FirstXamarinApp.Interfaces;
using FirstXamarinApp.Models;
using FirstXamarinApp.Views;

namespace FirstXamarinApp.ViewModels
{
    public class LoginPageViewModel : BaseNotifyPropertyChanged
    {
        public ICommand SignInCommand { get; set; }
        public ICommand ShowPassword { get; set; }
        public ICommand ForgetCommand { get; set; }
        const string passwordRegex = @"^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$";

        #region model and properties
        private Color _backgroundColorBtn1;
        private bool _termsChecked;
        public Color BackgroundColorBtn1
        {
            get { return _backgroundColorBtn1; }
            set
            {
                if (value == _backgroundColorBtn1)
                    return;

                _backgroundColorBtn1 = value;
                OnPropertyChanged("BackgroundColorBtn1");
            }
        }
        private Color _passwodFrame;
        public Color PasswodFrame
        {
            get { return _passwodFrame; }
            set
            {
                if (value == _passwodFrame)
                    return;

                _passwodFrame = value;
                OnPropertyChanged("PasswodFrame");
            }
        }
        private string _userNameText;
        public string UserNameText
        {
            get
            {
                return _userNameText;
            }
            set
            {
                _userNameText = value;
                if (!string.IsNullOrEmpty(UserNameText))
                {
                    LoginAlert = false;
                    _backgroundColorBtn1 = Color.Default;
                    OnPropertyChanged("BackgroundColorBtn1");
                }
                OnPropertyChanged("UserNameText");
            }

        }
        private string _passwordText;
        public string PasswordText
        {
            get
            {
                return _passwordText;
            }
            set
            {
                _passwordText = value;
                if (!string.IsNullOrEmpty(PasswordText))
                {
                    LoginAlert = false;
                    PasswodFrame = Color.Default;
                    OnPropertyChanged("PasswodFrame");
                }
                OnPropertyChanged("PasswordText");
            }
        }

        public bool TermsChecked
        {
            get
            {
                return _termsChecked;
            }
            set
            {
                _termsChecked = value;
                OnPropertyChanged("TermsChecked");
            }

        }

        private bool termsAlert;
        public bool TermsAlert
        {
            get
            {
                return termsAlert;
            }
            set
            {
                termsAlert = value;
                OnPropertyChanged("TermsAlert");
            }

        }
        private ImageSource _passwordicon;
        public ImageSource PasswordIcon
        {
            get
            {
                return _passwordicon;
            }
            set
            {
                _passwordicon = value;
                OnPropertyChanged("PasswordIcon");
            }
        }

        private int _cursorPosition;
        public int CursorPosition
        {
            get
            {
                return _cursorPosition;
            }
            set
            {
                _cursorPosition = value;
                OnPropertyChanged("CursorPosition");
            }
        }
        private bool loginAlert;
        public bool LoginAlert
        {
            get
            {
                return loginAlert;
            }
            set
            {
                loginAlert = value;
                OnPropertyChanged("LoginAlert");
            }

        }
        private bool _isPassword;
        public bool IsPassword
        {
            get
            {
                return _isPassword;
            }
            set
            {
                _isPassword = value;
                OnPropertyChanged("IsPassword");
            }

        }
        private string _message;
        public string AlertMessage
        {
            get { return _message; }
            set { _message = value; OnPropertyChanged("AlertMessage"); }
        }
        private bool _isLoading;
        public bool IsLoading
        {
            get
            {
                return _isLoading;
            }
            set
            {
                _isLoading = value;
                OnPropertyChanged("IsLoading");
            }

        }
        private bool _isMain;
        public bool IsMain
        {
            get
            {
                return _isMain;
            }
            set
            {
                _isMain = value;
                OnPropertyChanged("IsMain");
            }

        }
        #endregion

        public LoginPageViewModel()
        {
            UserNameText = "";
            PasswordText = "";
            IsMain = true;
            IsPassword = true;
            LoginAlert = false;
            TermsAlert = false;
            SignInCommand = new Command(SignInAction);
          
        }

        /// <summary>
        /// Signs up action.
        /// </summary>
        void SignInAction()
        {
            if (string.IsNullOrEmpty(UserNameText.Trim()) && string.IsNullOrEmpty(PasswordText.Trim()))
            {
                Device.BeginInvokeOnMainThread(() =>
                {
                    AlertMessage = StringsMessages.LoginPage.IncorrectUserPass;
                    LoginAlert = true;
                    PasswodFrame = Color.Red;
                    OnPropertyChanged("PasswodFrame");
                    _backgroundColorBtn1 = Color.Red;
                    OnPropertyChanged("BackgroundColorBtn1");
                });

            }
            else if (!TermsChecked) {
                TermsAlert = true;
                AlertMessage = StringsMessages.LoginPage.AgreeTerms;
            }
            else if (!string.IsNullOrEmpty(UserNameText.Trim()) && !string.IsNullOrEmpty(PasswordText.Trim()))
            {
                if (!string.IsNullOrEmpty(PasswordText) && PasswordText.Length >= 6)
                {
                    var currentNetwork = Connectivity.NetworkAccess;
                    if (currentNetwork == NetworkAccess.Internet)
                    {
                        IsMain = false;
                        IsLoading = true;

                        CallLogin(UserNameText, PasswordText);
                    }
                    else { }
                }
                else
                {
                    LoginAlert = true;
                    PasswodFrame = Color.Red;
                    OnPropertyChanged("PasswodFrame");
                    AlertMessage = StringsMessages.LoginPage.PasswordLength;
                }
            }
            else
            {

                if (string.IsNullOrEmpty(UserNameText.Trim()))
                {
                    LoginAlert = true;
                    _backgroundColorBtn1 = Color.Red;
                    OnPropertyChanged("BackgroundColorBtn1");
                    AlertMessage = StringsMessages.LoginPage.EnterUserName;
                }
                else if (string.IsNullOrEmpty(PasswordText.Trim()))
                {
                    LoginAlert = true;
                    PasswodFrame = Color.Red;
                    OnPropertyChanged("PasswodFrame");
                    AlertMessage = StringsMessages.LoginPage.EnterPassword;
                }
                else if (PasswordText.Trim().Length < 6)
                {
                    LoginAlert = true;
                    PasswodFrame = Color.Red;
                    OnPropertyChanged("PasswodFrame");
                    AlertMessage = StringsMessages.LoginPage.PasswordLength;
                }
                else
                {

                }
            }

        }
        /// <summary>
        /// Ises the password valid.
        /// </summary>
        /// <returns><c>true</c>, if password valid was ised, <c>false</c> otherwise.</returns>
        /// <param name="password">Password.</param>
        private bool IsPasswordValid(string password)
        {
            if (!string.IsNullOrEmpty(password))
            {
                bool IsValid = false;
                IsValid = (Regex.IsMatch(password, passwordRegex));
                return IsValid;
            }
            else
                return false;
        }

        #region service call ,result and error
        public async void CallLogin(string username,string password)
        {
          
            await Task.Run(() =>
            {
                Task.Delay(2000); //wait for two seconds
                IsMain = true;
                IsLoading = false;
                Settings.LoginCompleted = true;
                Device.BeginInvokeOnMainThread(() =>
                {
                    var mainPage = new NavigationPage(new DashBoardView());
                    Application.Current.MainPage = mainPage;
                });

            });

           
        }

  

        #endregion
    }
}
