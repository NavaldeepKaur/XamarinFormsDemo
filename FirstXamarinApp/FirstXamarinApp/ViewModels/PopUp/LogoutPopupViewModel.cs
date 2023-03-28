using System;
using System.Threading.Tasks;
using System.Windows.Input;
using Rg.Plugins.Popup.Services;
using Xamarin.Forms;
using FirstXamarinApp.BasicUtils;
using FirstXamarinApp.Views;

namespace FirstXamarinApp.ViewModels.PopUp
{
    public class LogoutPopupViewModel:BaseNotifyPropertyChanged
    {
        public ICommand YesCommand { get; set; }
        public ICommand NoCommand { get; set; }
        public LogoutPopupViewModel()
        {
            YesCommand = new Command(async () => await YesAction());
            NoCommand = new Command(async () => await NoAction());
        }

        private async Task YesAction()
        {
            await PopupNavigation.Instance.PopAsync();
            Settings.UserTokenSettings = string.Empty;
            Settings.LoginCompleted = false;
            var mainPage = new NavigationPage(new LoginPageView());
            Application.Current.MainPage = mainPage;
        }
        private async Task NoAction()
        {
            await PopupNavigation.Instance.PopAsync();
        }
    }
}
