<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/Header/adminHeader.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="contacts.css">
    <title>Moon house restaurant</title>
</head>
<body>
<div class="head-title">
    <div class="left">
        <h1>Premier User</h1>
        <ul class="breadcrumb">
            <li><i class='bx bx-chevron-right' ></i></li>

        </ul>
    </div>

</div>
<div class="table-data">
    <div class="order">
        <div class="head">
            <h3>Current Users</h3>
        </div>
        <table>
            <thead>
            <tr>
            	<th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Sub_Date</th>
            </tr>
            </thead>
            <tbody>
            
            </tbody>
        </table>
        <form action="seeMore.php" method="post" id="seemorefrom">
            <input type="text" id="semoreinp" name="seemoreinp">
        </form>
        <form action="#" id="delform" method="post">
            <input type="text" id="delid" name="delid">
        </form>
    </div>
</div>
<script>
    var delform = document.getElementById("delform");
    var delid = document.getElementById("delid");

    function delcontact(eid){
        delid.value=eid;
        delform.submit();
    }

    var seemoreform = document.getElementById('seemorefrom');
    var seemoreinp = document.getElementById('semoreinp');

    function seecont(sid){
        console.log(sid);
        seemoreinp.value=sid;
        seemoreform.submit();
    }

</script>
</body>
</html>