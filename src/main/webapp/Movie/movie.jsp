<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList,Movie.Movie" %>
    <%@ include file="/Header/adminHeader.jsp" %>
    
    <%
    	
    %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin_Movies</title>
	<link rel="stylesheet" href="movie.css">
</head>
<body>
	<div class="container1">
	 	<div class="head-title">
    		<div class="left">
        	<h1>Movies</h1>
        	<ul class="breadcrumb">
            <li><i class='bx bx-chevron-right' ></i></li>
			</ul>
    	</div>
    </div>
	<div class="table-data">
    	<div class="order">
        	<div class="head">
            <h3>Movies In List</h3>
        	</div>
        <table>
            <thead>
            <tr>
                <th>MoviID</th>
                <th>Movie Name</th>
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
            	<td><a href=""><i class='bx bxs-edit'></i></a></td>
            	<td><a href="#" onclick=""><i class='bx bxs-trash'></i></a></td>
            </tr>
            
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

    function delcontact(eid){
        delid.value=eid;
        delform.submit();
    }

</script>
	</div>
</body>
</html>