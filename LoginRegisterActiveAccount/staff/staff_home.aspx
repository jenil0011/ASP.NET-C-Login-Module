<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staff_home.aspx.cs" Inherits="LoginRegisterActiveAccount.staff.staff_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

   <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js" defer></script>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>

    <link rel="stylesheet" href="/css/style1.css"/>

    <title></title>
    
</head>
<body>
    
<div>
<header class="header">

 <section class="flex">
     <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/staff/staff_home.aspx" class="logo" >Staff Dashboard</asp:HyperLink>

      <nav class="navbar">
         <a href="../admin/dashboard.php">home</a>
         <a href="../admin/products.php">products</a>
         <a href="../admin/placed_orders.php">orders</a>
         <a href="../admin/admin_accounts.php">admins</a>
         <a href="../admin/users_accounts.php">users</a>
         <a href="../admin/messages.php">messages</a>
         <a href="../admin/feedback.php">feedbacks</a>
      </nav>

        <div class="icons">
            <asp:HyperLink ID="HyperLink11" runat="server" class="fas fa-user-cog"  NavigateUrl="~/staff/staff_changepassword.aspx"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink10" runat="server" class="fa fa-sign-out" onclick="return confirm('Are you sure,you want to logout from the website?');" NavigateUrl="~/staff/staff_logout.aspx"></asp:HyperLink>
    
        </div>
      
</section>


</header>

</div>

<section class="dashboard">

   <div class="box-container">

      <div class="box">
         <h3>Current User: <%: Session["first_name"] ?? "" %> </h3>
          <asp:HyperLink ID="HyperLink1" class="btn" runat="server" NavigateUrl="~/staff/staff_changepassword.aspx">Update Profile</asp:HyperLink>
      </div>

      <div>
      <div class="box">
         
         <h3>Total Pending Amount : Rs./-</h3>
         <a href="#" class="btn">see orders</a>
      </div>
      </div>

      <div>
      <div class="box">
     
         <h3>Total Completed Amount : Rs./-</h3>
         <a href="#" class="btn">see orders</a>
      </div>
      </div>
    
        <div>
         <div class="box">

            <h3>Total Orders : Rs./-</h3>
            <a href="#" class="btn">see orders</a>
         </div>
         </div>

   </div>

</section>



       

<footer class="footer">

   <div class="credit">&copy; copyright @ 2023 by <span>STAFF </span> </div>

</footer>

</body>
</html>


