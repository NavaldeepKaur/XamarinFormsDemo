using System;
using Newtonsoft.Json;

namespace FirstXamarinApp.Models
{
    public class LoginResultModel
    {
        [JsonProperty("access_token")]
        public string AccessToken { get; set; }
        [JsonProperty("expires_in")]
        public string TokenType { get; set; }
        [JsonProperty("token_type")]
        public string ExpiresIn { get; set; }
    }
}
