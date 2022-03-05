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
    public partial class OverlapCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = Request.QueryString["id"];//쿼리 문자열 가져오기
                Button2.Visible = false;//처음에 사용버튼은 안 보이게
                Page.Validate();//페이지의 유효성검사 컨트롤을 검사함
                CheckUserIdExists();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {//중복확인 버튼
            CheckUserIdExists();
        }

        private void CheckUserIdExists()
        {
            if (IsValid)
            {
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
                {
                    Label1.Text = "사용 중인 아이디 입니다.";
                    Button2.Visible = false;
                }
                else
                {
                    Label1.Text = "신청하신 아이디는 사용가능합니다.";
                    Button2.Visible = true;
                }
                rd.Close();
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {//사용 버튼
            string str = "<script> opener.document.getElementById('ContentPlaceHolder1_TextBox1').value = '"
                + TextBox1.Text + "';" + " self.close(); </script>";
            Response.Write(str);
        }
    }
}