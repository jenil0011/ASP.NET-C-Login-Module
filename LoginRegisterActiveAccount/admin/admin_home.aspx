<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="LoginRegisterActiveAccount.admin.admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

   <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js" defer></script>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>

    <link rel="stylesheet" href="/css/style2.css"/>

    <title></title>
    <style>

    </style>
</head>
<body>
    <form id="form1" runat="server">
<div>
<header class="header">

   <section class="flex"> 
<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/admin/admin_home.aspx" class="logo" >Admin Dashboard</asp:HyperLink>      

      <nav class="navbar">
          <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/admin/admin_home.aspx">Home</asp:HyperLink>
          <asp:HyperLink ID="HyperLink5" runat="server">Orders</asp:HyperLink>
          <asp:HyperLink ID="HyperLink6" runat="server">Products</asp:HyperLink>
          <asp:HyperLink ID="HyperLink7" runat="server">Contacts</asp:HyperLink>
          <asp:HyperLink ID="HyperLink8" runat="server">Feedback</asp:HyperLink>
          <asp:HyperLink ID="HyperLink9" runat="server">Category</asp:HyperLink>

      </nav>
    
      <div class="icons">
          <asp:HyperLink ID="HyperLink11" runat="server" class="fas fa-user-cog"  NavigateUrl="~/admin/admin_changepassword.aspx"></asp:HyperLink>
          <asp:HyperLink ID="HyperLink10" runat="server" class="fa fa-sign-out" onclick="return confirm('Are you sure,you want to logout from the website?');" NavigateUrl="~/admin/admin_logout.aspx"></asp:HyperLink>
    
	  </div>
	
	  
   </section>

</header>

     </div>

        <section class="dashboard">

   <div class="box-container">

      <div class="box">
         <h3>Current User: <%: Session["first_name"] ?? "" %> </h3>
          <asp:HyperLink ID="HyperLink1" class="btn" runat="server" NavigateUrl="~/admin/admin_changepassword.aspx">Update Profile</asp:HyperLink>
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

    
</form>

   

<footer class="footer">

   <div class="credit">&copy; copyright @ 2023 by <span>TOYMANIA</span> </div>

</footer>

</body>
</html>

