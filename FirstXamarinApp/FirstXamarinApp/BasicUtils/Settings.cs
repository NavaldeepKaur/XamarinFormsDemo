using System;
using Plugin.Settings;
using Plugin.Settings.Abstractions;

namespace FirstXamarinApp.BasicUtils
{
   
    public static class Settings
    {
        private static ISettings AppSettings
        {
            get
            {
                return CrossSettings.Current;
            }
        }
        private const string username = "username";
        public static string UserName
        {
            get
            {
                return AppSettings.GetValueOrDefault(username, string.Empty);
            }
            set
            {
                AppSettings.AddOrUpdateValue(username, value);
            }
        }
        private const string userTokenSettings = "userTokenSettings";
        public static string UserTokenSettings
        {
            get
            {
                return AppSettings.GetValueOrDefault(userTokenSettings, string.Empty);
            }
            set
            {
                AppSettings.AddOrUpdateValue(userTokenSettings, value);
            }
        }
        private const bool loginCompleted =false;
        public static bool LoginCompleted
        {
            get
            {
                return AppSettings.GetValueOrDefault(loginCompleted.ToString(), false);
            }
            set
            {
                AppSettings.AddOrUpdateValue(loginCompleted.ToString(), value);
            }
        }
    }
}
