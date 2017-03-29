<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="jquerylearn.test" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html>
<head>
    <style> 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}
</style>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js">
</script>
<script>
    $(document).ready(function () {
        $("button").click(function () {
            $("p").hide();
        });
    });

    $(document).ready(function () {
    });

    $(document).ready(function () {
        $("#btnclick").click(function () {
            $("#test3").val("Dolly Duck")
            alert('"Text: " + $("#txttest").GetText()');
            $("p").hide();
            $("#div1").fadeIn();
            $("#div2").fadeIn("slow");
            $("#div3").fadeIn(3000);
            $("#panel").slideDown("slow");
        });
    });
</script>
</head>
<body>
    
<h2>This is a heading</h2>

<p>This is a paragraph.</p>
<p>This is another paragraph.</p>
    <div id="flip">Click to slide down panel</div>
<div id="panel">Hello world!</div>
    <div id="div1" style="width:80px;height:80px;display:none;background-color:red;"></div><br>
<div id="div2" style="width:80px;height:80px;display:none;background-color:green;"></div><br>
<div id="div3" style="width:80px;height:80px;display:none;background-color:blue;"></div>
    <form runat="server">
        <p>Input field: <input type="text" id="test3" value="Mickey Mouse"></p>
        <dx:ASPxTextBox ID="txttest" runat="server" Width="170px" ClientInstanceName="txttest"></dx:ASPxTextBox>
        <dx:ASPxButton ID="btnclick" runat="server" Text="click" ClientInstanceName="btnclick" AutoPostBack="False"></dx:ASPxButton>
    </form>

<button>Click me</button>
    
</body>
</html>