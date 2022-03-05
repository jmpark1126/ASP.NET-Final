using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;//추가
using System.Data.SqlClient; //추가
using System.Configuration;//추가
using System.Data; //비연결기반 연동할때 필요(DataSet,DataTable 등)

namespace Final
{
    public partial class Modification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Page.User.Identity.Name;
                //DB에서 이 id의 레코드 값을 읽어와서 화면에 보여준다.
                //연결 
                string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                //명령
                string sql = @"Select * from People Where UserID = @UserID"; //일치하는 User가 있는지 확인
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@UserID", id); //매개변수에 있는 변수를 가져옴
                //실행
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader(); //조건에 맞는 데이터를 읽어옴
                if (rd.Read())
                {
                    Label3.Text = id;
                    TextBox4.Text = rd["Name"].ToString();
                    TextBox5.Text = rd["Phone"].ToString();
                }
                rd.Close();
                con.Close();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {//변경합니다 버튼
            //연결 
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"update People 
                        Set Password=@Password, Name=@Name, Phone=@Phone
                        Where UserID=@UserID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text); //매개변수에 있는 변수를 가져옴
            cmd.Parameters.AddWithValue("@Name", TextBox4.Text); //매개변수에 있는 변수를 가져옴
            cmd.Parameters.AddWithValue("@Phone", TextBox5.Text); //매개변수에 있는 변수를 가져옴
            cmd.Parameters.AddWithValue("@UserID", Page.User.Identity.Name);

            //실행
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();

            if (a > 0)//작업한 레코드가 하나 이상일 때 : 성공
            {
                string str = "<script> alert('정보가 변경되었습니다');";
                str += " location.href='/Home.aspx'; </script>";
                Response.Write(str);
            }
            else //실패
            {
                Label2.Text = "정보변경에 실패했습니다.";
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {//Home 버튼
            Response.Redirect("~/Home.aspx");
        }
    }
}