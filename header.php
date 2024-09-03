<!DOCTYPE html>
<html lang="en" dir="ltr">
<style type="text/css">
   @import url('https://fonts.googleapis.com/css?family=Montserrat:700|Noto+Sans|Open+Sans:500,700&display=swap');
*{
   font-family: poppins;
}
body::selection{
  color: white;
  background: #0089f2;
}
body::-webkit-scrollbar{
  width: 8px;
}
body::-webkit-scrollbar-track{
  background: #000000;
  border-radius: 10px;
  box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
}
body::-webkit-scrollbar-thumb{
  border-radius: 10px;
  box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
  background: black;
}
body::-webkit-scrollbar-thumb:hover{
  background: linear-gradient(#2691d9,#954eb1);
}
nav{
  position: fixed;
  top: 0;
  left: 0;
  height: 80px;
  width: 100%;
  background: white;
  box-shadow: 1px 1px 15px silver;
  z-index: 1;
  transition: top 0.3s;
}
label{
  line-height: 80px;
  padding: 0 80px;
  font-size: 30px;
  color: #0089f2;
  user-select: none;
}
nav ul{
  list-style: none;
  position: absolute;
  right: 0;
  top: 0;
  display: flex;
  line-height: 80px;
  margin-right: 50px;
}
nav ul li{
  margin: 0 5px;
}
nav ul li.active a{
  color: #0089f2;
  box-shadow: inset 0 0 5px #0a87f5,
              inset 0 0 10px #85c3fa,
              inset 0 0 15px #b6dbfc;
}
nav ul li:hover a{
  color: #0089f2;
  box-shadow: inset 0 0 5px #0a87f5,
              inset 0 0 10px #85c3fa,
              inset 0 0 15px #b6dbfc;
}
nav ul li a{
  color: grey;
  text-decoration: none;
  list-style: none;
  padding: 10px 20px;
  border-radius: 5px;
  border: 1px solid transparent;
  text-decoration: none;
  text-transform: uppercase;
  font-family:poppins;
}
nav ul li a.active2{
  color: #0089f2;
  box-shadow: inset 0 0 5px #0a87f5,
              inset 0 0 10px #85c3fa,
              inset 0 0 15px #b6dbfc;
}
.content{
  position: absolute;
  top: 100px;
  padding: 0 80px;
}
.content h1.header{
  font-size: 55px;
}
.content p{
  padding: 10px 0;
  font-size: 18px;
  text-align: justify;
  font-family: 'Noto Sans', sans-serif;
}
.content h2{
  font-size: 45px;
}
.content ul{
  padding: 0 0 10px 30px;
}
.content ul li{
  font-size: 20px;
  font-family: 'Noto Sans', sans-serif;
}
center{
  color: #0089f2;
  font-size: 22px;
  margin-bottom: 20px;
}
</style>
 
      <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
 
   <body>
      <nav>
         <label>Billing System</label>
         <ul>
            <li class="active" ><a href="invoice.php">Home</a></li>
            <li><a href="invoice.php?add=1">Invoice</a></li>
            <li><a href="logout.php">Logout</a></li>
         </ul>
      </nav>
    
      <script>
         let navbar = document.querySelector('nav');
         var scrollPrev = window.pageYOffset;
         window.onscroll = function(){
           var scrollCur = window.pageYOffset;
           if(scrollPrev > scrollCur){
             navbar.style.top = "0";
           }else{
             navbar.style.top = "-90px";
         
           }
           scrollPrev = scrollCur;
         }
      </script>
      <script>
         $('nav ul li').click(function(){
           $(this).addClass("active").siblings().removeClass("active");
         });
      </script>
   </body>
</html>