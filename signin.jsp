<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <!-- ############### HEADER ###################### -->
<div >
    <c:import url="header.jsp"/>
</div>
<!-- ############### HEADER ###################### -->

<!-- ############BODY################# -->
<div class="flex min-h-full flex-col justify-center px-6 pt-24 pb-28   lg:px-8">
    <div class="sm:mx-auto sm:w-full sm:max-w-sm">
      <!-- <img class="mx-auto h-10 w-auto" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt="Your Company"> -->
      <h2 class="mt-6 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900 ">SignIn to your account</h2>
    </div>
  
    <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-sm">
      <form class="space-y-6" action="signin.do" method="POST">

        

        <div>
          <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Email address</label>
          <div class="mt-2">
            <!-- Sir did type=text -->
            <input id="email" name="email" type="email" autocomplete="email" pattern="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" required class="block w-full rounded-md border-0 py-1.5 pl-2 text-gray-900 shadow hover:shadow-2xl ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
            <p class="hidden mt-1 text-sm text-red-500 dark:text-red-300" id="email_error">Please enter valid Email Address!!</p>
          </div>
        </div>
  
        <div>
          <div class="flex items-center justify-between">
            <label for="password" class="block text-sm font-medium leading-6 text-gray-900">Password</label>
           
          </div>
          <div class="mt-2">
            <input id="password" name="password" type="password" minlength="8" maxlength="16"  required class="block w-full rounded-md border-0 py-1.5 pl-2 text-gray-900 shadow hover:shadow-2xl ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
          </div>
        <div class="flex justify-end">
            <label class=" ms-2 mt-2 text-sm font-medium text-gray-900 dark:text-gray-300"> <a href="#" class="text-blue-600 dark:text-blue-500 hover:underline">Forgot Password??</a></label>
        </div>
        </div>

        <div>
          <button type="submit"  id="signup_btn" class="flex w-full justify-center rounded-md bg-gradient-to-r from-violet-500 to-fuchsia-500 px-3 py-3 text-sm font-semibold leading-6 text-white shadow-2xl hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Sign In</button>
        </div>
    </form>
  
      
  </div>
</div>

<!-- ############BODY################# -->

<!-- ####################FOOTER######################### -->
<div class="mt-2">
    <c:import url="footer.jsp"/>
</div>
<!-- ####################FOOTER######################### -->

<!-- ##############DROP DOWN PROFILE OFF FROM HEADER#################### -->
  <script>
    let user_menu_button=document.querySelector('#user-menu-button');
    user_menu_button.classList.add('hidden')
  </script>
<!-- ##############DROP DOWN PROFILE OFF FROM HEADER#################### -->



</body>
</html>