Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'SQLSender("SELECT * FROM 答案データ where 答案ID = 1")

    End Sub

    Protected Sub Button1_OnClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles button1.Click

        SQLSender("INSERT INTO 答案データ VALUES (" + TextBox1.Text + ",'abc',1,1,1,'2000/1/1','n0',0)")

    End Sub

    Protected Sub Button2_OnClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles button2.Click
        
        SQLSender("DELETE FROM 答案データ WHERE [答案ID] = " + TextBox1.Text + "")

    End Sub

    Private Sub SQLSender(str As String)
        Dim con As New System.Data.SqlClient.SqlConnection("Data Source=DEMO-PC\SQLEXPRESS2;Initial Catalog=sampleDB;Integrated Security=True;")

        con.Open()

        Dim cmd As New System.Data.SqlClient.SqlCommand(str, con)

        Dim OBJ As Integer
        OBJ = Convert.ToInt32(cmd.ExecuteNonQuery())
        If OBJ > 0 Then
            Label3.Text = "Data is successfully inserted in database"
        Else
            Label3.Text = "Data is not inserted in database"
        End If

        con.Close()

    End Sub


End Class