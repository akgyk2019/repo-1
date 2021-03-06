<?php
 session_start();

 require_once "library/inc.connection.php";
 require_once "library/inc.library.php";
 opendb();
//cari data toko
	$qri        = "SELECT * FROM ma_toko";
	$res        = querydb($qri);
	$rec        = arraydb($res);
	$namaToko   = $rec['nm_toko'];
	$alamatToko = $rec['almt_toko'];
	$kota       = $rec['kota'];
	$logoToko   = $rec['logo'];
	$telpToko   = $rec['tlp_toko'];
	$faxToko    = $rec['fax_toko'];

 //cari data user 
 
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LOGIN </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes"> 
    
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="css/font-awesome.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
<link rel="shortcut icon" href="img/<?php echo $logoToko ?>" />
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/pages/signin.css" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<div class="navbar navbar-fixed-top">
	<div class="navbar navbar-inverse">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		 
			</a>
			<a class="brand" href="?open=home">
				<?php echo $namaToko ?>
			</a>
			
			<a class="brand" href="login.php">
			</a>		
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
					<li class="">						
					</li>
				</ul>	
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
	</div> <!-- /navbar-inner -->
</div> <!-- /navbar -->

	<center>
		<br>
	<h4>
		E.R.P<br>
		 <!--
		<img src="img/<?php //echo $logoToko ?>" width="100"> -->
	</h4>
	</center>

	<div class="account-container">
	<div class="content clearfix">
	<span id="loginMsg"></span>	
		
		<form name="form" id="loginForm" method="post" action="">
			<h3>Login </h3><br>
			<div class="login-fields">		
				<div class="field">
					<label for="username">Username</label>
					<input type="text" id="username" name="username" value="" placeholder="username" class="login username-field" required />

				</div> <!-- /field -->
				
				<div class="field">
					<label for="password">Password:</label>
					<input type="password" id="password" name="password" value="" placeholder="password" class="login password-field" required />
				</div> <!-- /password -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">		
				<input type="submit" class="button btn btn-success btn-large" value="SUBMIT" name="" id="loginBtn">							
				
				<button type="reset" class="button btn btn-danger btn-large"> <i class="fa fa-undo"> </i> Reset</button>
			</div> <!-- .actions -->
		</form>
		
	</div> <!-- /content -->
</div> <!-- /account-container -->
	
		

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/signin.js"></script>
	<script src="js/bootstrap.min.js"></script>


<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		//Periksa apakah user id dan password telah diisi
		$("#loginBtn").click(function(){
			$("#loginForm").submit(function(e){return false;});
			var name       = $("#username").val();
			var nameLength = name.length;
			var pw         = $("#password").val();
			var pwLength   = pw.length;
			
			//apabila data user id dan pw tidak kosong -> kirim data via ajax. 
			if((nameLength && pwLength) >1){

				$.ajax({
					type:"POST",
					url :"login_validasi.php",
					data:{checkUser:'',uid:name,pwrd:pw},
					//dataType: "json",
					success:function(html){
						$("#loginMsg").html(html);
						//setTimeout(function() {$('.alert').hide();}, 5000);		
					},
					error: function() {$('#loginMsg').html('<p>Ajax Bermasalah !!!</p>');},					
				});
			
			//return false;
					
			} 
			//alert(name);
		});		
	});	
</script>
<style type="text/css">
    .navbar-inverse {
    background-color: #000000;
    font-size:18px;
    }
</style>
	
</body>

</html>
