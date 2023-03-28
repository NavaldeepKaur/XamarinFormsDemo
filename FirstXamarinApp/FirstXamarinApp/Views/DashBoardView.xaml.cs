using Plugin.Toast;
using Xamarin.Forms;
using FirstXamarinApp.ViewModels;

namespace FirstXamarinApp.Views
{
    public partial class DashBoardView : ContentPage
    {
        bool isFirst;
        public DashBoardView()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
            this.BindingContext = new DashBoardViewModel(this.Navigation);
        }
        protected override bool OnBackButtonPressed()
        {
            if (!isFirst)
            {
                isFirst = true;
                return true;
            }
            else
            {
                //var closer = DependencyService.Get<ICloseApplication>();
                //closer?.closeApplication();
                return false;
            }
        }
    }
}
