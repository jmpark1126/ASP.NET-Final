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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {//이미 인증이 되어있는지 체크
            //로그인이 되어있으면 다시 로그인(하이퍼링크)로 안가고 Home Page으로 연결됨
            if (Page.User.Identity.IsAuthenticated)
                Response.Redirect(FormsAuthentication.DefaultUrl); //Home page로 보냄
        }

        protected void Button1_Click(object sender, EventArgs e)
        {//로그인 버튼
            if (IsAuthenticated(TextBox1.Text, TextBox2.Text))//DB에 존재하는 사용자인가
            {//인증 성공(일치)
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked); //ture 나 false(안전) 가능
            }
            else
            {//인증 실패
                Label1.Text = "아이디 또는 암호가 일치하지 않습니다.";
            }

        }

        private bool IsAuthenticated(string userID, string password)
        {
            //DB에 연동하여 확인 작업 필요
            bool result = false;

            //연결 
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"Select * from People 
                            Where UserID = @UserID and Password=@Password"; //정확히 일치하는 User만 읽어옴
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", userID); //매개변수를 가져옴
            cmd.Parameters.AddWithValue("@password", password);
            //실행
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader(); //조건에 맞는 데이터를 읽어옴
            if (rd.Read())
                result = true;
            else
                result = false;
            rd.Close();
            con.Close();

            return result;
        }
    }
}