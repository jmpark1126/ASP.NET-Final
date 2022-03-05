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
    public partial class administer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProduct(); //드롭다운리스트에 UserID를 바인딩
                SetInfo(); //아래의 5개 필드값을 채운다
            }
        }
        private void SetInfo()
        {
            //연결(원하는 DB로 연결됨)
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString; //문자열 가져오기(준비단계)
            SqlConnection con = new SqlConnection(conStr); //연결객체
            //명령(sql문)
            string sql = "Select * From Plant Where pID = @pID";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            cmd.Parameters.AddWithValue("@pID", DropDownList1.SelectedValue);
            //실행 및 화면표시
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextBox1.Text = rd["pID"].ToString();
                TextBox2.Text = rd["pName"].ToString();
                TextBox3.Text = rd["category"].ToString();
                TextBox4.Text = rd["country"].ToString();
                TextBox5.Text = rd["price"].ToString();
            }
            else
            {
                Label1.Text = "상품이 선택되지 않았습니다.";
            }
            con.Close();
        }

        private void BindProduct()
        {
            //연결(원하는 DB로 연결됨)
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString; //문자열 가져오기(준비단계)
            SqlConnection con = new SqlConnection(conStr); //연결객체
            //명령(sql문)
            string sql = "Select pID, pName From Plant";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            //실행 및 화면표시
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            DropDownList1.DataSource = rd;
            DropDownList1.DataTextField = "pName";
            DropDownList1.DataValueField = "pID";
            DropDownList1.DataBind(); //화면 갱신
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetInfo();
            Label1.Text = "";
        }

        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {
            DropDownList1.Items.Insert(0, new ListItem("- 선택하세요 -", "-1"));
        }

        protected void Button3_Click(object sender, EventArgs e)
        {//초기화
            ClearData();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {//등록 입력
            //연결(원하는 DB로 연결됨)
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString; //문자열 가져오기(준비단계)
            SqlConnection con = new SqlConnection(conStr); //연결객체

            //명령(sql문)
            string sql = "insert into Plant Values(@pID, @pName, @category, @country, @price)";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            cmd.Parameters.AddWithValue("@pID", TextBox1.Text);//파라미터 정의 및 값 지정
            cmd.Parameters.AddWithValue("@pName", TextBox2.Text);//파라미터 정의 및 값 지정
            cmd.Parameters.AddWithValue("@category", TextBox3.Text);//파라미터 정의 및 값 지정
            cmd.Parameters.AddWithValue("@country", TextBox4.Text);//파라미터 정의 및 값 지정
            cmd.Parameters.AddWithValue("@price", TextBox5.Text);//파라미터 정의 및 값 지정

            //실행 및 화면표시
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();//실행쿼리(입력,삭제,수정 기능을 하는 쿼리)
                                      //ExecuteNonQuery : 읽어오지 않고 실행만 하겠다.
                con.Close();

                Label1.Text = TextBox2.Text + "의 정보가 등록되었습니다.";
            }
            catch (Exception ex) //try에 에러발생 시 사용
            {
                //Label1.Text = ex.Message;
                Response.Write(ex.Message);
            }
            finally //try의 에러 발생 여부와 관계없이 공통적으로 사용
            {
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {//수정
            //연결(원하는 DB로 연결됨)
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString; //문자열 가져오기(준비단계)
            SqlConnection con = new SqlConnection(conStr); //연결객체

            //명령(sql문)
            string sql = @"Update Plant Set pName = @pName, category = @category, country = @country, price = @price
                            Where pID = @pID";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            cmd.Parameters.AddWithValue("@pName", TextBox2.Text);//파라미터 정의 및 값 지정
            cmd.Parameters.AddWithValue("@category", TextBox3.Text);//파라미터 정의 및 값 지정
            cmd.Parameters.AddWithValue("@country", TextBox4.Text);//파라미터 정의 및 값 지정
            cmd.Parameters.AddWithValue("@price", TextBox5.Text);//파라미터 정의 및 값 지정
            cmd.Parameters.AddWithValue("@pID", TextBox1.Text);//파라미터 정의 및 값 지정("@pID", Label1.Text);

            //실행 및 화면표시
            con.Open();
            int num = cmd.ExecuteNonQuery();//실행쿼리(입력,삭제,수정 기능을 하는 쿼리)
                                            //실행쿼리의 실행결과를 숫자로 가져온다.(0 이면 실행된 것이 없음을 의미)
            con.Close();

            if (num > 0)
                Label1.Text = "정보가 성공적으로 수정되었습니다!";
            else
                Label1.Text = "정보 수정에 실패했습니다...";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {//삭제
            //연결(원하는 DB로 연결됨)
            string conStr = ConfigurationManager.ConnectionStrings["master"].ConnectionString; //문자열 가져오기(준비단계)
            SqlConnection con = new SqlConnection(conStr); //연결객체

            //명령(sql문)
            string sql = @"Delete from Plant Where pID = @pID";
            SqlCommand cmd = new SqlCommand(sql, con); //명령객체 생성
            cmd.Parameters.AddWithValue("@pID", DropDownList1.SelectedValue);//파라미터 정의 및 값 지정

            //실행 및 화면표시
            con.Open();
            int num = cmd.ExecuteNonQuery();//실행쿼리(입력,삭제,수정 기능을 하는 쿼리)
                                            //실행쿼리의 실행결과를 숫자로 가져온다.(0 이면 실행된 것이 없음을 의미)
            con.Close();

            if (num > 0)
                Label1.Text = DropDownList1.SelectedValue + "의 정보가 삭제되었습니다.";
            else
                Label1.Text = Label1.Text + "삭제에 실패했습니다.";

            BindProduct(); //드롭다운리스트 갱신
            ClearData(); //데이터 갱신
            //SetInfo();
        }

        private void ClearData()
        {
            Label1.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
}