<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>ScholaHub - Student Dashboard</title>

<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@400;500;700;900&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

<script id="tailwind-config">
tailwind.config = {
  darkMode: "class",
  theme: {
    extend: {
      colors: {
        "primary": "#091c32",
        "background-light": "#f6f7f8",
        "background-dark": "#121820",
      },
      fontFamily: {
        "display": ["Lexend", "sans-serif"]
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

<body class="font-display bg-background-light dark:bg-background-dark">
<div class="relative flex min-h-screen w-full flex-col group/design-root">
<div class="flex flex-col h-full grow">

<header class="flex items-center justify-between whitespace-nowrap border-b border-solid border-gray-200 dark:border-gray-700 px-4 sm:px-10 py-3 fixed top-0 left-0 right-0 z-50 bg-background-light/80 dark:bg-background-dark/80 backdrop-blur-sm">
    <div class="flex items-center gap-4 text-primary dark:text-white">
        <!-- Replaced SVG with Material Icon -->
        <span class="material-symbols-outlined text-3xl">school</span>

        <h2 class="text-primary dark:text-white text-lg font-bold leading-tight tracking-[-0.015em]">
            ScholaHub
        </h2>
    </div>

    <div class="flex flex-1 justify-end gap-8 items-center">
        <div class="hidden md:flex items-center gap-9">
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="#">Contact</a>
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="#">About</a>
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="#">Support</a>
        </div>


    </div>
</header>

<!-- MAIN -->
<main class="flex-1 px-4 mt-16 sm:px-6 lg:px-8 py-8">
<div class="max-w-7xl mx-auto">

<div class="mb-8">
<h1 class="text-3xl font-bold text-gray-900 dark:text-white">Welcome back, Jessica!</h1>
<p class="text-gray-600 dark:text-gray-400 mt-1">Here's your dashboard for today.</p>
</div>

<div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
<div class="lg:col-span-2 space-y-8">

<!-- MESSAGES -->
<section id="messages">
<h2 class="text-xl font-semibold text-gray-800 dark:text-gray-200 mb-4">Messages & Notices</h2>

<div class="bg-white dark:bg-gray-800/50 rounded-xl border border-gray-200 dark:border-gray-700 p-4 sm:p-6 space-y-4">

<div class="flex items-start gap-4 p-4 rounded-lg bg-blue-50 dark:bg-blue-900/20">
<span class="material-symbols-outlined text-primary dark:text-blue-400 mt-1">campaign</span>
<div>
<h3 class="font-semibold text-gray-900 dark:text-white">Parent-Teacher Meeting Scheduled</h3>
<p class="text-sm text-gray-600 dark:text-gray-400 mt-1">The quarterly parent-teacher meeting is scheduled for next Friday, Oct 28th. Please inform your parents. Venue: School Auditorium.</p>
<span class="text-xs text-gray-500 mt-2 block">Posted: 2 days ago</span>
</div>
</div>

<div class="flex items-start gap-4 p-4 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-700/50 transition-colors">
<span class="material-symbols-outlined text-primary dark:text-blue-400 mt-1">celebration</span>
<div>
<h3 class="font-semibold text-gray-900 dark:text-white">Annual Sports Day Announcement</h3>
<p class="text-sm text-gray-600 dark:text-gray-400 mt-1">Get ready for the Annual Sports Day on Nov 15th! Sign-ups for events are now open in the sports office.</p>
<span class="text-xs text-gray-500 mt-2 block">Posted: 5 days ago</span>
</div>
</div>

<div class="flex items-start gap-4 p-4 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-700/50 transition-colors">
<span class="material-symbols-outlined text-primary dark:text-blue-400 mt-1">science</span>
<div>
<h3 class="font-semibold text-gray-900 dark:text-white">Science Fair Submissions</h3>
<p class="text-sm text-gray-600 dark:text-gray-400 mt-1">The deadline for Science Fair project submissions is Nov 1st. Please submit your project proposals to Mr. Chen.</p>
<span class="text-xs text-gray-500 mt-2 block">Posted: 1 week ago</span>
</div>
</div>

</div>
</section>

<!-- EXAMS -->
<section id="exams">
<h2 class="text-xl font-semibold text-gray-800 dark:text-gray-200 mb-4">Exams</h2>
<div class="bg-white dark:bg-gray-800/50 rounded-xl border border-gray-200 dark:border-gray-700 overflow-hidden">
<div class="overflow-x-auto">
<table class="w-full text-left">
<thead class="bg-gray-50 dark:bg-gray-900/50 border-b border-gray-200 dark:border-gray-700">
<tr>
<th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase">Subject</th>
<th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase">Type</th>
<th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase">Date</th>
<th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase">Time</th>
</tr>
</thead>
<tbody class="divide-y divide-gray-200 dark:divide-gray-700">
<tr>
<td class="px-6 py-4 text-sm font-medium text-gray-900 dark:text-white">Mathematics</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">Mid-term</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">Oct 25, 2024</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">9:00 AM - 11:00 AM</td>
</tr>
<tr>
<td class="px-6 py-4 text-sm font-medium text-gray-900 dark:text-white">Physics</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">Mid-term</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">Oct 27, 2024</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">1:00 PM - 3:00 PM</td>
</tr>
<tr>
<td class="px-6 py-4 text-sm font-medium text-gray-900 dark:text-white">History</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">Chapter Test</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">Nov 02, 2024</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">10:00 AM - 10:45 AM</td>
</tr>
<tr>
<td class="px-6 py-4 text-sm font-medium text-gray-900 dark:text-white">English Literature</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">Mid-term</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">Nov 05, 2024</td>
<td class="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">9:00 AM - 11:30 AM</td>
</tr>
</tbody>
</table>
</div>
</div>
</section>

</div>

<!-- ASSIGNMENTS -->
<div class="lg:col-span-1">
<section id="assignments">
<h2 class="text-xl font-semibold text-gray-800 dark:text-gray-200 mb-4">Assignments</h2>

<div class="bg-white dark:bg-gray-800/50 rounded-xl border border-gray-200 dark:border-gray-700 p-4 sm:p-6 space-y-5">

<div class="flex items-center">
<div class="flex-1">
<p class="font-semibold text-gray-800 dark:text-gray-200">Chemistry Lab Report</p>
<p class="text-sm text-gray-500 dark:text-gray-400">Due: October 26, 2024</p>
</div>
<span class="inline-flex px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-300">
In Progress
</span>
</div>

<div class="flex items-center">
<div class="flex-1">
<p class="font-semibold text-gray-800 dark:text-gray-200">Algebra Problem Set 5</p>
<p class="text-sm text-gray-500 dark:text-gray-400">Due: October 29, 2024</p>
</div>
<span class="inline-flex px-2.5 py-0.5 rounded-full text-xs font-medium bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-300">
Upcoming
</span>
</div>

<div class="flex items-center">
<div class="flex-1">
<p class="font-semibold text-gray-800 dark:text-gray-200">History Essay: The Cold War</p>
<p class="text-sm text-gray-500 dark:text-gray-400">Due: November 08, 2024</p>
</div>
<span class="inline-flex px-2.5 py-0.5 rounded-full text-xs font-medium bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-300">
Upcoming
</span>
</div>

<div class="flex items-center opacity-70">
<div class="flex-1">
<p class="font-semibold text-gray-800 dark:text-gray-200">Biology Project Phase 1</p>
<p class="text-sm text-gray-500 dark:text-gray-400">Due: October 18, 2024</p>
</div>
<span class="inline-flex px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-300">
Completed
</span>
</div>

<div class="flex items-center opacity-70">
<div class="flex-1">
<p class="font-semibold text-gray-800 dark:text-gray-200">Book Report: &quot;To Kill a Mockingbird&quot;</p>
<p class="text-sm text-gray-500 dark:text-gray-400">Due: October 15, 2024</p>
</div>
<span class="inline-flex px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-300">
Completed
</span>
</div>

</div>
</section>
</div>

</div>
</div>
</main>



<footer class="bg-primary text-white mt-12 -mx-4 md:-mx-10 lg:-mx-20 xl:-mx-40">
            <div class="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
                <div class="grid grid-cols-2 md:grid-cols-4 gap-8">
                    <div class="col-span-2 md:col-span-1">
                        <div class="flex items-center gap-2">
                            <div class="size-5">
                                <svg fill="none" viewbox="0 0 48 48" xmlns="http://www.w3.org/2000/svg"><path d="M44 11.2727C44 14.0109 39.8386 16.3957 33.69 17.6364C39.8386 18.877 44 21.2618 44 24C44 26.7382 39.8386 29.123 33.69 30.3636C39.8386 31.6043 44 33.9891 44 36.7273C44 40.7439 35.0457 44 24 44C12.9543 44 4 40.7439 4 36.7273C4 33.9891 8.16144 31.6043 14.31 30.3636C8.16144 29.123 4 26.7382 4 24C4 21.2618 8.16144 18.877 14.31 17.6364C8.16144 16.3957 4 14.0109 4 11.2727C4 7.25611 12.9543 4 24 4C35.0457 4 44 7.25611 44 11.2727Z" fill="currentColor"></path></svg>
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
                            <a class="text-gray-300 hover:text-white" href="#">
                                <svg aria-hidden="true" class="h-6 w-6" fill="currentColor" viewbox="0 0 24 24"><path clip-rule="evenodd" d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z" fill-rule="evenodd"></path></svg>
                            </a>
                            <a class="text-gray-300 hover:text-white" href="#">
                                <svg aria-hidden="true" class="h-6 w-6" fill="currentColor" viewbox="0 0 24 24"><path d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.71v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84"></path></svg>
                            </a>
                            <a class="text-gray-300 hover:text-white" href="#">
                                <svg aria-hidden="true" class="h-6 w-6" fill="currentColor" viewbox="0 0 24 24"><path clip-rule="evenodd" d="M12 2C6.477 2 2 6.477 2 12.019c0 4.438 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.009-.868-.014-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.031-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.203 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.338 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.001 10.001 0 0022 12.019C22 6.477 17.523 2 12 2z" fill-rule="evenodd"></path></svg>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="mt-8 border-t border-gray-700 pt-8 text-center">
                    <p class="text-sm text-gray-400">Copyright &copy;2024 Designed by ScholaHub. All rights reserved.</p>
                </div>
            </div>
        </footer>

</div>
</div>
</body>
</html>
