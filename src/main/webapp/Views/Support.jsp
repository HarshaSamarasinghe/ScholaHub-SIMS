<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>ScholaHub - Support Center</title>
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
   <a href="../index.jsp" >
    <div class="flex items-center gap-4 text-primary dark:text-white">
        <span class="material-symbols-outlined text-3xl">school</span>
        <h2 class="text-primary dark:text-white text-lg font-bold leading-tight tracking-[-0.015em]">
            ScholaHub
        </h2>
    </div>
    </a>

    <div class="flex flex-1 justify-end gap-8 items-center">
        <div class="hidden md:flex items-center gap-9">
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="Student/Dashboard.jsp">Dashboard</a>
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="Contact.jsp">Contact</a>
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="About.jsp">About</a>
            <a class="text-primary dark:text-white text-sm font-bold leading-normal" href="Support.jsp">Support</a> </div>

        <button class="flex min-w-[40px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-full h-10 w-10 bg-primary text-white hover:bg-opacity-90 transition-colors">
            <span class="material-symbols-outlined text-2xl">person</span>
        </button>
    </div>
</header>
<div class="px-4 md:px-10 lg:px-20 xl:px-40 flex flex-1 justify-center py-5 mt-20">
    <div class="layout-content-container flex flex-col max-w-[960px] flex-1 gap-12">
        <main class="py-12">
            <div class="text-center mb-12">
                <h1 class="text-gray-900 dark:text-white text-4xl font-black leading-tight tracking-[-0.033em] mb-4">
                    ScholaHub Support Center
                </h1>
                <p class="text-gray-600 dark:text-gray-400 text-lg max-w-3xl mx-auto">
                    Find instant answers to common questions and access helpful resources. If you can't find what you need, submit a request below.
                </p>
            </div>

            <div class="max-w-xl mx-auto mb-12">
                <div class="relative">
                    <span class="material-symbols-outlined absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400">search</span>
                    <input type="search" placeholder="Search our help articles (e.g., 'reset password')"
                           class="w-full pl-10 pr-4 py-3 rounded-xl border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:border-primary focus:ring-primary">
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-12">

                <a href="#" class="p-6 text-center bg-white dark:bg-gray-800/50 rounded-xl border border-gray-200 dark:border-gray-700 hover:shadow-lg transition-shadow">
                    <span class="material-symbols-outlined text-4xl text-green-500 mb-3">auto_stories</span>
                    <h3 class="font-bold text-xl text-gray-900 dark:text-white mb-1">User Guides</h3>
                    <p class="text-sm text-gray-600 dark:text-gray-400">Step-by-step instructions for all features.</p>
                </a>

                <a href="#" class="p-6 text-center bg-white dark:bg-gray-800/50 rounded-xl border border-gray-200 dark:border-gray-700 hover:shadow-lg transition-shadow">
                    <span class="material-symbols-outlined text-4xl text-amber-500 mb-3">quiz</span>
                    <h3 class="font-bold text-xl text-gray-900 dark:text-white mb-1">FAQ & Troubleshooting</h3>
                    <p class="text-sm text-gray-600 dark:text-gray-400">Quick solutions for common issues.</p>
                </a>

                <a href="#" class="p-6 text-center bg-white dark:bg-gray-800/50 rounded-xl border border-gray-200 dark:border-gray-700 hover:shadow-lg transition-shadow">
                    <span class="material-symbols-outlined text-4xl text-red-500 mb-3">bug_report</span>
                    <h3 class="font-bold text-xl text-gray-900 dark:text-white mb-1">System Status</h3>
                    <p class="text-sm text-gray-600 dark:text-gray-400">Check if ScholaHub is currently operational.</p>
                </a>
            </div>

            <div class="text-center p-8 bg-primary/10 dark:bg-gray-700/50 rounded-xl">
                <h2 class="text-gray-900 dark:text-white text-3xl font-bold mb-4">Still Need Help?</h2>
                <p class="text-gray-700 dark:text-gray-300 mb-6">Our dedicated support team is ready to assist you.</p>

                <div class="flex flex-col sm:flex-row justify-center gap-4">
                    <a href="#" class="flex min-w-[180px] cursor-pointer items-center justify-center overflow-hidden rounded-lg h-12 px-5 bg-primary text-white text-base font-bold leading-normal tracking-[0.015em] hover:bg-opacity-90 transition-colors">
                        <span class="material-symbols-outlined mr-2">contact_support</span>
                        <span class="truncate">Submit a Ticket</span>
                    </a>
                    <a href="tel:+18001234567" class="flex min-w-[180px] cursor-pointer items-center justify-center overflow-hidden rounded-lg h-12 px-5 border border-primary dark:border-blue-400 text-primary dark:text-blue-400 bg-white dark:bg-transparent text-base font-bold leading-normal tracking-[0.015em] hover:bg-primary/5 transition-colors">
                        <span class="material-symbols-outlined mr-2">call</span>
                        <span class="truncate">Call Our Team</span>
                    </a>
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
                            <li><a class="text-gray-300 hover:text-white text-sm" href="About.jsp">About</a></li>
                            <li><a class="text-gray-300 hover:text-white text-sm" href="#">Features</a></li>
                            <li><a class="text-gray-300 hover:text-white text-sm" href="Contact.jsp">Contact</a></li>
                            <li><a class="text-gray-300 hover:text-white text-sm" href="Support.jsp">Support</a></li>
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