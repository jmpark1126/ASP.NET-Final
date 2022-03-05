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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "현재 페이지<br>접속시간 : " + DateTime.Now.ToLongTimeString();
            if (Page.User.Identity.IsAuthenticated) //인증 되어있음
            {
                Label1.Text = Page.User.Identity.Name + "님 환영합니다!";
                Panel1.Visible = false;//안보임
                Panel2.Visible = true;//보임
                Panel3.Visible = false;
                Panel4.Visible = true;
            }
            else //인증 안 되어있음
            {
                Label1.Text = "";
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //로그인 버튼
            Response.Redirect("~/Login.aspx");//로그인 페이지로 넘겨줌
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            //회원가입 버튼
            Response.Redirect("~/Register.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //로그아웃 버튼
            FormsAuthentication.SignOut();
            Response.Redirect(FormsAuthentication.DefaultUrl); //Home으로 보내기
        }
        protected void Button4_Click1(object sender, EventArgs e)
        {
            //내 정보수정 버튼
            Response.Redirect("~/Modification.aspx");
        }

  
    }
}