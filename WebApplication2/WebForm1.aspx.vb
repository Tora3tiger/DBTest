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

        If Not str = "" Then
            con.Open()

            Dim cmd As New System.Data.SqlClient.SqlCommand(str, con)

            Dim OBJ As Integer

            Try
            OBJ = Convert.ToInt32(cmd.ExecuteNonQuery())
            If OBJ > 0 Then
                Label3.Text = "Data is successfully inserted in database"
            Else
                Label3.Text = "Data is not inserted in database"
                End If

                Response.Redirect("WebForm1.aspx")

            Catch ex As System.Data.SqlClient.SqlException
                Label3.Text = ex.ErrorCode
                Label3.Text = Label3.Text + ex.Message

            Catch ex As Exception
                Label3.Text = ex.ToString
            End Try

            con.Close()
        End If


    End Sub

    Private Sub grid_RowUpdating(sender As Object, e As ListViewUpdateEventArgs) Handles ListView1.ItemUpdating
        If Not Page.IsValid Then
            e.Cancel = True
        Else
        End If


    End Sub

End Class