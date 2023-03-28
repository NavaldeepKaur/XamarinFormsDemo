using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using FirstXamarinApp.Services;
using FirstXamarinApp.Views;
using FirstXamarinApp.BasicUtils;
using XFShimmerLayout.Controls;
//using Plugin.FirebasePushNotification;

namespace FirstXamarinApp
{
    public partial class App : Application
    {

        public App ()
        {
            InitializeComponent();

          
          
                MainPage = new NavigationPage(new LoginPageView());


            //CrossFirebasePushNotification.Current.Subscribe("all");
            //CrossFirebasePushNotification.Current.OnTokenRefresh += Current_OnTokenRefresh;


        }

        //private void Current_OnTokenRefresh(object source, FirebasePushNotificationTokenEventArgs e)
        //{
        //    System.Diagnostics.Debug.WriteLine($"Token: {e.Token}");
        //}

        protected override void OnStart ()
        {
        }

        protected override void OnSleep ()
        {
        }

        protected override void OnResume ()
        {
        }
    }
}

