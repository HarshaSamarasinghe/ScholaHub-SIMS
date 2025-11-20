<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en"><head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>Login - ScholaHub</title>
    <script type="text/javascript">
    window.onload = function(){
		var errorMessage = "<c:out value='${errorMessage}'/>";
		if(errorMessage){
			
			alert(errorMessage);// display the error message 
		}
};
    </script>
<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@400;500;700;900&amp;display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>
<script id="tailwind-config">
    tailwind.config = {
      darkMode: "class",
      theme: {
        extend: {
          colors: {
            "primary": "#091d34",
            "background-light": "#f6f7f8",
            "background-dark": "#121820",
          },
          fontFamily: {
            "display": ["Lexend", "sans-serif"]
          },
          borderRadius: {
            "DEFAULT": "0.25rem",
            "lg": "0.5rem",
            "xl": "0.75rem",
            "full": "9999px"
          },
        },
      },
    }
  </script>
<style>
    .material-symbols-outlined {
      font-variation-settings:
        'FILL' 0,
        'wght' 400,
        'GRAD' 0,
        'opsz' 24
    }
    body {
        /* FIX: Use JSP EL to get the application's context path */
        background: url('../asserts/images/background.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
  </style>
</head>
<body class="font-display">
<div class="relative flex min-h-screen w-full flex-col group/design-root overflow-x-hidden">
<div class="absolute inset-0 bg-black/60 z-0"></div>
<div class="relative z-10 flex h-full grow flex-col">
<div class="flex flex-1 items-center justify-center py-5 px-4">
<div class="layout-content-container flex flex-col w-full max-w-md flex-1">
<main class="flex-grow flex items-center justify-center">
<div class="w-full max-w-md">
<div class="text-center mb-8">
<div class="flex items-center justify-center gap-4 text-white mb-4">
<div class="size-8">
<svg fill="none" viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
<path d="M44 11.2727C44 14.0109 39.8386 16.3957 33.69 17.6364C39.8386 18.877 44 21.2618 44 24C44 26.7382 39.8386 29.123 33.69 30.3636C39.8386 31.6043 44 33.9891 44 36.7273C44 40.7439 35.0457 44 24 44C12.9543 44 4 40.7439 4 36.7273C4 33.9891 8.16144 31.6043 14.31 30.3636C8.16144 29.123 4 26.7382 4 24C4 21.2618 8.16144 18.877 14.31 17.6364C8.16144 16.3957 4 14.0109 4 11.2727C4 7.25611 12.9543 4 24 4C35.0457 4 44 7.25611 44 11.2727Z" fill="currentColor"></path>
</svg>
</div>
<h2 class="text-2xl font-bold leading-tight tracking-[-0.015em]">ScholaHub</h2>
</div>
<h1 class="text-3xl font-bold text-white">Welcome Back</h1>
<p class="text-gray-300 mt-2">Please enter your details to sign in.</p>
</div>
<div class="bg-white dark:bg-gray-800/50 p-8 rounded-xl border border-gray-200 dark:border-gray-700 shadow-sm backdrop-blur-sm bg-opacity-80 dark:bg-opacity-80">
<form action= "<%=request.getContextPath() %>/LoginServlet" method="post" class="space-y-6">
<div>
<label class="block text-sm font-medium text-gray-700 dark:text-gray-300" for="email">Email or Username</label>
<div class="mt-1">
<input autocomplete="email" name="userName" class="block w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm bg-background-light dark:bg-background-dark text-gray-900 dark:text-white" id="email" name="email" required="" type="email"/>
</div>
</div>
<div>
<label class="block text-sm font-medium text-gray-700 dark:text-gray-300" for="password">Password</label>
<div class="mt-1">
<input autocomplete="current-password" name="password" class="block w-full px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm bg-background-light dark:bg-background-dark text-gray-900 dark:text-white" id="password" name="password" required="" type="password"/>
</div>
</div>
<div class="flex items-center justify-between">
<div class="flex items-center">
<input class="h-4 w-4 text-primary focus:ring-primary border-gray-300 rounded" id="remember-me" name="remember-me" type="checkbox"/>
<label class="ml-2 block text-sm text-gray-900 dark:text-gray-300" for="remember-me">Remember me</label>
</div>
<div class="text-sm">
<a class="font-medium text-primary hover:text-opacity-80 dark:text-blue-400 dark:hover:text-blue-300" href="#">Forgot your password?</a>
</div>
</div>
<div>
<button class="w-full flex justify-center py-3 px-4 border border-transparent rounded-lg shadow-sm text-sm font-bold text-white bg-primary hover:bg-opacity-90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary transition-colors" type="submit">Login</button>
</div>
</form>
</div>
<div class="mt-6 text-center">
</div>
</div>
</main>
</div>
</div>
</div>
</div>
</body></html>