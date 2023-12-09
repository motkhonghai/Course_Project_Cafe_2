<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	
	<header>
        <img src="logo.jpg" alt="Logo" class="logo">
    </header>
    <div class="wrapper">
        <form id="loginForm" action="Login" method="post">
            <h2>Login</h2>
            <div class="input-group">
                <span class="icon">
                    <ion-icon name="person"></ion-icon>
                </span>
                <input type="text" placeholder="Username" required>
            </div>
            <div class="input-group">
                <span class="icon">
                    <ion-icon name="lock-closed"></ion-icon>
                </span>
                <input type="password" placeholder="Password" required>
            </div>
            <div class="forgot-pass">
                <a href="#">Forgot Password?</a>
            </div>
            <button type="submit" class="btn">Login</button>
            <div class="sign-link">
                <p>Don't have an account? <a href="#" id="registerLink">Register</a></p>
            </div>
            
        </form>

        <form id="registerForm" style="display: none;" action="Register" method="post">
            <h2>Register</h2>
            <div class="input-group">
                <span class="icon">
                    <ion-icon name="person"></ion-icon>
                </span>
                <input type="text" placeholder="Username" name="uname" required>
            </div>
            <div class="input-group">
                <span class="icon">
                    <ion-icon name="mail-open-outline"></ion-icon>
                </span>
                <input type="text" placeholder="Email" name="email" required>
            </div>
            <div class="input-group">
                <span class="icon">
                    <ion-icon name="call-outline"></ion-icon>
                </span>
                <input type="text" placeholder="Phone number" name="phone" required>
            </div>
            <div class="input-group">
                <span class="icon">
                    <ion-icon name="lock-closed"></ion-icon>
                </span>
                <input type="password" placeholder="Password" name="password" required>
            </div>
            <div class="input-group">
                <span class="icon">
                    <ion-icon name="lock-closed"></ion-icon>
                </span>
                <input type="password" id="confirmPassword" placeholder="Confirm Password" name="confirmpass" required>
            </div>
	
            <button type="submit" class="btn">Register</button>
            <div class="sign-link">
                <p>Already have an account? <a href="#" id="loginLink">Login</a></p>
            </div>
             <h3 id="resultMessage" style="display:none">Success registration</h3>
        </form>
    </div>
	
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script>
        const loginForm = document.getElementById('loginForm');
        const registerForm = document.getElementById('registerForm');
        const loginLink = document.getElementById('loginLink');
        const registerLink = document.getElementById('registerLink');
        
        
        document.getElementById('loginLink').addEventListener('click', function (event) {
            event.preventDefault();
            loginForm.style.display = 'block';
            registerForm.style.display = 'none';
            resultMessage.innerHTML = ''; // Clear any existing messages
        });

        document.getElementById('registerLink').addEventListener('click', function (event) {
            event.preventDefault();
            loginForm.style.display = 'none';
            registerForm.style.display = 'block';
            resultMessage.innerHTML = ''; // Clear any existing messages
        });
        document.getElementById('registerForm').addEventListener('submit', function (event) {
        	event.preventDefault();
            var formData = new FormData(event.target);
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "Register", true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var response = JSON.parse(xhr.responseText);
                    if (response.status === "success") {
                        // Thay đổi style của h3 khi đăng ký thành công
                        document.getElementById('resultMessage').style.display = 'block';
                    } else {
                        // Xử lý trường hợp đăng ký không thành công nếu cần
                    }
                }
            };
            xhr.send(formData);
        });
    </script>
	
</body>
</html>