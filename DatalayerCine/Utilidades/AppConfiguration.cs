using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Utilidades
{
    public class AppConfiguration
    {
        public static string GetConnectionString(string nameConnection = "Default")
        {
            var ConfigBuilder = new ConfigurationBuilder();
            var path = Path.Combine(Directory.GetCurrentDirectory(), "appsettings.json");
            ConfigBuilder.AddJsonFile(path, false);
            var root = ConfigBuilder.Build();
            var appsettings = root.GetSection($"ConnectionStrings:{nameConnection}");
            return appsettings.Value;
        }
    }
}
