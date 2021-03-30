<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
   body {
	background-image: url("https://wallpaperaccess.com/full/254391.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}
.button {
	border-radius: 4px;
	background-color: #34495e;
	border: none;
	color: #ffffff;
	text-align: auto;
	font-size: 28px;
	padding: 20px;
	width: 150px;
	height: 150px;
	transition: all 0.5s;
	cursor: pointer;
	align-content: center;

}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}
</style>

</head>

<body bgcolor="#95a5a6">
<div align="center">
	<a href="r_login.jsp">
		<button class="button" align="center">

			<span> Back to Login Page
			</span>
		</button>
	</a>

	</div>
</body>
</html>