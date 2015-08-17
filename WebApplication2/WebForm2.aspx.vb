Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Form("TITLE") = "" Then
            'そのまま下のHTMLを実行
        Else
            '書き込み関数を呼ぶ(外側に出したかったので)
            Call TEST_WRITE(Request.Form("TITLE"), Request.Form("MEMO"))
        End If   'Ｉｆ文もここで終わり


    End Sub


    Sub TEST_WRITE(strTITLE, strMEMO)
        Dim db, strSQL

        'ADO DB Connection オブジェクトを作成する、英文そのままじゃん
        db = Server.CreateObject("ADODB.Connection")

        '.Provider？プロバイダー？通信会社？じゃなくって
        'データアクセスにはJet.OLEDB.4.0を使うことを設定
        db.Provider = "Microsoft.Jet.OLEDB.4.0"
        Debug.WriteLine(Server.MapPath("App_Data"))

        '次に、接続ＤＢの位置を渡すので、Server.MapPathで変換して渡す
        db.ConnectionString = Server.MapPath("App_Data\SlefAsp.mdf")

        'やっとデータベースを開ける
        db.open(Server.MapPath("App_Data\SlefAsp.mdf"))

        'SQL文を作る
        strSQL = "INSERT INTO Book ([isbn], [title], [price], [publish], [published], [cdrom]) VALUES (1,'abc',0,'abc',sysdatetime(),0)"
        'strSQL = strSQL & "'" & strTITLE & "'"  'タイトル
        'strSQL = strSQL & ",'" & strMEMO & "'"  'メモ
        'strSQL = strSQL & ", #" & Now & "#)"     '現在時刻、日付型は＃で囲む

        'SQL文を発行
        db.Execute(strSQL)

        'オマケで画面にデータ表示
        Response.Write("<HR>strSQL=[" & strSQL & "]を発行しました<HR>")

        'データベースも閉じようよ
        db.Close()

        'お行儀よくオブジェクトも開放しましょう（通常は自動的に解放されるけど）
        db = Nothing

    End Sub

End Class