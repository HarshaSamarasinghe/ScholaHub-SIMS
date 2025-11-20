<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en"><head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>ScholaHub - The All-in-One Platform for Modern Education</title>
<script type="text/javascript">
   		if(window.location.search.includes('logout=success')){

   			alert('Logout Successfully!');
   		}
    </script>
<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@400;500;700;900&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>
<script id="tailwind-config">
    tailwind.config = {
      darkMode: "class",
      theme: {
        extend: {
          colors: {
            // Note: The footer uses the 'primary' color
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

<div class="px-4 md:px-10 lg:px-20 xl:px-40 flex flex-1 justify-center py-5">
<div class="layout-content-container flex flex-col max-w-[960px] flex-1 gap-12">
<header class="flex items-center justify-between whitespace-nowrap border-b border-solid border-gray-200 dark:border-gray-700 px-4 sm:px-10 py-3 fixed top-0 left-0 right-0 z-50 bg-background-light/80 dark:bg-background-dark/80 backdrop-blur-sm">
<div class="flex items-center gap-4 text-primary dark:text-white">
<div class="size-6 text-primary dark:text-white">
<svg fill="none" viewbox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
<path d="M44 11.2727C44 14.0109 39.8386 16.3957 33.69 17.6364C39.8386 18.877 44 21.2618 44 24C44 26.7382 39.8386 29.123 33.69 30.3636C39.8386 31.6043 44 33.9891 44 36.7273C44 40.7439 35.0457 44 24 44C12.9543 44 4 40.7439 4 36.7273C4 33.9891 8.16144 31.6043 14.31 30.3636C8.16144 29.123 4 26.7382 4 24C4 21.2618 8.16144 18.877 14.31 17.6364C8.16144 16.3957 4 14.0109 4 11.2727C4 7.25611 12.9543 4 24 4C35.0457 4 44 7.25611 44 11.2727Z" fill="currentColor"></path>
</svg>
</div>
<h2 class="text-primary dark:text-white text-lg font-bold leading-tight tracking-[-0.015em]">ScholaHub</h2>
</div>
<div class="flex flex-1 justify-end gap-8 items-center">
<div class="hidden md:flex items-center gap-9">
<a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="#">Contact</a>
<a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="#">About</a>
<a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="#">Support</a>
</div>
<button class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-lg h-10 px-4 bg-primary text-white text-sm font-bold leading-normal tracking-[0.015em] hover:bg-opacity-90 transition-colors">
<span class="truncate"><a href="Authentication/Login.jsp">Login</a></span>
</button>
</div>
</header>
<main class="mt-16">
<div class="@container">
<div class="@[480px]:p-4">
<div class="flex min-h-[480px] flex-col gap-6 bg-cover bg-center bg-no-repeat @[480px]:gap-8 @[480px]:rounded-xl items-start justify-end px-4 pb-10 @[480px]:px-10" data-alt="Abstract blue and white waves representing technology and learning" style='background-image: linear-gradient(rgba(0, 0, 0, 0.1) 0%, rgba(9, 28, 50, 0.6) 100%), url("https://lh3.googleusercontent.com/aida-public/AB6AXuCMTZee3TOBqJehUC3sXP7LVTXkgF3PyypCHbRs6jdg357UGlNgbrBAAZqv1O2LI0XvA1acR5yfALKj1Lil0xCXvHi2zv-3G47ZsymvrLqgMMKPs0UHrZT9RkgLC8O2jQ4dPoERvzfK7hd-KnJk9wNoJSolKOMS_NbaHgXOIcyZdLKvnjHE8nCbNdGBH6-BcF9k4GpoQrr5gEDOv-oEbBTDgl6p9vCKcVzEuAE95rKW0kZmzHTNgexnjTJKOc4KgkGfC8LM0NKzw2oM");'>
<div class="flex flex-col gap-2 text-left max-w-2xl">
<h1 class="text-white text-4xl font-black leading-tight tracking-[-0.033em] @[480px]:text-5xl @[480px]:font-black @[480px]:leading-tight @[480px]:tracking-[-0.033em]">
                      The All-in-One Platform for Modern Education
                    </h1>
<h2 class="text-gray-200 text-sm font-normal leading-normal @[480px]:text-base @[480px]:font-normal @[480px]:leading-normal">
                      Streamlining communication, grades, and administration for schools.
                    </h2>
</div>
<button class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-lg h-10 px-4 @[480px]:h-12 @[480px]:px-5 bg-white text-primary text-sm font-bold leading-normal tracking-[0.015em] @[480px]:text-base @[480px]:font-bold @[480px]:leading-normal @[480px]:tracking-[0.015em] hover:bg-gray-200 transition-colors">
<span class="truncate">Request a Demo</span>
</button>
</div>
</div>
</div>
<div class="flex flex-col gap-10 px-4 py-16 @container">
<div class="flex flex-col gap-4">
<h1 class="text-gray-900 dark:text-white tracking-light text-[32px] font-bold leading-tight @[480px]:text-4xl @[480px]:font-black @[480px]:leading-tight @[480px]:tracking-[-0.033em] max-w-[720px]">
                  Why ScholaHub?
                </h1>
<p class="text-gray-700 dark:text-gray-300 text-base font-normal leading-normal max-w-[720px]">
                  Discover how our integrated tools can transform your school's administrative and academic processes.
                </p>
</div>
<div class="grid grid-cols-[repeat(auto-fit,minmax(180px,1fr))] gap-4 p-0">
<div class="flex flex-1 gap-4 rounded-xl border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800/50 p-4 flex-col">
<span class="material-symbols-outlined text-primary dark:text-blue-400" style="font-size: 28px;">pie_chart</span>
<div class="flex flex-col gap-1">
<h2 class="text-gray-900 dark:text-white text-base font-bold leading-tight">Grade Management</h2>
<p class="text-gray-600 dark:text-gray-400 text-sm font-normal leading-normal">Effortlessly manage and track student grades and performance.</p>
</div>
</div>
<div class="flex flex-1 gap-4 rounded-xl border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800/50 p-4 flex-col">
<span class="material-symbols-outlined text-primary dark:text-blue-400" style="font-size: 28px;">check_circle</span>
<div class="flex flex-col gap-1">
<h2 class="text-gray-900 dark:text-white text-base font-bold leading-tight">Attendance Tracking</h2>
<p class="text-gray-600 dark:text-gray-400 text-sm font-normal leading-normal">Simplify the process of recording and monitoring student attendance.</p>
</div>
</div>
<div class="flex flex-1 gap-4 rounded-xl border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800/50 p-4 flex-col">
<span class="material-symbols-outlined text-primary dark:text-blue-400" style="font-size: 28px;">group</span>
<div class="flex flex-col gap-1">
<h2 class="text-gray-900 dark:text-white text-base font-bold leading-tight">Student Information</h2>
<p class="text-gray-600 dark:text-gray-400 text-sm font-normal leading-normal">Centralize and secure all student data for easy access.</p>
</div>
</div>
<div class="flex flex-1 gap-4 rounded-xl border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800/50 p-4 flex-col">
<span class="material-symbols-outlined text-primary dark:text-blue-400" style="font-size: 28px;">chat</span>
<div class="flex flex-col gap-1">
<h2 class="text-gray-900 dark:text-white text-base font-bold leading-tight">Parent Communication</h2>
<p class="text-gray-600 dark:text-gray-400 text-sm font-normal leading-normal">Foster a strong school-home connection with seamless tools.</p>
</div>
</div>
</div>
</div>
<div class="py-16 px-4">
<h2 class="text-gray-900 dark:text-white text-3xl font-bold leading-tight tracking-[-0.015em] mb-8 text-center">Trusted by Educators</h2>
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
<div class="flex flex-col items-center text-center p-6 rounded-xl bg-white dark:bg-gray-800/50 border border-gray-200 dark:border-gray-700">
<img class="w-20 h-20 rounded-full mb-4 object-cover" data-alt="Portrait of a female principal" src="https://lh3.googleusercontent.com/aida-public/AB6AXuCtKdLm42oNz4BtzbhQMdYd1mZ6dfOT8Xcuej0VymsrZ-mreIFBjcWKdy2PUbgSzeJuE-944UApt5p0jE0iCKEpK6NVfMyXKxl_9elALbPqrc_-imkgo0gkCgSWS0Ja7Kh7TABQnAWqo6Vf4YMvqvrvCYcSBCELrKwZHusVVXmy6WPOar22UgX03s9-Y8YUWThiCHMnKJ3mvjKv4W3kzxVr6DfvjnEllVZP_nA8i9GsxWp7KOL2NjN1K9XIrEL-eNjvUL4pYXFuC_y-"/>
<blockquote class="text-gray-700 dark:text-gray-300 italic mb-4">"ScholaHub has revolutionized how we manage student data. It's intuitive, powerful, and has saved our administrative staff countless hours."</blockquote>
<cite class="font-bold text-gray-900 dark:text-white">Dr. Eleanor Vance</cite>
<span class="text-sm text-gray-500 dark:text-gray-400">Principal, Northwood High</span>
</div>
<div class="flex flex-col items-center text-center p-6 rounded-xl bg-white dark:bg-gray-800/50 border border-gray-200 dark:border-gray-700">
<img class="w-20 h-20 rounded-full mb-4 object-cover" data-alt="Portrait of a male teacher" src="https://lh3.googleusercontent.com/aida-public/AB6AXuAX5lwzBt_3K9qCtWMYMcNQwJ8q3Tfl_nd6azcepv8u7LtOjW0J3PaH7I9zpYShzbhPodKkJxIzcy_DKFZZ4wgfIQeCYDOY-GBFPMAWQO3FQOmlvCvlmtz7ddMpbWacPNx2ir7lI3gTsMhiu6BK42zQozHG4f_a0oXmu-fL8BJKHt4MxtUl3KNKAG1fWD_v1Ul3oVXgae_HaEc26e54cZO71ftcRZcGIvu_oXDGoY2qM8yKm46WzZC4fMzLuFvYJF2iDjc8Xd7HGl-7"/>
<blockquote class="text-gray-700 dark:text-gray-300 italic mb-4">"The gradebook and parent communication tools are a game-changer. I can now provide real-time feedback and keep parents informed with ease."</blockquote>
<cite class="font-bold text-gray-900 dark:text-white">Mr. David Chen</cite>
<span class="text-sm text-gray-500 dark:text-gray-400">Science Teacher, Oak Valley Middle</span>
</div>
<div class="flex flex-col items-center text-center p-6 rounded-xl bg-white dark:bg-gray-800/50 border border-gray-200 dark:border-gray-700">
<img class="w-20 h-20 rounded-full mb-4 object-cover" data-alt="Portrait of a parent" src="https://lh3.googleusercontent.com/aida-public/AB6AXuBe6Xrf9Gh84Oa1XKBoCmioaYGZQf_s_zSqoqBJYINl_k5JB2-DGHw5pbd0Ba9Avt2pDbwFiEB-Ld3WeSSEieYFj9IsiiTkV6hosi8vQxAsY0MZlgwL4awvq6xqkADcJiwM3tQ7JIxWXxe-er_USvYmI2Bo4-vwcacuK5A9Iw_PAzBnQbZhJbkc7OKlkrMuapNmyqqizd1ufhaTAPZVZ71arTUVWmOSoWGlQHU1h0A7EKFWWNMR1ei-oB_hvu0uWlwOtARyNMV7xPUv"/>
<blockquote class="text-gray-700 dark:text-gray-300 italic mb-4">"As a parent, I love being able to check my child's attendance and grades instantly. ScholaHub keeps me connected to their academic life."</blockquote>
<cite class="font-bold text-gray-900 dark:text-white">Sarah Jenkins</cite>
<span class="text-sm text-gray-500 dark:text-gray-400">Parent</span>
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
</body></html>