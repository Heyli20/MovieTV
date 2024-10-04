<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/Header/adminHeader.jsp" %>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin_Movies</title>
	<link rel="stylesheet" href="Tv.css">
</head>
<body>
	<div class="container1">
	 	<div class="head-title">
    		<div class="left">
        	<h1>TV Series</h1>
        	<ul class="breadcrumb">
            <li><i class='bx bx-chevron-right' ></i></li>
			</ul>
    	</div>
    </div>
	<div class="table-data">
    	<div class="order">
        	<div class="head">
            <h3>TV Series In List</h3>
        	</div>
        <table>
            <thead>
            <tr>
                <th>SeriesID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Upload Date</th>
                <th>Contributor ID</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            	<td></td>
            	<td></td>
            	<td></td>
            	<td></td>
            	<td></td>
            	<td><a href="#" onclick=""><i class='bx bxs-trash'></i></a></td>
            </tr>
            
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
	</div>
</body>
</html>