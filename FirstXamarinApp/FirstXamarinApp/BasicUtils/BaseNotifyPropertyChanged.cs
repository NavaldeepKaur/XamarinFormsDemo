﻿using System;
using System.ComponentModel;

namespace FirstXamarinApp
{
    public class BaseNotifyPropertyChanged:INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(string propertyName)
        {

            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
