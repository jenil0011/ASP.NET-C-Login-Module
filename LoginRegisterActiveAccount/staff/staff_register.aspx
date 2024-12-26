﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staff_register.aspx.cs" Inherits="LoginRegisterActiveAccount.staff.staff_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
                @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap");

:root {
  --text-dark: hsl(240, 54%, 15%);
  --text-light: hsl(242, 18%, 64%);
  --primary: hsl(222, 98%, 60%);
  --primary-lighter: hsl(240, 33%, 86%);
  --primary-gradient: linear-gradient(to right, #3671fd, #6f31ff);
}

*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

a,
button {
  all: unset;
  cursor: pointer;
}

img {
  width: 100%;
  height: 100%;
  display: block;
}

body {
  font-family: Poppins, sans-serif;
  min-height: 100vh;
  background-color: #f5f9ff;
  display: flex;
  justify-content: center;
}

.container {
  max-width: 1070px;
  width: 100%;
  display: flex;
  margin-inline: 1rem;
}

.image-section {
  width: 50%;
  position: relative;
}
.image-wrapper {
  width: 100%;
  height: 100%;
}
.image-wrapper img {
  object-fit: cover;
}

.content-container {
  background-color: hsla(0, 0%, 100%, 0.3);
  backdrop-filter: blur(30px);
  padding: 2rem;
  width: 80%;
  color: var(--text-dark);
  border-radius: 4px;
  border: 1px solid hsl(0 100% 100% / 0.3);

  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.content-container h1 {
  font-weight: 600;
  font-size: 2.5rem;
  margin-bottom: 1rem;
}
.content-container span {
  background: var(--primary-gradient);
  background-clip: text;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

@media screen and (max-width: 60rem) {
  .container {
    width: 100%;
    margin: 0;
  }
  .content-container {
    width: 100%;
  }
}

.form-section {
  width: 50%;
  background-color: white;
  padding: 2.5rem 1rem;
  display: flex;
  align-items: center;
}

.form-wrapper {
  width: 75%;
  margin: 0 auto;
}

.logo-container {
  width: 3rem;
  height: 3rem;
  margin-bottom: 2.2rem;
}

.form-wrapper > h2 {
  margin-bottom: 0.1rem;
}
.form-wrapper > p {
  font-size: 0.875rem;
  font-weight: 500;
  color: var(--text-light);
  margin-bottom: 2rem;
}

.input-container {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  margin-bottom: 1rem;
}

.form-group {
  display: flex;
  flex-direction: column;
  gap: 0.2rem;
}
.form-group label {
  font-size: 0.9375rem;
  font-weight: 600;
  color: #16164d;
}
.form-group input {
  font-size: 0.875rem;
  font-weight: 500;
  color: var(--text-dark);
  padding: 0.5rem;
  border: 2px solid var(--primary-lighter);
  border-radius: 0.3rem;
}
.form-group input:focus {
  border: 2px solid #16164d;
}

.remember-forgot {
  display: flex;
  justify-content: space-between;
  font-size: 0.875rem;
  font-weight: 500;
  margin-bottom: 1rem;
}

.remember-me {
  display: grid;
  grid-template-columns: 1rem auto;
  gap: 0.6rem;
}

input[type="checkbox"] {
  -webkit-appearance: none;
  appearance: none;
  display: grid;
  place-content: center;
}

.remember-me input {
  width: 1rem;
  height: 1rem;
  margin-right: 0.3rem;
  border: 1px solid var(--text-light);
  border-radius: 2px;
}

input[type="checkbox"]::before {
  content: "";
  width: 0.65em;
  height: 0.65em;
  background-color: white;
  transform: scale(0);
  transform-origin: bottom left;
  clip-path: polygon(14% 44%, 0 65%, 50% 100%, 100% 16%, 80% 0%, 43% 62%);
  transition: 120ms transform ease-in-out;
  box-shadow: inset 1em 1em var(--form-control-color);
}

input[type="checkbox"]:checked::before {
  transform: scale(1);
}
.remember-me input:checked {
  background: var(--primary-gradient);
}

.remember-me label {
  color: var(--text-dark);
  user-select: none;
}
.remember-forgot a {
  color: var(--primary);
}
.remember-forgot a:hover {
  text-decoration: underline;
  text-decoration-color: var(--primary);
}

.login-btn,
.google-signin {
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 0.6rem;

  font-weight: 500;
  padding: 0.5rem 0;
  border-radius: 0.5rem;
}

.login-btn {
  color: white;
  background: var(--primary-gradient);
}
.login-btn:hover {
  opacity: 0.9;
}

.or-divider {
  width: 100%;
  font-weight: 600;
  color: var(--text-light);
  margin-block: 1.5rem;
  text-align: center;
  position: relative;
}
.or-divider::before {
  content: "";
  position: absolute;
  top: 50%;
  left: 0;
  height: 1px;
  width: 45%;
  background-color: var(--text-light);
}
.or-divider::after {
  content: "";
  position: absolute;
  top: 50%;
  right: 0;
  height: 1px;
  width: 45%;
  background-color: var(--text-light);
}

.google-signin {
  border: 2px solid var(--primary-lighter);
}
.google-signin object {
  width: 1.5rem;
  height: 1.5rem;
}

@media screen and (max-width: 50rem) {
  .container {
    max-width: 80%;
    flex-direction: column;
    margin-inline: 0;
  }

  .image-section,
  .form-section {
    width: 100%;
  }

  .image-section {
    height: 25vh;
  }
  .content-container {
    inset: 0;
    transform: translate(0, 0);
    padding: 1rem 1.6rem;
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
  .content-container h1 {
    font-size: 1.4rem;
    font-weight: 700;
    margin-bottom: 0.5rem;
  }
  .content-container p {
    font-size: 0.75rem;
  }

  .form-section {
    flex: 1;
    padding: 1rem 1rem;
  }
  .logo-container {
    margin-bottom: 1rem;
  }
  .form-wrapper > h2 {
    font-size: 1.25rem;
  }
  .form-wrapper > p {
    margin-bottom: 1rem;
  }
  .form-wrapper button {
    font-size: 0.875rem;
  }
  .or-divider {
    font-weight: 500;
    margin-block: 0.6rem;
  }
}

.form-group-text{
    color:blue;
}

.form-group-text:hover{
    color:purple;
}

input[type=submit]
{
    background-color: green;
}

input[type=submit]:hover
{
    background-color: #66ff66;
}

@media screen and (max-width: 36.25rem) {
  .container {
    max-width: 100%;
  }
  .form-wrapper {
    width: 100%;
  }
}
    </style>

     <script type="text/javascript">
         function validateForm() {
        var firstName = document.getElementById('<%= firstname.ClientID %>').value;
        var lastName = document.getElementById('<%= lastname.ClientID %>').value;
        var email = document.getElementById('<%= email.ClientID %>').value;
        var password = document.getElementById('<%= password.ClientID %>').value;

             // Regular expressions for validation
             var nameRegex = /^[a-zA-Z]+$/;
             var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
             var passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$/;

             // Validate firstname and lastname
             if (!nameRegex.test(firstName)) {
                 alert("First name should only contain characters.");
                 return false;
             }
             if (!nameRegex.test(lastName)) {
                 alert("Last name should only contain characters.");
                 return false;
             }

             // Validate email
             if (!emailRegex.test(email)) {
                 alert("Please enter a valid email address.");
                 return false;
             }

             // Validate password
             if (!passwordRegex.test(password)) {
                 alert("Password must contain at least one character, one digit, and one special character and be at least 6 characters long.");
                 return false;
             }

             return true;
         }
     </script>

</head>
<body>
    <section class="container">
         <div class="image-section">
            <div class="image-wrapper">
                <asp:Image ID="Image1" runat="server" src="./mesh-gradient.png"/>
            </div>

            <div class="content-container">
              <h1 class="section-heading">Online Toy Shop Managment <span>System.</span></h1>
              <p class="section-paragraph">Staff Register Page</p>
            </div>
          </div>

       

        <div class="form-section">
        <div class="form-wrapper">
          <div class="logo-container">
            <a href="#" class="logo-container">
              <asp:Image ID="Image2" runat="server" src="./ne.png"/>
            </a>
          </div>

          <h2>Register in System,Here 👋🏻</h2>

          <form id="form1" runat="server" onsubmit="return validateForm()">
          <div class="input-container">
            <div class="form-group">
              <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label>
            </div>
              <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Enter your First Name:"></asp:Label>
                <asp:TextBox ID="firstname" runat="server" placeholder="Enter your first name"></asp:TextBox>
            </div>
            <div class="form-group">
                 <asp:Label ID="Label2" runat="server" Text="Enter your Last Name:"></asp:Label>
                 <asp:TextBox ID="lastname" runat="server" placeholder="Enter your last name"></asp:TextBox>
            </div>
            <div class="form-group">
                 <asp:Label ID="Label6" runat="server" Text="Enter your Contact Number:"></asp:Label>
                 <asp:TextBox ID="contact" runat="server" placeholder="Enter your Contact Number"></asp:TextBox>
            </div>
            <div class="form-group">
                 <asp:Label ID="Label7" runat="server" Text="Enter your Address:"></asp:Label>
                 <asp:TextBox ID="address" runat="server" placeholder="Enter your Address"></asp:TextBox>
            </div>
            <div class="form-group">
                 <asp:Label ID="Label8" runat="server" Text="Enter your Date of Joining:"></asp:Label>
                 <asp:TextBox ID="doj" runat="server" placeholder="Enter your Date of Joining"></asp:TextBox>
            </div>
            <div class="form-group">
             <asp:Label ID="Label3" runat="server" Text="Enter your Email:"></asp:Label>
             <asp:TextBox ID="email" runat="server" placeholder="Enter your email"></asp:TextBox>
            </div>
             <div class="form-group">
                 <asp:Label ID="Label4" runat="server" Text="Enter your Password:"></asp:Label>
                 <asp:TextBox ID="password" runat="server" placeholder="Enter your Password" TextMode="Password"> </asp:TextBox>
             </div>
             <div class="form-group">
                 <asp:Label ID="Label5" runat="server" Text="Enter your Confirm Password:"></asp:Label>
                 <asp:TextBox ID="confirm_password" runat="server" placeholder="Enter your Confirm Password" TextMode="Password"> </asp:TextBox>
             </div>
            <div class="form-group">
                <asp:Button ID="regBtn" runat="server" Text="Submit" onClick="regBtn_Click"/>
            </div>

            <div class="form-group-text">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/staff/staff_login.aspx">Already Staff User, Login Here</asp:HyperLink>
            </div>
            </div>
            </form>
          </div>

        </div>
</section>
</body>
</html>

