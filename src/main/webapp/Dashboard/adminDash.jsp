<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/Header/adminHeader.jsp" %>
     
     
     
     
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="Dashboard.css">
    
    <style>
	    *,
	        *:before,
	        *:after {
	            padding: 0;
	            margin: 0;
	            box-sizing: border-box;
	        }
	        body {
	            background-color: #080710;
	        }
	        .background {
	            width: 430px;
	            height: 520px;
	            position: absolute;
	            transform: translate(-50%, -50%);
	            left: 50%;
	            top: 50%;
	        }
	        .background .shape {
	            height: 200px;
	            width: 200px;
	            position: absolute;
	            border-radius: 50%;
	        }
	        .shape:first-child {
	            background: linear-gradient(#1845ad, #23a2f6);
	            left: -80px;
	            top: -80px;
	        }
	        .shape:last-child {
	            background: linear-gradient(to right, #ff512f, #f09819);
	            right: -30px;
	            bottom: -80px;
	        }
	        form {
	            height: fit-content;
	            width: 450px;;
	            background-color: rgba(255, 255, 255, 0.13);
	            position: absolute;
	            transform: translate(-50%, -50%);
	            top: 50%;
	            left: 50%;
	            border-radius: 10px;
	            backdrop-filter: blur(10px);
	            border: 2px solid rgba(255, 255, 255, 0.1);
	            box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
	            padding: 50px 60px;
	        }
	        form * {
	            font-family: 'Poppins', sans-serif;
	            color: #ffffff;
	            letter-spacing: 0.5px;
	            outline: none;
	            border: none;
	        }
	        form h3 {
	            font-size: 32px;
	            font-weight: 500;
	            line-height: 42px;
	            text-align: center;
	        }
	        label {
	            display: block;
	            margin-top: 30px;
	            font-size: 16px;
	            font-weight: 500;
	        }
	        input {
	            display: block;
	            height: 50px;
	            width: 100%;
	            background-color: rgba(255, 255, 255, 0.07);
	            border-radius: 3px;
	            padding: 0 10px;
	            margin-top: 8px;
	            font-size: 14px;
	            font-weight: 300;
	        }
	        ::placeholder {
	            color: #e5e5e5;
	        }
	        button {
	            margin: 20px 0 25px 0;
	            width: 100%;
	            background-color: #ffffff;
	            color: #080710;
	            padding: 15px 0;
	            font-size: 18px;
	            font-weight: 600;
	            border-radius: 5px;
	            cursor: pointer;
	        }
	        #showErr {
	            margin: 10px 0 0 0;
	            display: none;
	            color: #ff0000;
	        }

	</style>
    <title>AdminHub</title>
</head>
<body>

	<!-- CONTENT -->
<section id="content">



    <main>
        <div class="head-title">
            <div class="left">
                <h1>Dashboard</h1>
                <ul class="breadcrumb">
                    <li><i class='bx bx-chevron-right' ></i></li>

                </ul>
            </div>

        </div>

        <ul class="box-info">
            <li>
                 <i class='bx bxs-group' ></i>
                <span class="text">
					<p>Usres</p>
				</span>
            </li>
            <li>
               <i class='bx bxs-camera-movie'></i>
                <span class="text">
						<p>Movies</p>
					</span>
            </li>
            <li>
                <i class='bx bxs-tv' ></i>
                <span class="text">
						<p>TV Series</p>
					</span>
            </li>
        </ul>


        <div class="table-data">
            <div class="order">
                <div class="head">
                    <a href="addAdmin.jsp"><button id="addAdmin"><i class='bx bxs-plus-circle'></i> Add new admin</button></a>
                </div>
                <table>
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                    </tr>
                    </thead>
                    <tbody>
                   
                    <tr>
                        <td> </td>
                        <td> </td>
                        <td><a href="#" onclick=""><i class='bx bxs-trash'></i></a></td>
                    </tr>
                    
                    </tbody>
                </table>
                <form action="#" id="delform" method="post">
                    <input type="text" id="delid" name="delid">
                </form>
            </div>
            <div class="todo">
                <div class="head">
                    <h3 id="todoTopic">To do</h3>
                    <div class="addinttodo">
                        <button id="addtodo"><i class='bx bxs-plus-circle'></i> Add to do</button>
                        <div class="cont" id="cont">
                            <form action="toDo.jsp" method="post"  id="formcont">
                                <input type="text" id="todoadding" name="todoadding">
                                <button type="submit" id="addbtn"><i class='bx bx-plus-circle'></i> Add</button></form>
                        </div>
                    </div>
                </div>
                <ul class="todo-list">
                    
                    <li class="completed">
                        <p> </p>
                        <i class='bx bx-minus' onclick="tododel( )"></i>
                    </li>
                  
                </ul>
                <form action="#" method="post" id="tdelform">
                    <input type="text" id="tdelinp" name="tdelinp">
                </form>
            </div>
        </div>
    </main>

</section>
<script>
    var delform = document.getElementById("delform");
    var delid = document.getElementById("delid");
    var addtodo = document.getElementById('addtodo');
    var fromcont = document.getElementById('cont');
    var tdelform = document.getElementById('tdelform');
    var tdelinp = document.getElementById('tdelinp');

    function deladmin(eid){
        delid.value=eid;
        delform.submit();
    }

    addtodo.addEventListener('click',function (){
        fromcont.classList.toggle('active');
    });

    function tododel(todoid){
        tdelinp.value = todoid;
        tdelform.submit();
    }

</script>
</body>
</html>