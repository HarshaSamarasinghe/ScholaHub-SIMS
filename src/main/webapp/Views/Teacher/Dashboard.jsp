<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.scholahub.model.Teacher" %>
<%@ page import="com.scholahub.model.User" %>
<%
	User user = (User) session.getAttribute("loggedInUser");
    String image = user.getProfileImage();
    System.out.println(image);
%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>ScholaHub - Teacher Dashboard</title>
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
    <a href="../../index.jsp">
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

        <button class="flex min-w-[40px] max-w-[480px] cursor-pointer items-center justify-center
                       overflow-hidden rounded-full h-10 w-10 bg-primary text-white hover:bg-opacity-90
                       transition-colors">

            <img src="<%= image %>" alt="Profile" class="h-full w-full object-cover" />

        </button>
    </div>
</header>
<div class="px-4 md:px-10 lg:px-20 xl:px-40 flex flex-1 justify-center py-5 mt-20">
    <div class="layout-content-container flex flex-col max-w-[1200px] flex-1 gap-12">
        <main>
            <div class="p-4 sm:p-0">
                <h1 class="text-gray-900 dark:text-white text-3xl font-bold leading-tight tracking-[-0.015em] mb-6">Welcome, Mr. <%=user.getFirstName() + user.getLastName()%>!</h1>
                <p class="text-gray-600 dark:text-gray-400 mb-8">Quick access to your core teaching functions and alerts.</p>

                <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">

                    <div class="lg:col-span-2 flex flex-col gap-8">

                        <div class="bg-white dark:bg-gray-800/50 p-6 rounded-xl shadow-lg border border-gray-200 dark:border-gray-700">
                            <h2 class="text-gray-900 dark:text-white text-xl font-bold mb-4 flex items-center gap-2">
                                <span class="material-symbols-outlined text-primary">analytics</span> Today's Overview
                            </h2>
                            <div class="grid grid-cols-1 md:grid-cols-3 gap-4">

                                <a href="#" class="p-4 bg-background-light dark:bg-gray-700/50 rounded-lg flex flex-col items-center hover:shadow-md transition-shadow">
                                    <p class="text-3xl font-black text-blue-600">32 / 35</p>
                                    <p class="text-sm text-gray-500 dark:text-gray-400 mt-1">Students Present (Period 1)</p>
                                    <button class="text-xs text-primary dark:text-blue-400 mt-2 font-medium flex items-center">
                                        Take Attendance <span class="material-symbols-outlined text-base ml-1">arrow_forward</span>
                                    </button>
                                </a>

                                <a href="#" class="p-4 bg-background-light dark:bg-gray-700/50 rounded-lg flex flex-col items-center hover:shadow-md transition-shadow">
                                    <p class="text-3xl font-black text-red-600">14</p>
                                    <p class="text-sm text-gray-500 dark:text-gray-400 mt-1">Assignments to Grade</p>
                                    <button class="text-xs text-primary dark:text-blue-400 mt-2 font-medium flex items-center">
                                        Start Grading <span class="material-symbols-outlined text-base ml-1">arrow_forward</span>
                                    </button>
                                </a>

                                <a href="#" class="p-4 bg-background-light dark:bg-gray-700/50 rounded-lg flex flex-col items-center hover:shadow-md transition-shadow">
                                    <p class="text-3xl font-black text-amber-600">4</p>
                                    <p class="text-sm text-gray-500 dark:text-gray-400 mt-1">Unread Parent Messages</p>
                                    <button class="text-xs text-primary dark:text-blue-400 mt-2 font-medium flex items-center">
                                        Respond Now <span class="material-symbols-outlined text-base ml-1">arrow_forward</span>
                                    </button>
                                </a>
                            </div>
                        </div>

                        <div class="bg-white dark:bg-gray-800/50 p-6 rounded-xl shadow-lg border border-gray-200 dark:border-gray-700">
                            <h2 class="text-gray-900 dark:text-white text-xl font-bold mb-4 flex items-center gap-2">
                                <span class="material-symbols-outlined text-green-500">list_alt</span> My Classes
                            </h2>

                            <div class="overflow-x-auto">
                                <table class="min-w-full divide-y divide-gray-200 dark:divide-gray-700">
                                    <thead class="bg-gray-50 dark:bg-gray-700">
                                        <tr>
                                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Course</th>
                                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Students</th>
                                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Avg. Grade</th>
                                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody class="bg-white dark:bg-gray-800 divide-y divide-gray-200 dark:divide-gray-700">
                                        <tr>
                                            <td class="px-4 py-4 whitespace-nowrap text-sm font-medium text-gray-900 dark:text-white">English 10A</td>
                                            <td class="px-4 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">30</td>
                                            <td class="px-4 py-4 whitespace-nowrap text-sm font-semibold text-green-600 dark:text-green-400">89.2% (B+)</td>
                                            <td class="px-4 py-4 whitespace-nowrap text-right text-sm font-medium">
                                                <a href="#" class="text-primary dark:text-blue-400 hover:text-blue-700 mr-4">Gradebook</a>
                                                <a href="#" class="text-amber-600 dark:text-amber-400 hover:text-amber-700">Assign Work</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="px-4 py-4 whitespace-nowrap text-sm font-medium text-gray-900 dark:text-white">English 10B</td>
                                            <td class="px-4 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">32</td>
                                            <td class="px-4 py-4 whitespace-nowrap text-sm font-semibold text-green-600 dark:text-green-400">91.5% (A-)</td>
                                            <td class="px-4 py-4 whitespace-nowrap text-right text-sm font-medium">
                                                <a href="#" class="text-primary dark:text-blue-400 hover:text-blue-700 mr-4">Gradebook</a>
                                                <a href="#" class="text-amber-600 dark:text-amber-400 hover:text-amber-700">Assign Work</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="px-4 py-4 whitespace-nowrap text-sm font-medium text-gray-900 dark:text-white">Creative Writing (Elective)</td>
                                            <td class="px-4 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">18</td>
                                            <td class="px-4 py-4 whitespace-nowrap text-sm font-semibold text-green-600 dark:text-green-400">95.1% (A)</td>
                                            <td class="px-4 py-4 whitespace-nowrap text-right text-sm font-medium">
                                                <a href="#" class="text-primary dark:text-blue-400 hover:text-blue-700 mr-4">Gradebook</a>
                                                <a href="#" class="text-amber-600 dark:text-amber-400 hover:text-amber-700">Assign Work</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>

                    <div class="lg:col-span-1 flex flex-col gap-8">

                        <div class="bg-primary p-6 rounded-xl shadow-lg text-white">
                            <h2 class="text-xl font-bold mb-4 flex items-center gap-2">
                                <span class="material-symbols-outlined text-white">calendar_month</span> Today's Schedule
                            </h2>
                            <ul class="space-y-3">
                                <li class="p-3 bg-white/10 rounded-lg">
                                    <p class="font-bold">8:00 AM - 9:00 AM</p>
                                    <p class="text-sm text-gray-300">English 10A (Room 201)</p>
                                </li>
                                <li class="p-3 bg-white/10 rounded-lg border-l-4 border-amber-400">
                                    <p class="font-bold">9:00 AM - 10:00 AM</p>
                                    <p class="text-sm text-gray-300">**Currently: Planning/Prep Period**</p>
                                </li>
                                <li class="p-3 bg-white/10 rounded-lg">
                                    <p class="font-bold">10:00 AM - 11:00 AM</p>
                                    <p class="text-sm text-gray-300">English 10B (Room 201)</p>
                                </li>
                            </ul>
                            <div class="mt-4">
                                <a href="#" class="text-sm font-medium text-gray-200 hover:text-white hover:underline">View Full Calendar</a>
                            </div>
                        </div>

                        <div class="bg-white dark:bg-gray-800/50 p-6 rounded-xl shadow-lg border border-gray-200 dark:border-gray-700">
                            <h2 class="text-gray-900 dark:text-white text-xl font-bold mb-4 flex items-center gap-2">
                                <span class="material-symbols-outlined text-red-500">warning</span> Important Alerts
                            </h2>
                            <ul class="space-y-3">
                                <li class="p-3 bg-red-50 dark:bg-red-900/30 rounded-lg border-l-4 border-red-500">
                                    <p class="font-medium text-gray-900 dark:text-white">**Action Required:** Two students missed Period 1 attendance.</p>
                                    <p class="text-xs text-gray-600 dark:text-gray-400 mt-1">Please confirm absence reason.</p>
                                </li>
                                <li class="p-3 bg-blue-50 dark:bg-blue-900/30 rounded-lg border-l-4 border-blue-500">
                                    <p class="font-medium text-gray-900 dark:text-white">New Professional Development material available.</p>
                                    <p class="text-xs text-gray-600 dark:text-gray-400 mt-1">Topic: Integrating AI in Curriculum.</p>
                                </li>
                            </ul>
                            <div class="mt-4 text-right">
                                <a href="#" class="text-sm font-medium text-blue-600 dark:text-blue-400 hover:underline">View All Notifications &rarr;</a>
                            </div>
                        </div>

                        <div class="bg-white dark:bg-gray-800/50 p-6 rounded-xl shadow-lg border border-gray-200 dark:border-gray-700">
                            <h2 class="text-gray-900 dark:text-white text-xl font-bold mb-4 flex items-center gap-2">
                                <span class="material-symbols-outlined text-purple-500">link</span> Teacher Resources
                            </h2>
                            <ul class="space-y-3">
                                <li><a href="#" class="text-gray-700 dark:text-gray-300 hover:text-primary dark:hover:text-blue-400 flex items-center gap-2"><span class="material-symbols-outlined text-lg">description</span> Curriculum Documents</a></li>
                                <li><a href="#" class="text-gray-700 dark:text-gray-300 hover:text-primary dark:hover:text-blue-400 flex items-center gap-2"><span class="material-symbols-outlined text-lg">request_quote</span> Submit Supply Request</a></li>
                                <li><a href="#" class="text-gray-700 dark:text-gray-300 hover:text-primary dark:hover:text-blue-400 flex items-center gap-2"><span class="material-symbols-outlined text-lg">edit_document</span> Faculty Directory</a></li>
                            </ul>
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