<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet"  href="header.css">
    <title>Document</title>
    
    
    <style>
    @charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Poppins:wght@400;500;600;700&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}



a {
    text-decoration: none;
}

li {
    list-style: none;
}
:root {
    --poppins: 'Poppins', sans-serif;
    --lato: 'Lato', sans-serif;

    --light: #F9F9F9;
    --grey: #eee;
    --dark-grey: #AAAAAA;
    --dark: #342E37;
    --red: #DB504A;
    --yellow: #FFCE26;
    --light-yellow: #FFF2C6;
    --orange: #FD7238;
    --light-orange: #FFE0D3;
}

html {
    overflow-x: hidden;
}

body.dark {
    --light: #0C0C1E;
    --grey: #060714;
    --dark: #FBFBFB;
}

body.dark {
    --light: #0C0C1E;
    --grey: #060714;
    --dark: #FBFBFB;
}


/* CONTENT */
#content {
    position: relative;
    width: calc(100% - 280px);
    left: 280px;
    transition: .3s ease;
}
#sidebar.hide ~ #content {
    width: calc(100% - 60px);
    left: 60px;
}


/* SIDEBAR */
#sidebar {
    position: fixed;
    top: 0;
    left: 0;
    width: 280px;
    height: 100%;
    background: #1a1a1a;
    z-index: 2000;
    font-family: var(--lato);
    transition: .3s ease;
    overflow-x: hidden;
    scrollbar-width: none;
}


#sidebar.hide {
    width: 60px;
}


#sidebar .brand {
    font-size: 14px;
    font-weight: 700;
    height: 56px;
    display: flex;
    align-items: center;
    color: var(--yellow);
    position: sticky;
    top: 20px;
    left: 0;
    background: #1a1a1a;
    z-index: 500;
    padding-bottom: 140px;
    box-sizing: content-box;
}
#sidebar .brand .bx {
    margin: 0;
    padding: 0;
    font-size: 55px;
    min-width: 60px;
    display: flex;
    justify-content: center;
}

.username{
    font-size: 20px;
}

.email{
    font-style: italic;
    color: #cfe8ff;
}


#sidebar .side-menu {
    width: 100%;
    margin-top: 48px;
}
#sidebar .side-menu li {
    height: 48px;
    background: transparent;
    margin-left: 6px;
    border-radius: 48px 0 0 48px;
    padding: 4px;
}
#sidebar .side-menu li.active {
    background: #FEA116;
    position: relative;
}
#sidebar .side-menu li.active::before {
    background: #1a1a1a;
    content: '';
    position: absolute;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    top: -40px;
    right: 0;
    box-shadow: 20px 20px 0 #FEA116;
    z-index: -1;
}
#sidebar .side-menu li.active::after {
    content: '';
    background: #1a1a1a;
    position: absolute;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    bottom: -40px;
    right: 0;
    box-shadow: 20px -20px 0 #FEA116;
    z-index: -1;
}
#sidebar .side-menu li a {
    width: 100%;
    height: 100%;
    background: #1a1a1a;
    display: flex;
    align-items: center;
    border-radius: 48px;
    font-size: 16px;
    color: #fff;
    white-space: nowrap;
    overflow-x: hidden;
}
#sidebar .side-menu.top li.active a {
    color: var(--yellow);
}
#sidebar.hide .side-menu li a {
    width: calc(48px - (4px * 2));
    transition: width .3s ease;
}
#sidebar .side-menu li a.logout {
    color: var(--red);
}
#sidebar .side-menu.top li a:hover {
    color: var(--yellow);
}
#sidebar .side-menu li a .bx {
    min-width: calc(60px  - ((4px + 6px) * 2));
    display: flex;
    justify-content: center;
}
    
    </style>
    
    
</head>
<body>
	<section id="sidebar">
    <div class="brand">
        <i class='bx bxs-user-circle'></i>
        <div>
            <p class="username"> </p>
            <p class="email"> </p>
        </div>
    </div>
    <ul class="side-menu top">
        <li class="php">
            <a href="../Dashboard/adminDash.jsp">
                <i class='bx bxs-dashboard' ></i>
                <span class="text">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="../Movie/movie.jsp">
                <i class='bx bxs-camera-movie'></i>
                <span class="text">Movies</span>
            </a>
        </li>
        <li>
            <a href="../TVseries/Tv.jsp">
                <i class='bx bxs-tv' ></i>
                <span class="text">TV Series</span>
            </a>
        </li>
        <li>
            <a href="../Contact/contacts.jsp">
                <i class='bx bxs-crown'></i>
                <span class="text">Premier Users</span>
            </a>
        </li>
        <li >
            <a href="../Account/accounts.jsp">
                <i class='bx bxs-group' ></i>
                <span class="text">Accounts</span>
            </a>
        </li>
    </ul>
    <ul class="side-menu">
        <li>
            <a href="../../logout.php" class="logout">
                <i class='bx bxs-log-out-circle' ></i>
                <span class="text">Logout</span>
            </a>
        </li>
    </ul>
</section>

<script>
    const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');

    allSideMenu.forEach(item=> {
        const li = item.parentElement;

        item.addEventListener('click', function () {
            allSideMenu.forEach(i=> {
                i.parentElement.classList.remove('active');
            })
            li.classList.add('active');
        })
    });

    const menuBar = document.querySelector('#content nav .bx.bx-menu');
    const sidebar = document.getElementById('sidebar');

    menuBar.addEventListener('click', function () {
        sidebar.classList.toggle('hide');
    })

</script>
</body>
</html>