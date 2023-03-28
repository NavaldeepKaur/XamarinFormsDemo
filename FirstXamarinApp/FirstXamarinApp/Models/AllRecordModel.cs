using System;
using System.Collections.ObjectModel;
using FirstXamarinApp.ViewModels;

namespace FirstXamarinApp.Models
{
    public class AllRecordModel:BaseNotifyPropertyChanged
    {
        public ObservableCollection<Items> Items { get; set; }

        public int? Count { get; set; }
    }

    public class Items : BaseNotifyPropertyChanged
    {
        public string TaskId { get; set; }

        public ObservableCollection<string> Actions { get; set; }

        public string ResultSetId { get; set; }

        public ObservableCollection<Columns> Columns { get; set; }

        public string TokenId { get; set; }

        public DashBoardViewModel DashBoardViewModel { get; set; }

        private string _requestName;
        public string RequestName
        {
            get
            {
                return _requestName;
            }
            set
            {
                _requestName = value;
                OnPropertyChanged("RequestName");
            }
        }
        private string _status;
        public string Status
        {
            get
            {
                return _status;
            }
            set
            {
                _status = value;
                OnPropertyChanged("Status");
            }
        }
        private string _assignedTo;
        public string AssignedTo
        {
            get
            {
                return _assignedTo;
            }
            set
            {
                _assignedTo = value;
                OnPropertyChanged("AssignedTo");
            }
        }
        private string _time;
        public string Time
        {
            get
            {
                return _time;
            }
            set
            {
                _time = value;
                OnPropertyChanged("Time");
            }
        }
        private string _description;
        public string Description
        {
            get
            {
                return _description;
            }
            set
            {
                _description = value;
                OnPropertyChanged("Description");
            }
        }
        private bool _isAssign;
        public bool IsAssign
        {
            get { return _isAssign; }
            set
            {
                _isAssign = value;
                OnPropertyChanged("IsAssign");
            }
        }
    }

    public class Columns
    {
        public string Label { get; set; }

        public string Value { get; set; }

        public string Name { get; set; }
    }
}