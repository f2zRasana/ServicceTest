using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.Entities;

namespace SKU.DAL.Ref
{
    public class RefPartsDao
    {
        public List<Parts> SelectAll()
        {
            List<Parts> allParts = new List<Parts>();


            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=SKU;Integrated Security=true");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "Parts_SelectAll";

            Parts tmpParts = null;
            try
            {
                sqlConnection.Open();
                // 3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();


                while (sqlDataReader.Read())
                {
                    tmpParts = new Parts();
                    tmpParts.ID = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        tmpParts.Title = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        tmpParts.Item1 = sqlDataReader.GetString(2);
                    if (sqlDataReader.IsDBNull(3) == false)
                        tmpParts.Item2 = sqlDataReader.GetString(3);
                    if (sqlDataReader.IsDBNull(4) == false)
                        tmpParts.Item3 = sqlDataReader.GetString(4);
                    if (sqlDataReader.IsDBNull(5) == false)
                        tmpParts.Item4 = sqlDataReader.GetString(5);

                    allParts.Add(tmpParts);
                }


                sqlConnection.Close();
            }
            catch (SqlException sqlExeption)
            {
                sqlConnection.Close();
                return null;
            }
            return allParts;
        }
    }
}
