<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>ScholaHub - Admin Dashboard</title>

<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>

<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@400;500;700;900&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

<!--TOAST Message -->
<%
    String toast = (String) session.getAttribute("toast");
    if (toast != null) {
%>
<script>
window.onload = function() {
    const toastMsg = "<%= toast %>";
    const toast = document.getElementById("toast");
    toast.textContent = toastMsg;
    toast.style.display = "block";

    setTimeout(() => {
        toast.style.opacity = "0";
        toast.style.transition = "opacity 1s";
    }, 2000);

    setTimeout(() => {
        toast.style.display = "none";
    }, 3000);
}
</script>
<%
        session.removeAttribute("toast");
    }
%>

<script>
tailwind.config = {
  darkMode: "class",
  theme: {
    extend: {
      colors: {
        primary: "#091c32",
        "background-light": "#f6f7f8",
        "background-dark": "#121820",
      },
      fontFamily: {
        display: ["Lexend", "sans-serif"]
      }
    }
  }
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
</style>

</head>
<body class="font-display bg-background-light dark:bg-background-dark text-gray-900 dark:text-white">

<div class="flex min-h-screen">

<!-- SIDEBAR -->
<aside id="sidebar" class="w-64 bg-primary text-white flex-col hidden md:flex">
  <div class="flex items-center gap-3 p-4 border-b border-white/20 h-16">
    <span class="material-symbols-outlined text-3xl">account_balance</span>
    <h1 class="text-xl font-bold">ScholaHub</h1>
  </div>

  <nav class="flex-1 p-4 space-y-2">
    <a class="flex items-center gap-3 px-3 py-2 rounded-lg bg-white/20 text-white font-semibold" href="Dashboard.jsp">
      <span class="material-symbols-outlined">dashboard</span> Dashboard
    </a>

    <a class="flex items-center gap-3 px-3 py-2 rounded-lg hover:bg-white/10 text-gray-300" href="AddStudent.jsp">
      <span class="material-symbols-outlined">school</span> Students
    </a>

    <a class="flex items-center gap-3 px-3 py-2 rounded-lg hover:bg-white/10 text-gray-300" href="AddTeacher.jsp">
      <span class="material-symbols-outlined">group</span> Teachers
    </a>

    <a class="flex items-center gap-3 px-3 py-2 rounded-lg hover:bg-white/10 text-gray-300" href="#">
      <span class="material-symbols-outlined">class</span> Classes
    </a>

    <a class="flex items-center gap-3 px-3 py-2 rounded-lg hover:bg-white/10 text-gray-300" href="#">
      <span class="material-symbols-outlined">bar_chart</span> Reports
    </a>
  </nav>

  <div class="p-4 border-t border-white/20">
    <a class="flex items-center gap-3 px-3 py-2 rounded-lg hover:bg-white/10 text-gray-300" href="#">
      <span class="material-symbols-outlined">settings</span> Settings
    </a>

    <a class="flex items-center gap-3 px-3 py-2 rounded-lg hover:bg-white/10 text-gray-300" href="#">
      <span class="material-symbols-outlined">logout</span> Logout
    </a>
  </div>
</aside>

<!-- MAIN CONTENT -->
<div class="flex-1 flex flex-col">

  <!-- HEADER -->
  <header class="flex items-center justify-between h-16 px-4 md:px-8 border-b border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800/50">

    <div class="flex items-center gap-4">
      <button id="menuBtn" class="md:hidden text-gray-700 dark:text-gray-300">
        <span class="material-symbols-outlined text-3xl">menu</span>
      </button>
      <h2 class="text-xl font-bold">Admin Dashboard</h2>
    </div>

    <div class="flex items-center gap-4">
      <span class="text-gray-700 dark:text-gray-300">Welcome, Admin!</span>
      <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuCtKdLm42oNz4BtzbhQMdYd1mZ6dfOT8Xcuej0VymsrZ-mreIFBjcWKdy2PUbgSzeJuE-944UApt5p0jE0iCKEpK6NVfMyXKxl_9elALbPqrc_-imkgo0gkCgSWS0Ja7Kh7TABQnAWqo6Vf4YMvqvrvCYcSBCELrKwZHusVVXmy6WPOar22UgX03s9-Y8YUWThiCHMnKJ3mvjKv4W3kzxVr6DfvjnEllVZP_nA8i9GsxWp7KOL2NjN1K9XIrEL-eNjvUL4pYXFuC_y-" class="w-10 h-10 rounded-full">
    </div>
  </header>

  <!-- CONTENT -->
  <main class="flex-1 p-4 md:p-8 overflow-y-auto">

    <div class="flex flex-col md:flex-row md:items-center md:justify-between mb-8 gap-4">
      <h3 class="text-2xl font-bold">Overview</h3>

      <button class="flex items-center gap-2 bg-primary text-white px-4 h-10 rounded-lg hover:bg-opacity-90">
        <span class="material-symbols-outlined">person_add</span>
        Register New User
      </button>
    </div>

    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">

      <div class="bg-white dark:bg-gray-800 p-6 rounded-xl border border-gray-200 dark:border-gray-700 flex items-start gap-4">
        <div class="bg-blue-100 dark:bg-blue-900 p-3 rounded-full">
          <span class="material-symbols-outlined text-blue-600 dark:text-blue-300 text-2xl">school</span>
        </div>
        <div>
          <p class="text-sm text-gray-500 dark:text-gray-400">Total Students</p>
          <p class="text-3xl font-bold">1,250</p>
        </div>
      </div>

      <div class="bg-white dark:bg-gray-800 p-6 rounded-xl border border-gray-200 dark:border-gray-700 flex items-start gap-4">
        <div class="bg-green-100 dark:bg-green-900 p-3 rounded-full">
          <span class="material-symbols-outlined text-green-600 dark:text-green-300 text-2xl">group</span>
        </div>
        <div>
          <p class="text-sm text-gray-500 dark:text-gray-400">Total Teachers</p>
          <p class="text-3xl font-bold">85</p>
        </div>
      </div>

      <div class="bg-white dark:bg-gray-800 p-6 rounded-xl border border-gray-200 dark:border-gray-700 flex items-start gap-4">
        <div class="bg-indigo-100 dark:bg-indigo-900 p-3 rounded-full">
          <span class="material-symbols-outlined text-indigo-600 dark:text-indigo-300 text-2xl">people</span>
        </div>
        <div>
          <p class="text-sm text-gray-500 dark:text-gray-400">All Users</p>
          <p class="text-3xl font-bold">1,335</p>
        </div>
      </div>

      <!-- TOAST BOX -->
     <div id="toast"
          style="position: fixed; right: 20px; bottom: 20px;
                 background: #4CAF50; color: white;
                 padding: 15px 20px; border-radius: 6px;
                 font-family: Arial; display: none;">
     </div>

    </div>
  </main>
</div>
</div>

<script>
const menuBtn = document.getElementById("menuBtn");
const sidebar = document.getElementById("sidebar");

menuBtn.addEventListener("click", () => {
  sidebar.classList.toggle("hidden");
});
</script>

</body>
</html>
