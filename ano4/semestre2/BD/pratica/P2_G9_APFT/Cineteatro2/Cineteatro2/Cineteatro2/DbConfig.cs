using System.Configuration;

namespace Cineteatro2
{
    internal static class DbConfig
    {
        internal static string ConnectionString => ConfigurationManager.ConnectionStrings["Cineteatro2Db"].ConnectionString;
    }
}