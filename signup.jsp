<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>
<!-- ############### HEADER ###################### -->
<div >
    <c:import url="header.jsp"/>
</div>
<!-- ############### HEADER ###################### -->

<!-- #######################BODY################################## -->

<div class="flex min-h-full flex-col justify-center px-6 py-2  lg:px-8">
    <div class="sm:mx-auto sm:w-full sm:max-w-sm">
      <!-- <img class="mx-auto h-10 w-auto" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt="Your Company"> -->
      <h2 class="mt-6 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900 ">Create your account</h2>
    </div>
  
    <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-sm">
      <form class="space-y-6" action="signup.do" method="POST">

        <div>
          <label for="name" class="block text-sm font-medium leading-6 text-gray-900">Name</label>
          <div>
            <input type="text" id="name" name="name" autocomplete="on" required class="block w-full rounded-md border-0 py-1.5 pl-2 text-gray-900 shadow hover:shadow-2xl ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
          </div>
        </div>

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
        </div>
        

        <div>
          <label for="phone" class="block text-sm font-medium leading-6 text-gray-900">Phone</label>
          <div>
            <input type="text" id="phone" name="phone" required class="block w-full rounded-md border-0 py-1.5 pl-2 text-gray-900 shadow hover:shadow-2xl ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
            <p class="hidden mt-1 text-sm text-red-500 dark:text-red-300" id="phone_error">Please enter valid phone number!!</p>
          </div>
        </div>

        <!-- <div>
          <label for="otp" class="block text-sm font-medium leading-6 text-gray-900">OTP</label>
          <div class="flex flex-row h-8">
            <input type="text" id="otp" name="otp" required autocomplete="none" class="basis-1/2 mr-4 block w-9/12 rounded-md border-0 py-1.5 pl-2 text-gray-900 shadow hover:shadow-2xl ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-xs sm:leading-6">
          </div>
          
        </div> -->
        
        <!-- #########################XXXXXXXXXXXXXXXXXX###################################### -->
        
        
        <div>
          <label for="otp" class="block text-sm font-medium leading-6 text-gray-900">OTP</label>
        </div>
        <div class="flex mb-2 space-x-2 rtl:space-x-reverse" id="otp_div">
          <div>
            <label for="code1" class="sr-only">First code</label>
            <input type="text" maxlength="1" autocomplete="off" name="c1" onkeyup="focusNextInput(this, 'code1', 'code2')" id="code1" class="block w-9 h-9 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
          </div>
          <div>
            <label for="code2" class="sr-only">Second code</label>
            <input type="text" maxlength="1" name="c2" autocomplete="off" onkeyup="focusNextInput(this, 'code1', 'code3')" id="code2" class="block w-9 h-9 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
          </div>
          <div>
            <label for="code3" class="sr-only">Third code</label>
            <input type="text" maxlength="1" autocomplete="off" name="c3" onkeyup="focusNextInput(this, 'code2', 'code4')" id="code3" class="block w-9 h-9 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
          </div>
          <div>
            <label for="code4" class="sr-only">Fourth code</label>
            <input type="text" maxlength="1" autocomplete="off" name="c4" onkeyup="focusNextInput(this, 'code3', 'code5')" id="code4" class="block w-9 h-9 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
          </div>
          <div>
            <label for="code5" class="sr-only">Fivth code</label>
            <input type="text" maxlength="1" autocomplete="off" name="c5" onkeyup="focusNextInput(this, 'code4', 'code6')" id="code5" class="block w-9 h-9 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
          </div>
          <div>
            <label for="code6" class="sr-only">Sixth code</label>
            <input type="text" maxlength="1" autocomplete="off" name="c6" onkeyup="focusNextInput(this, 'code5', 'code6')" id="code6" class="block w-9 h-9 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
          </div>

          
          <div>
            <button type="button" id="otpButton" class=" hidden basis-1/4 h-8 text-white  bg-gradient-to-br from-purple-600 to-blue-500 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 font-medium rounded-lg text-xs px-5 py-2 text-center me-2 mb-2">Send OTP</button>
          </div>
          
        </div>
        <p class="hidden mt-1 text-sm text-red-500 dark:text-red-300" id="otp_error">Please enter valid OTP!!</p>
        <p class="hidden mt-1 text-sm text-green-700 dark:text-green-700" id="otp_sent_message">OTP Sent To Your Email!</p>
  <!-- <p id="helper-text-explanation" class="mt-2 text-sm text-gray-500 dark:text-gray-400">Please introduce the 6 digit code we sent via email.</p> -->




        <!-- #########################XXXXXXXXXXXXXXXXXX###################################### -->

        <div class="g-recaptcha" data-sitekey="6LfH75IoAAAAAA-ExT9NQ6e-3NOnnQAcvoiXoNaI"></div>
        
        <!-- <div class="flex items-center">
          <input id="link_checkbox" type="checkbox" value="" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
          <label for="link_checkbox" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">I agree with the <a href="#" class="text-blue-600 dark:text-blue-500 hover:underline">terms and conditions</a>.</label>
        </div> -->
  
        <div>
          <button type="submit" disabled id="signup_btn" class="flex w-full justify-center rounded-md bg-gradient-to-r from-violet-500 to-fuchsia-500 px-3 py-3 text-sm font-semibold leading-6 text-white shadow-2xl hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Sign Up</button>
        </div>
    </form>
  
      
  </div>
</div>

  
  

<!-- #######################BODY################################## -->
  
  
<!-- ####################FOOTER######################### -->
<div class="mt-16">
    <c:import url="footer.jsp"/>
</div>
<!-- ####################FOOTER######################### -->

<!-- ##############DROP DOWN PROFILE OFF FROM HEADER#################### -->
  <script>
    let user_menu_button=document.querySelector('#user-menu-button');
    user_menu_button.classList.add('hidden')
  </script>
<!-- ##############DROP DOWN PROFILE OFF FROM HEADER#################### -->

<!-- ################PHONE CHECKING##################### -->
  <script>
    let phn=document.querySelector("#phone")
    let phone_error=document.querySelector("#phone_error")


    let contactPattern = /^[6-9][0-9]{9}$/;
    let checkDuplicatePhone = false;

    let checkPhoneExist=async(phn)=>{
      let response=await fetch('check_phone_exist.do?phone='+phn);
      let result=await response.text();
      return result;
    }

    phn.addEventListener('focus',()=>{
      checkDuplicatePhone=false;
      phone_error.classList.remove('hidden');
      if(phone_error.classList.contains('text-red-500')){
        phone_error.classList.replace('text-red-500','text-gray-500');
        phone_error.innerText='Enter a valid Phone Number!'
        
      }
      else if(phone_error.classList.contains('text-green-500')){
        phone_error.classList.replace('text-green-500','text-gray-500')
        phone_error.innerText='Enter a valid Phone Number!'
      }

    })

    phn.addEventListener('blur',()=>{
      if(contactPattern.test(phn.value)){
        checkPhoneExist(phn.value).then((data)=>{
          if(data=='true'){
          phone_error.classList.replace('text-gray-500','text-red-500');
          phone_error.innerText='Ohh!!Phone Number alredy Exists'

          }
          else{
            phone_error.classList.replace('text-gray-500','text-green-500');
            phone_error.innerText='Yayy!!Number Accepted'
          }
        }).catch((error)=>{
          console.log(error)
        })
      }else{
        phone_error.classList.replace('text-gray-500','text-red-500');
        phone_error.innerText='Please enter phone No. in correct format!!'
      }
    })
  </script>
<!-- ################PHONE CHECKING##################### -->


<!-- #####################EMAIL_CHECKING#################### -->
  <script>
    let email=document.querySelector("#email")
    let email_error=document.querySelector("#email_error")
    let otp_btn=document.querySelector("#otpButton")

    let emailPattern=/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
    let checkDuplicateEmail=false

    let checkEmailExists=async(email)=>{
      let response=await fetch('check_email_exists.do?email='+email);
      let result=await response.text();
      return result;
    }

    email.addEventListener('focus',()=>{
      checkDuplicateEmail=false;
      email_error.classList.remove('hidden');

      if(email_error.classList.contains('text-red-500')){
        email_error.classList.replace('text-red-500','text-gray-500')
        email_error.innerText='Enter a valid Email'
        otp_btn.classList.add('hidden')
      }

      else if(email_error.classList.contains('text-green-500')){
        email_error.classList.replace('text-green-500','text-gray-500')
        email_error.innerText='Enter a valid Email'
        otp_btn.classList.add('hidden')
      }
    })

    email.addEventListener('blur',(event)=>{
      if(emailPattern.test(email.value)){
        checkEmailExists(email.value).then((data)=>{
          if(data=='true'){
            email_error.classList.replace('text-gray-500','text-red-500')
            email_error.innerText='Ohh! Email Already Exist'
            otp_btn.classList.add('hidden')
          }
          else{
            email_error.classList.replace('text-gray-500','text-green-500')
            email_error.innerText='Yayy!! Email Accepted'
            otp_btn.classList.remove('hidden')
          }
        }).catch((error)=>{
          console.log(error)
        });
      }else{
        email_error.classList.replace('text-gray-500','text-red-500')
        email_error.innerText='Please Enter Email in Correct Format!'
        otp_btn.classList.add('hidden')
      }
    });
  </script>

<!-- #####################EMAIL CHECKING#################### -->

<!-- ################SEND OTP#################### -->
  <script>
    let otpButton=document.querySelector("#otpButton")
    let emailOTP=document.querySelector("#email")
    let otp_sent_message=document.querySelector("#otp_sent_message")

    let sendOTP=async(otpButton)=>{
      let response=await fetch('send_otp.do?emailOTP='+emailOTP.value);
      let result=await response.text();
      return result;
    }
    otpButton.addEventListener('click',(event)=>{
      otpButton.setAttribute("disabled","disabled")
      
      otpButton.innerText="Sending..."
      sendOTP(event.target.value).then((data)=>{
        otpButton.removeAttribute("disabled")
        otpButton.innerText="Send OTP"
        if(data=='true')
          otp_sent_message.classList.remove('hidden')
        else
          console.log("OTP NOT SENT")
      }).catch((error)=>{
        console.log("Error")
      })
    })
  </script>
<!-- ################SEND OTP#################### -->

<!-- ################OTP FIELDS/OTP CHECKING################# -->
<script>
    let cd1=document.querySelector("#code1")
    let cd2=document.querySelector("#code2")
    let cd3=document.querySelector("#code3")
    let cd4=document.querySelector("#code4")
    let cd5=document.querySelector("#code5")
    let cd6=document.querySelector('#code6')
  let otp_error=document.querySelector('#otp_error')
  let otp_sent_msg=document.querySelector("#otp_sent_message")

  let signup_btn=document.querySelector('#signup_btn')


  // use this simple function to automatically focus on the next input
  function focusNextInput(el, prevId, nextId) {
      if (el.value.length === 0) {
          document.getElementById(prevId).focus();
      } else {
          document.getElementById(nextId).focus();
      }
  }

  cd1.addEventListener('focus',()=>{
    otp_sent_msg.classList.add('hidden')
  })

  let checkOTP=async(inp,otp)=>{
    if(inp=='insertText'){
      let response=await fetch('check_otp.do?otp='+otp);
      let result=await response.text();
      return result;
    }
  }

  function myFunction(event) {
   let text = event.inputType;
   return text
  }

  cd6.addEventListener('input',(event)=>{
    let inp=myFunction(event)
    let otp=code1.value.concat(code2.value,code3.value,code4.value,code5.value,code6.value)
    checkOTP(inp,otp).then((data)=>{
      if(data=='true'){
      otp_error.classList.add('hidden')
      signup_btn.removeAttribute('disabled')
      }
      else{
        otp_error.classList.replace('hidden','text-red-500')
        signup_btn.setAttribute('disabled','disabled')
      }
    }).catch((error)=>{
      console.log("ERROR")
    })
  })
 
</script>
<!-- ################OTP FIELDS################# -->


</body>
</html>