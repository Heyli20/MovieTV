<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/Header/adminHeader.jsp" %>
    
<!Doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="account.css">
    
    
    <title>Movie Hub</title>
</head>
<body>
<div class="head-title">
    <div class="left">
        <h1>Accounts</h1>
        <ul class="breadcrumb">
            <li><i class='bx bx-chevron-right' ></i></li>

        </ul>
    </div>

</div>
<div class="table-data">
    <div class="order">
        <div class="head">
            <h3>Current users</h3>
            <form action="#" method="post">
                <input type="text" id="accsearch" name="accsearch" placeholder="Enter name">
                <button type="submit" id="adminsearchBtn"><i class='bx bx-search' ></i>	</button>
            </form>
        </div>
        <table>
            <thead>
            <tr>
                <th>User</th>
                <th>Email</th>
                <th>Date</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            	<td></td>
            	<td></td>
            	<td></td>
            	<td><a href=""><i class='bx bxs-edit'></i></a></td>
            	<td><a href="#" onclick=""><i class='bx bxs-trash'></i></a></td>
            </tbody>
        </table>
        <form action="#" id="delform" method="post">
            <input type="text" id="delid" name="delid">
        </form>
    </div>
</div>

<script>
    var delform = document.getElementById("delform");
    var delid = document.getElementById("delid");

    function deluser(eid){
        delid.value=eid;
        delform.submit();
    }
</script>

</body>
</html>