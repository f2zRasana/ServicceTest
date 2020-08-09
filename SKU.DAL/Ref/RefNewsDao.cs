using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.Entities.Ref;

namespace SKU.DAL.Ref
{
    public class RefNewsDao
    {

        public IList<RefNews> SelectAll()
        {
            List<RefNews> allRefNews = new List<RefNews>();

            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=SKU;Integrated Security=true");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "RefNews_Load4N";

            RefNews tmpRefNews = null;
            try
            {
                sqlConnection.Open();
                // 3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    tmpRefNews = new RefNews();
                    tmpRefNews.RefID = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        tmpRefNews.Title = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        tmpRefNews.PulishedDate = sqlDataReader.GetDateTime(2);
                    if (sqlDataReader.IsDBNull(3) == false)
                        tmpRefNews.Body = sqlDataReader.GetString(3);
                    if (sqlDataReader.IsDBNull(4) == false)
                        tmpRefNews.NewsSource = sqlDataReader.GetString(4);
                    if (sqlDataReader.IsDBNull(5) == false)
                        tmpRefNews.NewsSource = sqlDataReader.GetString(5);
                     if (sqlDataReader.IsDBNull(6) == false)
                        tmpRefNews.FilePathImage = sqlDataReader.GetString(6);

                    allRefNews.Add(tmpRefNews);
                }
                sqlConnection.Close();
            }
            catch (SqlException sqlExeption)
            {
                sqlConnection.Close();
                return null;
            }
            return allRefNews;
        }

    }
}
