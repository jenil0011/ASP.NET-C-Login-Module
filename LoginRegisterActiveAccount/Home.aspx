<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LoginRegisterActiveAccount.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

   <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js" defer></script>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>

    <link rel="stylesheet" href="css/style.css"/>

    <title></title>
    <style>

    </style>
</head>
<body>
    <form id="form1" runat="server">
<div>
<header class="header">

   <section class="flex"> 
<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Home.aspx" class="logo" >ToyShop</asp:HyperLink>      

      <nav class="navbar">
          <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
          <asp:HyperLink ID="HyperLink5" runat="server">Orders</asp:HyperLink>
          <asp:HyperLink ID="HyperLink6" runat="server">Products</asp:HyperLink>
          <asp:HyperLink ID="HyperLink7" runat="server">Contacts</asp:HyperLink>
          <asp:HyperLink ID="HyperLink8" runat="server">Feedback</asp:HyperLink>
          <asp:HyperLink ID="HyperLink9" runat="server">Category</asp:HyperLink>

      </nav>
    
      <div class="icons">
          <asp:HyperLink ID="HyperLink11" runat="server" class="fas fa-user-cog"  NavigateUrl="~/ChangePassword.aspx"></asp:HyperLink>
          <asp:HyperLink ID="HyperLink10" runat="server" class="fa fa-sign-out" onclick="return confirm('Are you sure,you want to logout from the website?');" NavigateUrl="~/Logout.aspx"></asp:HyperLink>
    
	  </div>
	
	   

   </section>

</header>

     </div>

<div class="home-bg"> 

<section class="home">

   <div class="swiper home-slider">
   
   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/homeimg1.png" alt="">
         </div>
         <div class="content">
            <span>upto 40% off</span>
            <h3>on latest toy cars</h3>
            <a href="shop.php" class="btn">shop now</a>
         </div>
      </div>

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/homeimg2.png" alt="">
         </div>
         <div class="content">
            <span>upto 50% off</span>
            <h3>on brand new lego toys, unlock new adventures</h3>
            <a href="shop.php" class="btn">shop now</a>
         </div>
      </div>

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/homeimg3.png" alt="">
         </div>
         <div class="content">
            <span>upto 50% off</span>
            <h3>on newly launched toy planes</h3>
            <a href="shop.php" class="btn">shop now</a>
         </div>
      </div>

   </div>

      <div class="swiper-pagination"></div>

   </div>

</section>

</div>    


</form>

    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

    var swiper = new Swiper(".home-slider", {
        loop: true,
        spaceBetween: 20,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });


    var swiper = new Swiper(".products-slider", {
        loop: true,
        spaceBetween: 20,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        breakpoints: {
            550: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 2,
            },
            1024: {
                slidesPerView: 3,
            },
        },
    });



</script>

<footer class="footer">

   <div class="credit">&copy; copyright @ 2023 by <span>TOYMANIA</span> </div>

</footer>

</body>
</html>

