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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {//Home 버튼
            Response.Redirect("~/Home.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {//등록합니다 버튼
            if (IsMemberExists())
                Label2.Text = "이미 사용 중인 아이디 입니다.<br>다른 아이디를 사용해 주세요.";
            else
                AddMember();


        }

        private void AddMember()
        {
            //연결 
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"Insert into People Values (@UserID, @Password, @Name, @Phone)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", TextBox1.Text); //매개변수에 있는 변수를 가져옴
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text); //매개변수에 있는 변수를 가져옴
            cmd.Parameters.AddWithValue("@Name", TextBox4.Text); //매개변수에 있는 변수를 가져옴
            cmd.Parameters.AddWithValue("@Phone", TextBox5.Text); //매개변수에 있는 변수를 가져옴

            //실행
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();

            if (a > 0)//작업한 레코드가 하나 이상일 때 : 성공
            {
                FormsAuthentication.SetAuthCookie(TextBox1.Text, false);//인증쿠키를 생성
                string str = "<script> alert('정보가 변경되었습니다');";
                str += " location.href='/Home.aspx'; </script>";

                Response.Write(str);
            }
            else //실패
            {
                Label2.Text = "회원가입에 실패했습니다.";
            }

        }

        private bool IsMemberExists()
        {//textbox1의 아이디가 DB에 존재하는지 확인함
            bool result = true;
            //연결 
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            //명령
            string sql = @"Select * from People Where UserID = @UserID"; //일치하는 User가 있는지 확인
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@UserID", TextBox1.Text); //매개변수에 있는 변수를 가져옴
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

        protected void Button5_Click(object sender, EventArgs e)
        {//중복확인 버튼
            string str = "<script> window.open('OverlapCheck.aspx?id=" + TextBox1.Text
                + "', 'myWindow', 'top=200,left=200,width=400,height=200'); </script>";

            Response.Redirect(str);
        }
    }
}