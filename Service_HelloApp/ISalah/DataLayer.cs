using System.Data;
using System.Data.SqlClient;

namespace ISalah
{
    public class DataLayer
    {
        private SqlCommand _cmd;
        public DataLayer()
        {
            _cmd = new SqlCommand();
            _cmd.Connection = Database.Connection();
        }

        protected int ExecuteNonQuery(string cmdText)
        {
            _cmd.CommandText = cmdText;
            return _cmd.ExecuteNonQuery();
        }

        protected object ExecuteScalar(string cmdText)
        {
            _cmd.CommandText = cmdText;
            return _cmd.ExecuteScalar();
        }

        protected DataTable ExecuteTable(string cmdText)
        {
            _cmd.CommandText = cmdText;
            DataTable dt = new DataTable();
            new SqlDataAdapter(selectCommand: _cmd).Fill(dt);
            return dt;
        }

        protected SqlDataReader ExecuteReader(string cmdText)
        {
            _cmd.CommandText = cmdText;
            return _cmd.ExecuteReader();
        }
    }
}
