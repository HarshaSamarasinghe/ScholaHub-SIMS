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

<%
    String toast = (String) session.getAttribute("toast");
    if (toast != null) {
%>
<script>
window.onload = function() {
    // Note: The JSP scriptlet should only execute if 'toast' is NOT null.
    // However, the original logic had an issue (checking if toast == null)
    // I am assuming the intention is to show the toast IF it exists.
    const toastMsg = "<%= toast %>";
    const toast = document.getElementById("toast");
    if(toastMsg && toast) {
        toast.textContent = toastMsg;
        toast.style.display = "block";

        setTimeout(() => {
            toast.style.opacity = "0";
            toast.style.transition = "opacity 1s";
        }, 2000);

        setTimeout(() => {
            toast.style.display = "none";
            toast.style.opacity = "1"; // Reset opacity for next message
        }, 3000);
    }
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

/* Custom style for the toast to match the provided structure */
#toast {
    position: fixed;
    right: 20px;
    bottom: 20px;
    background: #4CAF50;
    color: white;
    padding: 15px 20px;
    border-radius: 6px;
    font-family: Arial;
    display: none;
    z-index: 1000; /* Ensure toast is above other content */
}
</style>

</head>
<body class="font-display bg-background-light dark:bg-background-dark text-gray-900 dark:text-white">

<div class="flex min-h-screen">

<aside id="sidebar" class="w-64 bg-primary text-white flex-col hidden md:flex">
  <div class="flex items-center gap-3 p-4 border-b border-white/20 h-16">
    <span class="material-symbols-outlined text-3xl">account_balance</span>
    <h1 class="text-xl font-bold">ScholaHub</h1>
  </div>

  <nav class="flex-1 p-4 space-y-2">
    <a class="flex items-center gap-3 px-3 py-2 rounded-lg hover:bg-white/10 text-gray-300" href="Dashboard.jsp">
      <span class="material-symbols-outlined">dashboard</span> Dashboard
    </a>

    <a class="flex items-center gap-3 px-3 py-2 rounded-lg bg-white/20 text-white font-semibold" href="AddStudent.jsp">
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

<div class="flex-1 flex flex-col">

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

  <main class="flex-1 p-4 md:p-8 overflow-y-auto">

    <div class="flex flex-col md:flex-row md:items-center md:justify-between mb-8 gap-4">
      <h3 class="text-2xl font-bold">Register New Student</h3>
      <a href="#" class="flex items-center gap-2 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 px-4 h-10 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700 transition">
        <span class="material-symbols-outlined">list</span>
        View All Students
      </a>
    </div>

    <div class="bg-white dark:bg-gray-800 p-6 md:p-8 rounded-xl border border-gray-200 dark:border-gray-700 max-w-4xl mx-auto">

        <form action="<%=request.getContextPath() %>/addStudent" method="post" enctype="multipart/form-data" class="space-y-6">

            <p class="text-lg font-medium text-gray-700 dark:text-gray-200 border-b pb-3 mb-4 border-gray-200 dark:border-gray-700">Student Details</p>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="space-y-2">
                    <label for="firstName" class="block text-sm font-medium text-gray-700 dark:text-gray-300">First Name <span class="text-red-500">*</span></label>
                    <input type="text" id="firstName" name="firstName" required
                           class="w-full border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg shadow-sm focus:border-primary focus:ring focus:ring-primary focus:ring-opacity-50">
                </div>
                <div class="space-y-2">
                    <label for="lastName" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Last Name <span class="text-red-500">*</span></label>
                    <input type="text" id="lastName" name="lastName" required
                           class="w-full border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg shadow-sm focus:border-primary focus:ring focus:ring-primary focus:ring-opacity-50">
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="space-y-2">
                    <label for="admissionNumber" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Admission Number <span class="text-red-500">*</span></label>
                    <input type="text" id="admissionNumber" name="admissionNumber" required
                           class="w-full border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg shadow-sm focus:border-primary focus:ring focus:ring-primary focus:ring-opacity-50">
                </div>
                <div class="space-y-2">
                    <label for="dob" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Date of Birth <span class="text-red-500">*</span></label>
                    <input type="date" id="dob" name="dob" required
                           class="w-full border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg shadow-sm focus:border-primary focus:ring focus:ring-primary focus:ring-opacity-50">
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="space-y-2">
                    <label for="currentGrade" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Current Grade/Class <span class="text-red-500">*</span></label>
                    <input type="text" id="currentGrade" name="currentGrade" required
                           class="w-full border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg shadow-sm focus:border-primary focus:ring focus:ring-primary focus:ring-opacity-50">
                </div>
                <div class="space-y-2">
                    <label for="guardianName" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Guardian Name <span class="text-red-500">*</span></label>
                    <input type="text" id="guardianName" name="guardianName" required
                           class="w-full border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg shadow-sm focus:border-primary focus:ring focus:ring-primary focus:ring-opacity-50">
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="space-y-2">
                    <label for="guardianContact" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Guardian Contact (Phone/Email) <span class="text-red-500">*</span></label>
                    <input type="text" id="guardianContact" name="guardianContact" required
                           class="w-full border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg shadow-sm focus:border-primary focus:ring focus:ring-primary focus:ring-opacity-50">
                </div>
                <div class="space-y-2">
                    <label for="address" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Address</label>
                    <input type="text" id="address" name="address"
                           class="w-full border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-white rounded-lg shadow-sm focus:border-primary focus:ring focus:ring-primary focus:ring-opacity-50">
                </div>
            </div>


            <div class="space-y-2">
                <label for="profileImage" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Profile Image</label>
                <input type="file" id="profileImage" name="profileImage"
                       class="block w-full text-sm text-gray-500 dark:text-gray-400
                              file:mr-4 file:py-2 file:px-4
                              file:rounded-full file:border-0
                              file:text-sm file:font-semibold
                              file:bg-primary file:text-white
                              hover:file:bg-opacity-80 dark:file:bg-indigo-600 dark:hover:file:bg-indigo-700">
                <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">PNG, JPG, or JPEG only (max 1MB).</p>
            </div>

            <div class="pt-4">
                <button type="submit"
                        class="w-full flex items-center justify-center gap-2 bg-primary text-white px-4 h-10 rounded-lg font-semibold hover:opacity-90 transition">
                    <span class="material-symbols-outlined">person_add</span>
                    Register Student to System
                </button>
            </div>
        </form>
    </div>
    <div id="toast"></div>

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