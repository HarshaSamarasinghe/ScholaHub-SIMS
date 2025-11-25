<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>ScholaHub - Contact Us</title>
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
            <a class="text-primary dark:text-white text-sm font-bold leading-normal" href="Contact.jsp">Contact</a>
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="About.jsp">About</a>
            <a class="text-gray-800 dark:text-gray-300 text-sm font-medium leading-normal hover:text-primary dark:hover:text-white" href="Support.jsp">Support</a>
        </div>

        <button class="flex min-w-[40px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-full h-10 w-10 bg-primary text-white hover:bg-opacity-90 transition-colors">
            <span class="material-symbols-outlined text-2xl">person</span>
        </button>
    </div>
</header>
<div class="px-4 md:px-10 lg:px-20 xl:px-40 flex flex-1 justify-center py-5 mt-20">
    <div class="layout-content-container flex flex-col max-w-[1000px] flex-1 gap-12">
        <main class="py-12">
            <div class="text-center mb-12">
                <h1 class="text-gray-900 dark:text-white text-4xl font-black leading-tight tracking-[-0.033em] mb-4">
                    Get in Touch with ScholaHub
                </h1>
                <p class="text-gray-600 dark:text-gray-400 text-lg max-w-2xl mx-auto">
                    Whether you have a technical question, need a product demo, or want to explore partnership opportunities, our team is here to help.
                </p>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-3 gap-10">

                <div class="lg:col-span-1 flex flex-col gap-6 p-6 rounded-xl bg-white dark:bg-gray-800/50 border border-gray-200 dark:border-gray-700 h-fit">
                    <h2 class="text-gray-900 dark:text-white text-2xl font-bold mb-2">Our Details</h2>

                    <div class="flex items-start gap-4">
                        <span class="material-symbols-outlined text-primary dark:text-blue-400 mt-1">mail</span>
                        <div>
                            <p class="font-semibold text-gray-900 dark:text-white">Email Support</p>
                            <a href="mailto:support@scholahub.com" class="text-blue-600 dark:text-blue-400 hover:underline">support@scholahub.com</a>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <span class="material-symbols-outlined text-primary dark:text-blue-400 mt-1">call</span>
                        <div>
                            <p class="font-semibold text-gray-900 dark:text-white">Phone/Sales</p>
                            <a href="tel:+18001234567" class="text-blue-600 dark:text-blue-400 hover:underline">+1 (800) 123-4567</a>
                            <p class="text-sm text-gray-500 dark:text-gray-400">Mon-Fri, 9:00 AM - 5:00 PM EST</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <span class="material-symbols-outlined text-primary dark:text-blue-400 mt-1">location_on</span>
                        <div>
                            <p class="font-semibold text-gray-900 dark:text-white">Headquarters</p>
                            <p class="text-gray-600 dark:text-gray-400">
                                123 Education Blvd, <br>
                                Suite 400, Knowledge City, NY 10001
                            </p>
                        </div>
                    </div>
                </div>

                <div class="lg:col-span-2 p-6 rounded-xl bg-white dark:bg-gray-800/50 shadow-lg border border-gray-200 dark:border-gray-700">
                    <h2 class="text-gray-900 dark:text-white text-2xl font-bold mb-6">Send Us a Message</h2>
                    <form action="#" method="POST" class="space-y-6">
                        <div>
                            <label for="full-name" class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">Full Name</label>
                            <input type="text" name="full-name" id="full-name" required
                                class="w-full rounded-lg border border-gray-300 dark:border-gray-600 bg-background-light dark:bg-gray-700 text-gray-900 dark:text-white focus:border-primary focus:ring-primary">
                        </div>

                        <div>
                            <label for="email" class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">Email Address</label>
                            <input type="email" name="email" id="email" required
                                class="w-full rounded-lg border border-gray-300 dark:border-gray-600 bg-background-light dark:bg-gray-700 text-gray-900 dark:text-white focus:border-primary focus:ring-primary">
                        </div>

                        <div>
                            <label for="subject" class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">Subject</label>
                            <select id="subject" name="subject" required
                                class="w-full rounded-lg border border-gray-300 dark:border-gray-600 bg-background-light dark:bg-gray-700 text-gray-900 dark:text-white focus:border-primary focus:ring-primary">
                                <option value="">Select a Subject</option>
                                <option value="support">Technical Support</option>
                                <option value="sales">Sales Inquiry / Request a Demo</option>
                                <option value="billing">Billing Question</option>
                                <option value="general">General Inquiry</option>
                            </select>
                        </div>

                        <div>
                            <label for="message" class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">Message</label>
                            <textarea id="message" name="message" rows="4" required
                                class="w-full rounded-lg border border-gray-300 dark:border-gray-600 bg-background-light dark:bg-gray-700 text-gray-900 dark:text-white focus:border-primary focus:ring-primary"></textarea>
                        </div>

                        <div>
                            <button type="submit" class="flex min-w-[120px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-lg h-10 px-4 bg-primary text-white text-sm font-bold leading-normal tracking-[0.015em] hover:bg-opacity-90 transition-colors">
                                <span class="truncate">Send Message</span>
                            </button>
                        </div>
                    </form>
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