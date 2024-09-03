<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script> 
  </head>

<body style="font-family: Segoe UI light;">
    <style type="text/css">
        .header{

  height: 100vh;
  background-size: cover;
  background-position: center;
        }


  #loginbox{
  position: absolute;
  top: 40%;
  left:25%;
  z-index: 999;
  text-align: center;
  padding: 60px 32px;
  width: 500px;
  transform: translate(-50%,-50%);
  background: rgba(255,255,255,0.04);
  box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
        }
.panel .panel-heading{background-color: none;}
.panel-heading .panel-title{
   color: #04dbc0;
  font-size: 30px;
  font-weight: 600;
  font-family: poppins;
        }
.btn{
  height: 100%;
  width: 100%;
  background: transparent;
  border: none;
  outline: none;
  color: #222;
  font-size: 16px;
  font-family:poppins;
}
 .btn{
  background: #04dbc0;
  border: 1px solid #2691d9;
  color: white;
  font-size: 18px;
  letter-spacing: 1px;
  font-weight: 600;
  cursor: pointer;
  font-family: 'Montserrat',sans-serif;
}
.btn:hover{
    transition: 1s;
  background: #9b51e0;
  border: 1px solid #9b51e0;
}
.alert{
    margin-top: -700px;
    text-align: center;
    align-content: center;
    width: 330px;
    font-size: 16px;
    font-family: poppins;
    transition: 0.5;
    margin-left: 1150px;
}
.login h3{font-weight: 900;margin-bottom: -10px;}
    </style>
}

<div class="header">    
    <div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Billing System</div>
                        
                    </div>   
                    <div class="login">
                        <h3>Login Panel</h3>
                        
                    </div>  

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                            <form action="#" id="loginform" class="form-horizontal" role="form" method="POST">
                                    
                                <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="Username">                                        
                                    </div>
                                
                                <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="password" placeholder="Password">
                                    </div>
                                    

                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->
                                    <div class="col-sm-12 controls">
                                    <button type="submit" class="btn btn-large btn-success" title="Log In" name="login" value="Admin Login">Login</button>
                                    </div>
                                </div>
  
                             </form>     
                    </div>                     
                </div>  
        </div>
        
    </div>
</div>
</body>

<?php  
 session_start();  
 include ('db_config.php');
 try  
 {  
      if(isset($_POST["login"]))  
      {  
                $query = "SELECT * FROM login WHERE username = :username AND password = :password";  
                $statement = $connect->prepare($query);  
                $statement->execute(  
                     array(  
                          'username'     =>     $_POST["username"],  
                          'password'     =>     $_POST["password"]  
                     )  
                );  
                $count = $statement->rowCount();  
                if($count > 0)  
                {  
                     $_SESSION["username"] = $_POST["username"];  
                     header("location:invoice.php");  
                }  
                else  
                {  
                    echo "<div class='container alert alert-danger alert-dismissible' role='alert'>
                    Invalid Username and Password
                    <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                        <span aria-hidden='true'>&times;</span>
                    </button>
                    </div>"; 
                }  
         
      }  
 }  
 catch(PDOException $error)  
 {  
      $message = $error->getMessage();  
 }  
 ?> 


</html>