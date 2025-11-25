<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>ScholaHub - Student Dashboard</title>
<script type="text/javascript">
       if(window.location.search.includes('logout=success')){
          alert('Logout Successfully!');
       }
    </script>
<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@400;500;700;900&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>
<script id="tailwind-config">
    // Re-using the provided Tailwind config
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
  </style>
</head>
<body class="font-display">
<div class="relative flex min-h-screen w-full flex-col bg-background-light dark:bg-background-dark group/design-root overflow-x-hidden">
<div class="layout-container flex h-full grow flex-col">

<header class="flex items-center justify-between whitespace-nowrap border-b border-solid border-gray-200 dark:border-gray-700 px-4 sm:px-10 py-3 fixed top-0 left-0 right-0 z-50 bg-background-light/80 dark:bg-background-dark/80 backdrop-blur-sm">
    <a href="../../index.jsp" >
    <div class="flex items-center gap-4 text-primary dark:text-white">
        <span class="material-symbols-outlined text-3xl">school</span>
        <h2 class="text-primary dark:text-white text-lg font-bold leading-tight tracking-[-0.015em]">
            ScholaHub
        </h2>
    </div>
    </a>

    <div class="flex flex-1 justify-end gap-8 items-center">
        <div class="hidden md:flex items-center gap-9">
            <a class="text-primary dark:text-white text-sm font-bold leading-normal" href="Dashboard.jsp">Dashboard</a>
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="../Contact.jsp">Contact</a>
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="../About.jsp">About</a>
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="../Support.jsp">Support</a>
        </div>

        <button class="flex min-w-[40px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-full h-10 w-10 bg-primary text-white hover:bg-opacity-90 transition-colors">
            <span class="material-symbols-outlined text-2xl">person</span>
        </button>
    </div>
</header>
<div class="px-4 md:px-10 lg:px-20 xl:px-40 flex flex-1 justify-center py-5 mt-20">
    <div class="layout-content-container flex flex-col max-w-[1200px] flex-1 gap-12">
        <main>
            <div class="p-4 sm:p-0">
                <h1 class="text-gray-900 dark:text-white text-3xl font-bold leading-tight tracking-[-0.015em] mb-6">👋 Welcome Back, John Doe!</h1>
                <p class="text-gray-600 dark:text-gray-400 mb-8">Here's a summary of your academic progress.</p>

                <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
                    <div class="lg:col-span-2 flex flex-col gap-8">

                        <div class="bg-white dark:bg-gray-800/50 p-6 rounded-xl shadow-lg border border-gray-200 dark:border-gray-700">
                            <h2 class="text-gray-900 dark:text-white text-xl font-bold mb-4 flex items-center gap-2">
                                <span class="material-symbols-outlined text-blue-500">trending_up</span> Current Grade Summary
                            </h2>

                            <div class="grid grid-cols-2 md:grid-cols-4 gap-4 text-center">
                                <div class="p-3 bg-background-light dark:bg-gray-700/50 rounded-lg">
                                    <p class="text-2xl font-black text-primary dark:text-blue-400">A-</p>
                                    <p class="text-sm text-gray-500 dark:text-gray-400">English</p>
                                </div>
                                <div class="p-3 bg-background-light dark:bg-gray-700/50 rounded-lg">
                                    <p class="text-2xl font-black text-primary dark:text-blue-400">B+</p>
                                    <p class="text-sm text-gray-500 dark:text-gray-400">Math</p>
                                </div>
                                <div class="p-3 bg-background-light dark:bg-gray-700/50 rounded-lg">
                                    <p class="text-2xl font-black text-primary dark:text-blue-400">A</p>
                                    <p class="text-sm text-gray-500 dark:text-gray-400">Science</p>
                                </div>
                                <div class="p-3 bg-background-light dark:bg-gray-700/50 rounded-lg">
                                    <p class="text-2xl font-black text-primary dark:text-blue-400">B-</p>
                                    <p class="text-sm text-gray-500 dark:text-gray-400">History</p>
                                </div>
                            </div>
                            <div class="mt-4 text-right">
                                <a href="#" class="text-sm font-medium text-blue-600 dark:text-blue-400 hover:underline">View All Grades &rarr;</a>
                            </div>
                        </div>

                        <div class="bg-white dark:bg-gray-800/50 p-6 rounded-xl shadow-lg border border-gray-200 dark:border-gray-700">
                            <h2 class="text-gray-900 dark:text-white text-xl font-bold mb-4 flex items-center gap-2">
                                <span class="material-symbols-outlined text-red-500">task</span> Upcoming Assignments
                            </h2>
                            <ul class="space-y-3">
                                <li class="flex justify-between items-center p-3 border-b last:border-b-0 border-gray-100 dark:border-gray-700/50">
                                    <div>
                                        <p class="font-medium text-gray-900 dark:text-white">Chapter 5 Quiz (Math)</p>
                                        <p class="text-sm text-gray-500 dark:text-gray-400">Due: **Tomorrow**</p>
                                    </div>
                                    <span class="text-xs font-semibold text-white bg-red-500 rounded-full px-3 py-1">High Priority</span>
                                </li>
                                <li class="flex justify-between items-center p-3 border-b last:border-b-0 border-gray-100 dark:border-gray-700/50">
                                    <div>
                                        <p class="font-medium text-gray-900 dark:text-white">The Great Gatsby Essay (English)</p>
                                        <p class="text-sm text-gray-500 dark:text-gray-400">Due: Friday, Nov 29</p>
                                    </div>
                                    <span class="text-xs font-semibold text-primary dark:text-blue-400 border border-primary dark:border-blue-400 rounded-full px-3 py-1">Project</span>
                                </li>
                                <li class="flex justify-between items-center p-3 border-b last:border-b-0 border-gray-100 dark:border-gray-700/50">
                                    <div>
                                        <p class="font-medium text-gray-900 dark:text-white">Cell Structure Lab Report (Science)</p>
                                        <p class="text-sm text-gray-500 dark:text-gray-400">Due: Monday, Dec 2</p>
                                    </div>
                                </li>
                            </ul>
                            <div class="mt-4 text-right">
                                <a href="#" class="text-sm font-medium text-blue-600 dark:text-blue-400 hover:underline">View Full Task List &rarr;</a>
                            </div>
                        </div>

                    </div>

                    <div class="lg:col-span-1 flex flex-col gap-8">

                        <div class="bg-primary p-6 rounded-xl shadow-lg text-white">
                            <h2 class="text-xl font-bold mb-4 flex items-center gap-2">
                                <span class="material-symbols-outlined text-white">person_pin</span> My Profile
                            </h2>
                            <div class="flex items-center gap-4 border-b border-white/20 pb-4 mb-4">
                                <img src="http://googleusercontent.com/profile/picture/4" alt="Student Avatar" class="w-16 h-16 rounded-full object-cover border-2 border-white">
                                <div>
                                    <p class="text-lg font-bold">John Doe</p>
                                    <p class="text-sm text-gray-300">Grade 10, Section A</p>
                                </div>
                            </div>
                            <div class="text-sm space-y-1">
                                <p><span class="font-semibold">Student ID:</span> 102938</p>
                                <p><span class="font-semibold">Attendance:</span> 98.5%</p>
                                <p><span class="font-semibold">Email:</span> j.doe@scholahub.edu</p>
                            </div>
                            <div class="mt-4">
                                <a href="#" class="text-sm font-medium text-gray-200 hover:text-white hover:underline">Edit Profile</a>
                            </div>
                        </div>

                        <div class="bg-white dark:bg-gray-800/50 p-6 rounded-xl shadow-lg border border-gray-200 dark:border-gray-700">
                            <h2 class="text-gray-900 dark:text-white text-xl font-bold mb-4 flex items-center gap-2">
                                <span class="material-symbols-outlined text-amber-500">campaign</span> Recent Announcements
                            </h2>
                            <ul class="space-y-3">
                                <li class="p-3 bg-yellow-50 dark:bg-gray-700 rounded-lg">
                                    <p class="font-medium text-gray-900 dark:text-white">Parent-Teacher Night Next Week</p>
                                    <p class="text-xs text-gray-600 dark:text-gray-400">Check school calendar for exact times.</p>
                                </li>
                                <li class="p-3">
                                    <p class="font-medium text-gray-900 dark:text-white">Library Closure Notice</p>
                                    <p class="text-xs text-gray-600 dark:text-gray-400">Closed for maintenance on Wednesday.</p>
                                </li>
                                <li class="p-3">
                                    <p class="font-medium text-gray-900 dark:text-white">Sports Day Sign-ups Open</p>
                                    <p class="text-xs text-gray-600 dark:text-gray-400">Register in the main office by Friday.</p>
                                </li>
                            </ul>
                            <div class="mt-4 text-right">
                                <a href="#" class="text-sm font-medium text-blue-600 dark:text-blue-400 hover:underline">View All Announcements &rarr;</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<footer class="bg-primary text-white mt-12 -mx-4 md:-mx-10 lg:-mx-20 xl:-mx-40">
            <div class="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
                <div class="grid grid-cols-2 md:grid-cols-4 gap-8">
                    <div class="col-span-2 md:col-span-1">
                        <div class="flex items-center gap-2">
                            <div class="size-5">
                                <span class="material-symbols-outlined text-xl">temp_preferences_custom</span>
                            </div>
                            <h3 class="text-lg font-bold">ScholaHub</h3>
                        </div>
                        <p class="mt-4 text-sm text-gray-300">Empowering schools with smart, streamlined management solutions.</p>
                    </div>
                    <div>
                        <h4 class="font-semibold text-white tracking-wider uppercase">Quick Links</h4>
                        <ul class="mt-4 space-y-2">
                            <li><a class="text-gray-300 hover:text-white text-sm" href="#">About</a></li>
                            <li><a class="text-gray-300 hover:text-white text-sm" href="#">Features</a></li>
                            <li><a class="text-gray-300 hover:text-white text-sm" href="#">Contact</a></li>
                            <li><a class="text-gray-300 hover:text-white text-sm" href="#">Support</a></li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="font-semibold text-white tracking-wider uppercase">Legal</h4>
                        <ul class="mt-4 space-y-2">
                            <li><a class="text-gray-300 hover:text-white text-sm" href="#">Privacy Policy</a></li>
                            <li><a class="text-gray-300 hover:text-white text-sm" href="#">Terms of Service</a></li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="font-semibold text-white tracking-wider uppercase">Follow Us</h4>
                        <div class="mt-4 flex space-x-4">
                            <a class="text-gray-300 hover:text-white" href="#" aria-label="Facebook">
                                <span class="material-symbols-outlined text-2xl">group</span>
                            </a>
                            <a class="text-gray-300 hover:text-white" href="#" aria-label="Twitter">
                                <span class="material-symbols-outlined text-2xl">alternate_email</span>
                            </a>
                            <a class="text-gray-300 hover:text-white" href="#" aria-label="GitHub">
                                <span class="material-symbols-outlined text-2xl">code</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="mt-8 border-t border-gray-700 pt-8 text-center">
                    <p class="text-sm text-gray-400">Copyright ©2024 Designed by ScholaHub. All rights reserved.</p>
                </div>
            </div>
        </footer>
</div>
</div>
</body></html>