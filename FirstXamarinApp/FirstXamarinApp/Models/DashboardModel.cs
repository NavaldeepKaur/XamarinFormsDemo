using System;
using Newtonsoft.Json;

namespace FirstXamarinApp.Models
{
    public class DashboardModel:BaseNotifyPropertyChanged
    {
        private string _contracter;
        private bool? _toDownloadedthis;
        private bool? _isDownloaded;
        private string _createdBy;
        [JsonProperty("Label")]
        public string Contracter
        {
            get
            {
                return _contracter;
            }
            set
            {
                _contracter = value;
                OnPropertyChanged("Contracter");
            }
        }

        [JsonProperty("DataType")]
        public bool? ToDownloadedthis
        {
            get
            {
                return _toDownloadedthis;
            }
            set
            {
                _toDownloadedthis = value;
                OnPropertyChanged("ToDownloadedthis");
            }
        }

        [JsonProperty("IsStatic")]
        public bool? IsDownloaded
        {
            get
            {
                return _isDownloaded;
            }
            set
            {
                _isDownloaded = value;
                OnPropertyChanged("IsDownloaded");
            }
        }

        [JsonProperty("Name")]
        public string CreatedBy
        {
            get
            {
                return _createdBy;
            }
            set
            {
                _createdBy = value;
                OnPropertyChanged("CreatedBy");
            }
        }
    }
}
