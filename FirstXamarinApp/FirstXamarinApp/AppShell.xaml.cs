using System;
using System.Collections.Generic;
using FirstXamarinApp.ViewModels;
using Xamarin.Forms;
using FirstXamarinApp.Views;
using XFShimmerLayout.Controls;

namespace FirstXamarinApp
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
            //Routing.RegisterRoute(nameof(ItemDetailPage), typeof(ItemDetailPage));
            //Routing.RegisterRoute(nameof(NewItemPage), typeof(NewItemPage));
            var density = Xamarin.Essentials.DeviceDisplay.MainDisplayInfo.Density;
            ShimmerLayout.Init(density);
         
              Routing.RegisterRoute(nameof(LoginPageView), typeof(LoginPageView));
        }

        private async void OnMenuItemClicked(object sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("//LoginPage");
        }
    }
}

