<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="WebApplication2.WebForm2" aspcompat="True"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    データを入力して、送信ボタンを押してください。<br>

タイトル：
<INPUT TYPE="text" SIZE="20" NAME="TITLE" VALUE="タイトル～">
<br>
メモ：
<INPUT TYPE="text" SIZE="80" NAME="MEMO" VALUE="好きな文字を入れてください">
<br>
<INPUT TYPE="submit" VALUE="送　信">
<INPUT TYPE="reset"  VALUE="クリア">



    </div>
    </form>
</body>
</html>
