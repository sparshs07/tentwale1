<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.css" rel="stylesheet" />

</head>
<body>
    <!-- ##############HEADER################## -->
        <c:import url="header.jsp" />
    <!-- ##############HEADER################## -->

<!-- ##############################BODY############################ -->
  

<div class="flex flex-wrap justify-start">
<c:forEach var="tentwala_item" items="${tentwala_items}" varStatus="cn">
    <div class="mx-5 my-8 flex flex-col  bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 hover:shadow-2xl">
        <a href="#">
            <img class="rounded-t-lg" src="static/images/backdrop.jpg" alt="" />
        </a>
        <div class="p-5 max-w-64 max-h-72">
            <a href="#">
                <h5 class="mb-2 text-lg font-bold tracking-tight text-gray-900 dark:text-white">${tentwala_item.item.name}</h5>
            </a>
            <p class="mb-3 text-wrap text-sm font-normal text-gray-700 dark:text-gray-400">${tentwala_item.item.description}</p>
            <p class="mb-3 text-wrap text-sm font-normal text-gray-700 dark:text-gray-400"> <b>Quantity: </b>${tentwala_item.totalQuantity}</p>
            <p class="mb-3 text-wrap text-sm font-normal text-gray-700 dark:text-gray-400"><b>Unit Price(Rs.): </b>${tentwala_item.unitPrice}</p>
            
            <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                Edit Item
            </a>
            <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-red-700 rounded-lg hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                Delete Item
            </a>
        </div>
    </div>
</c:forEach>
</div>

<c:forEach var="your_item" items="${your_item_types}" varStatus="cn">
    
<h1 class="text-5xl font-extrabold dark:text-white">${your_item.name}</h1>
  
</c:forEach>



<!-- ##############################BODY############################ -->


    <!-- #################FOOTER#################### -->
    <div class="min-h-screen flex flex-col">
        <div class="fixed bottom-0 left-0 right-0">
            <c:import url="footer.jsp" />
        </div>
    </div>
    <!-- #################FOOTER#################### -->

    
<!-- --------------------------MENU BUTTON------------------------ -->
<script>
    let home=document.querySelector("#home")
    home.href="tentwala_home.do"
    
    let about=document.querySelector("#about")
    about.innerText="Add Items"
    about.href="tentwala_home_profile.do"
    
    let services=document.querySelector("#services")
    services.innerText="Your Items"
    services.href="your_items.do"
    </script>
<!-- --------------------------MENU BUTTON------------------------ -->

    <!-- ----------------HIDDING----------------------- -->
    <script>
        let want_bec_tentw=document.querySelector("#want_bec_tentw");
        want_bec_tentw.classList.add("hidden");
    </script>
    <!-- ----------------HIDDING----------------------- -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
</body>
</html>