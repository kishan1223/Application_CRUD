using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace Crud_application
{
    public partial class Crud : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-LTLSG7NR;Initial Catalog=Nikhil1;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadrecord();
            }
        }

        void loadrecord()
        {
            string query = "SELECT * FROM student_info";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            String query = "insert into student_info values ('" + int.Parse(id.Text) + "','" + name.Text + "','" + int.Parse(age.Text) + "','" + int.Parse(rollno.Text) + "','" + address.Text + "','" + email.Text + "','" + gender.SelectedValue + "','" + country.SelectedValue + "')";
            SqlCommand cmd =new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            loadrecord();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            String query = "update student_info set name='" + name.Text + "',age='" + int.Parse(age.Text) + "',rollno='" + int.Parse(rollno.Text) + "',address='" + address.Text + "',email='" + email.Text + "',gender='" + gender.SelectedValue + "',country='" + country.SelectedValue  + "' where id ='" + int.Parse(id.Text) + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            loadrecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            String query = "Delete student_info where id ='" + int.Parse(id.Text) + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            loadrecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM student_info where id ='" + int.Parse(id.Text) + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}