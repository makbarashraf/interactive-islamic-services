using System.Data.SqlClient;

namespace ISalah
{
    static class Database
    {
        private static string _ConnectionString = @"Data Source=HASSAN_ABBAS\SOFTWARE;Initial Catalog=database;Integrated Security=True";
        private static SqlConnection _connection;
        public static SqlConnection Connection()
        {
            if (_connection == null)
            {
                _connection = new SqlConnection();
                _connection.ConnectionString = _ConnectionString;
                _connection.Open();
            }
            return _connection;
        }
    }
}
