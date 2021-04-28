using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace GreenwichCommunityTheatre
{ 
    public static class DB
    {
        public static string cs = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
        public static object ExecuteScaler(string qry)
        {
            object ret = null;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand(qry, con);
                con.Open();
                ret = (cmd.ExecuteScalar());
                con.Close();
            }
            return ret;
        }

        public static int ExecuteNonQuery(string qry)
        {
            int ret = 0;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand(qry, con);
                con.Open();
                ret = Convert.ToInt32(cmd.ExecuteNonQuery());
                con.Close();
            }
            return ret;

        }
    }
}