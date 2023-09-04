using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class mainpage : System.Web.UI.Page
{

    //string connection = "Data Source=HKAYA-L\\SQLEXPRESS;Initial Catalog=Sefa;Integrated Security=True";
    string connection = "Data Source=localhost;Initial Catalog=Sefa;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(connection);
        string komut = string.Format("SELECT [User_ID], [Login_name], [Password], [First_name], [Last_name], [Authority_Level], [Birthday], [Salary] FROM Users");

        baglanti.Open();
        SqlCommand command = new SqlCommand(komut, baglanti);
        SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
        DataSet dataSet = new DataSet();
        dataAdapter.Fill(dataSet);
        DataList1.DataSource = dataSet;
        DataList1.DataBind();
        baglanti.Close();
    }

    protected void DropDownList1_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}