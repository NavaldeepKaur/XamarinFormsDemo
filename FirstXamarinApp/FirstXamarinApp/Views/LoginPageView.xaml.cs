using System;
using System.Collections.Generic;

using Xamarin.Forms;
using FirstXamarinApp.ViewModels;

namespace FirstXamarinApp.Views
{
    public partial class LoginPageView : ContentPage
    {
        public LoginPageView()
        {
            InitializeComponent();
#if __ANDROID__
            NavigationPage.SetHasNavigationBar(this, false);
#endif

#if __IOS__
             NavigationPage.SetHasNavigationBar(this, true);
#endif
            this.BindingContext = new LoginPageViewModel();
        }
        protected override void OnDisappearing()
        {
            base.OnDisappearing();

        }
    }
}
