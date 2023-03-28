using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using Rg.Plugins.Popup.Services;
using Xamarin.Essentials;
using Xamarin.Forms;
using FirstXamarinApp.BasicUtils;
using FirstXamarinApp.Models;
using FirstXamarinApp.Views;
using System.Linq;
using Plugin.Toast.Abstractions;
//using Plugin.LocalNotification;
using FirstXamarinApp.Views.Popup;
using FirstXamarinApp;

namespace FirstXamarinApp.ViewModels
{
    public class DashBoardViewModel:BaseNotifyPropertyChanged
    {

        #region Global fields
        public ICommand SubmittedCommand { get; set; }
        public ICommand LogoutCommand { get; set; }
        public ICommand ActionCommand { get; set; }
        public ICommand AllCommand { get; set; }
        public ICommand AddRecordsCommand { get; set; }
        bool isAllSelected,isSubmitSelected,isActionSelected;
        int listCount;
        INavigation iNavigation;
        #endregion

        #region models , list and item click
        private ObservableCollection<Items> _listItems;
        public ObservableCollection<Items> ListItems
        {
            get { return _listItems; }
            set
            {
                _listItems = value;
                OnPropertyChanged("ListItems");
            }
        }
        private Items _itemSelected;
        public Items ListItemSelected
        {
            get
            {
                return _itemSelected;
            }
            set
            {
                if (_itemSelected != value)
                {
                    _itemSelected = value;
                   // iNavigation.PushAsync(new RequestCardDetailView(_itemSelected), true);
                    OnPropertyChanged("ListItemSelected");
                }
            }
        }
        private bool _isInternetConnected;
        public bool IsInternetConnected
        {
            get
            {
                return _isInternetConnected;
            }
            set
            {
                _isInternetConnected = value;
                OnPropertyChanged("IsInternetConnected");
            }

        }
        private bool _isHome;
        public bool IsHome
        {
            get
            {
                return _isHome;
            }
            set
            {
                _isHome = value;
                OnPropertyChanged("IsHome");
            }

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
        private string _selectedTab;
        public string SelectedTab
        {
            get
            {
                return _selectedTab;
            }
            set
            {
                _selectedTab = value;
                OnPropertyChanged("SelectedTab");
            }
        }
        private Color _textColorAll;
        public Color TextColorAll
        {
            get
            {
                return _textColorAll;
            }
            set
            {
                _textColorAll = value;
                OnPropertyChanged("TextColorAll");
            }
        }
        private Color _bgColorAll;
        public Color BGColorAll
        {
            get
            {
                return _bgColorAll;
            }
            set
            {
                _bgColorAll = value;
                OnPropertyChanged("BGColorAll");
            }
        }
        private Color _textColorSubmit;
        public Color TextColorSubmit
        {
            get
            {
                return _textColorSubmit;
            }
            set
            {
                _textColorSubmit = value;
                OnPropertyChanged("TextColorSubmit");
            }
        }
        private Color _bgColorSubmit;
        public Color BGColorSubmit
        {
            get
            {
                return _bgColorSubmit;
            }
            set
            {
                _bgColorSubmit = value;
                OnPropertyChanged("BGColorSubmit");
            }
        }
        private Color _textColorAction;
        public Color TextColorAction
        {
            get
            {
                return _textColorAction;
            }
            set
            {
                _textColorAction = value;
                OnPropertyChanged("TextColorAction");
            }
        }
        private Color _bgColorAction;
        public Color BGColorAction
        {
            get
            {
                return _bgColorAction;
            }
            set
            {
                _bgColorAction = value;
                OnPropertyChanged("BGColorAction");
            }
        }
        private bool _isLoadMore;
        public bool IsLoadMore
        {
            get
            {
                return _isLoadMore;
            }
            set
            {
                _isLoadMore = value;
                OnPropertyChanged("IsLoadMore");
            }
        }
        private string _allRecordCount;
        public string AllRecordCount
        {
            get { return _allRecordCount; }
            set
            {
                _allRecordCount = value;
                OnPropertyChanged("AllRecordCount");
            }
        }
        private string _submitCount;
        public string SubmitCount
        {
            get { return _submitCount; }
            set
            {
                _submitCount = value;
                OnPropertyChanged("SubmitCount");
            }
        }
        private string _actionCount;
        public string ActionCount
        {
            get { return _actionCount; }
            set
            {
                _actionCount = value;
                OnPropertyChanged("ActionCount");
            }
        }
        private bool _bottomLoading;
        public bool BottomLoading
        {
            get { return _bottomLoading; }
            set
            {
                _bottomLoading = value;
                OnPropertyChanged("BottomLoading");
            }
        }
        #endregion

        #region Constructor 
        public DashBoardViewModel(INavigation navigation)
        {
            var currentNetwork = Connectivity.NetworkAccess;
            iNavigation = navigation;
            if (currentNetwork == NetworkAccess.Internet)
            {
                IsInternetConnected = false;
                IsHome = true;
                IsMain = false;
                IsLoading = true;
                FetchAllRecord();
                //FetchData();
            }
            else
            {
                IsInternetConnected = true;
                IsHome = false;
            }
            IsMain = true;
            SelectedTab = StringsMessages.DashBoard.AllRecord;
            BGColorAll = Color.FromHex(hex: "ADD8E6");//LightBlue;
            TextColorAll = Color.FromHex(hex: "00008b");//DarkBlue;
            BGColorAction = Color.White;
            TextColorAction = Color.FromHex(hex: "00008b");
            BGColorSubmit = Color.White;
            TextColorSubmit = Color.FromHex(hex: "00008b");
            isAllSelected = true;
            //todo commands clicks
            SubmittedCommand = new Command(MoveToSubmitted);
            AllCommand = new Command(MoveToAllRecord);
            ActionCommand = new Command(MoveToAction);
            AddRecordsCommand = new Command(AddNewRecords);
            LogoutCommand = new Command(async () => await Logout());
        }
        #endregion

        #region call
        void FetchData()
        {
           
        }
        void FetchAllRecord()
        {
            SetData(creatData());
        }
        void FetchSubmittedRecord()
        {
            SetData(creatData());
        }
        void FetchActionRequired()
        {
            SetData(creatData());
        }
        #endregion

       
        //logout
        private async Task Logout()
        {
            var logoutpage = new LogoutPopupView();
            await PopupNavigation.Instance.PushAsync(logoutpage);
        }

        void MoveToSubmitted()
        {
            BottomLoading = true;
            IsMain=false;
            isAllSelected = false;
            isSubmitSelected = true;
            isActionSelected = false;
            IsLoadMore = false;
            if (ListItems != null)
                ListItems.Clear();
            FetchSubmittedRecord();
            BGColorAll = Color.White;
            TextColorAll = Color.FromHex(hex: "00008b");
            BGColorAction = Color.White;
            TextColorAction = Color.FromHex(hex: "00008b");
            BGColorSubmit = Color.FromHex(hex: "ADD8E6");
            TextColorSubmit = Color.FromHex(hex: "00008b");
            SelectedTab = StringsMessages.DashBoard.SubmittedRecord;
        }
        void MoveToAllRecord()
        {
            BottomLoading = true;
            IsMain=false;
            isAllSelected = true;
            isSubmitSelected = false;
            isActionSelected = false;
            if (ListItems != null)
                ListItems.Clear();
            FetchAllRecord();
            BGColorAll = Color.FromHex(hex: "ADD8E6");
            TextColorAll = Color.FromHex(hex: "00008b");
            BGColorAction = Color.White;
            TextColorAction = Color.FromHex(hex: "00008b");
            BGColorSubmit = Color.White;
            TextColorSubmit = Color.FromHex(hex: "00008b");
            SelectedTab = StringsMessages.DashBoard.AllRecord;
        }
        void MoveToAction()
        {
            BottomLoading = true;
            IsMain=false;
            isAllSelected = false;
            isSubmitSelected = false;
            isActionSelected = true;
            IsLoadMore = false;
            if (ListItems != null)
                ListItems.Clear();
            FetchActionRequired();
            BGColorAll = Color.White;
            TextColorAll = Color.FromHex(hex: "00008b");
            BGColorAction = Color.FromHex(hex: "ADD8E6"); ;
            TextColorAction = Color.FromHex(hex: "00008b");
            BGColorSubmit = Color.White;
            TextColorSubmit = Color.FromHex(hex: "00008b");
            SelectedTab = StringsMessages.DashBoard.ActionRequired;
        }

        void AddNewRecords()
        {

             App.Current.MainPage.DisplayAlert("TAPWorkflowAutomation", "Coming Soon", "OK");


            // var notification = new NotificationRequest
            //{
            //    BadgeNumber = 1,
            //    Description = "Test Description",
            //    ReturningData = "Dummy Data",
            //    NotificationId = 3177,
            //    Schedule = {
            //        NotifyTime = DateTime.Now.AddSeconds(5)
            //    }

            //};

            //LocalNotificationCenter.Current.Show(notification);

            

        }
        void BacktoLogin()
        {
            var mainPage = new NavigationPage(new LoginPageView());
            Application.Current.MainPage = mainPage;
        }

        #region Result 
        

        public AllRecordModel creatData()
        {
            AllRecordModel result = new AllRecordModel();
            result.Count = 1;
            ObservableCollection<Items> _items = new ObservableCollection<Items>();
            
            ObservableCollection<Columns> columns = new ObservableCollection<Columns>();
           
            columns.Add(new Columns { Label = "ABC", Name = "__WorkflowName__", Value = "Bill Payment" });

            var item1 = new Items
            {
                AssignedTo = "Naval",
                TaskId = "123",
                Status = "Completed",
                RequestName = "Bill Payment Pass",
                Description = "we can add the new items to the list after we get the result from service.",
                

                Columns = columns
            };
            _items.Add(item1);

            ObservableCollection<Columns> columns2 = new ObservableCollection<Columns>();

            columns2.Add(new Columns { Label = "ABC", Name = "__CurrentAssignee__", Value = "Venus Sharma" });

            var item2 = new Items
            {
                AssignedTo = "Venus",
                TaskId = "13",
                Status = "InProcess",
                RequestName = "Request for internet connection",
                Description = "Defines the size of the image when loading image.",

                Columns = columns2
            };
            _items.Add(item2);


            ObservableCollection<Columns> columns3 = new ObservableCollection<Columns>();

            columns3.Add(new Columns { Label = "ABC", Name = "__DateLastUpdated__", Value = "Gaurav" });

            var item3 = new Items
            {
                AssignedTo = "Gaurav",
                TaskId = "1",
                Status = "Pending",
                RequestName = "Request for water supply",
                Description = "Defines the size of the image when loading image.",

                Columns = columns3
            };
            _items.Add(item3);

            result.Items = _items;


            return result;
        }

      
        #endregion

        #region Set Data on UI
        public void SetData(AllRecordModel result)
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                if (result != null && result.Items.Count > 0)
                {
                        ListItems = new ObservableCollection<Items>();
                    foreach (var item in result.Items)
                    {
                        ListItems.Add(item);
                    }
                    listCount = ListItems.Count;
                    SetTabCount(result.Count.Value);
                    BottomLoading = false;
                    IsMain = true;
                }
                else
                {
                    //no Data found
                }

                for (int i = 0; i < result.Items.Count; i++)
                {
                    foreach (var item in result.Items[i].Columns)
                    {
                        if (item.Name == "__WorkflowName__")
                            result.Items[i].RequestName = item.Value;
                        else if (item.Name == "__WorkflowDescription__")
                            result.Items[i].Description = item.Value;
                        else if (item.Name == "__CurrentAssignee__")
                        {
                            result.Items[i].AssignedTo = item.Value;
                            if (string.IsNullOrEmpty(item.Value))
                                result.Items[i].IsAssign = false;
                            else
                                result.Items[i].IsAssign = true;
                        }
                        else if (item.Name == "__Status__")
                            result.Items[i].Status = item.Value;
                        else if (item.Name == "__DateLastUpdated__")
                            result.Items[i].Time = "Updated by " + item.Value;
                    }
                }
            });
        }

        void SetTabCount(int count)
        {
            var recordCount= count.ToString();
            if (isAllSelected)
                AllRecordCount = recordCount;
            else if (isSubmitSelected)
                SubmitCount = recordCount;
            else
                ActionCount = recordCount;
        }
        #endregion

       
    }
}
