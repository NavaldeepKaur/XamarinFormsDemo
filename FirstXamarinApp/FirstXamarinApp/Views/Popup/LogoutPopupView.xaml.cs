using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using Xamarin.Forms;
using FirstXamarinApp.ViewModels.PopUp;

namespace FirstXamarinApp.Views.Popup
{
    public partial class LogoutPopupView : PopupPage
    {
        public LogoutPopupView()
        {
            InitializeComponent();
            this.BindingContext = new LogoutPopupViewModel();
        }
        private async void OnClose(object sender, EventArgs e)
        {
            await PopupNavigation.Instance.PopAsync();
        }

        protected override Task OnAppearingAnimationEndAsync()
        {
            return Content.FadeTo(1);
        }

        protected override Task OnDisappearingAnimationBeginAsync()
        {
            return Content.FadeTo(1);
        }
    }
}
