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

    <!-- ----------------BODY-------------------- -->
<div class="max-w-7xl ml-32 mt-9 mb-9 ">
    
  
  <c:forEach var="tentwala_item_type" items="${tentwala_item_types}" varStatus="cn">
  <div id="accordion-collapse-${cn.count}" data-accordion="close" data-active="false">
    <h2 id="item${cn.count}">
      <button type="button" class="flex items-center justify-between w-full p-5 font-medium rtl:text-right text-gray-500 border border-b-0 border-gray-200 rounded-t-xl focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-800 dark:border-gray-700 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-800 gap-3" data-accordion-target="#accordion-collapse-body${cn.count}" aria-expanded="true" aria-controls="accordion-collapse-body${cn.count}">
        <!-- <span>${tentwala_item_type.name}</span> -->
        <h3 class="text-5xl font-extrabold dark:text-white">${tentwala_item_type.name}</h3>                
        <svg data-accordion-icon class="w-3 h-3 rotate-180 shrink-0" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5 5 1 1 5"/>
        </svg>
      </button>
    </h2>
    <div id="accordion-collapse-body${cn.count}" class="hidden" aria-labelledby="item${cn.count}">
      <div class="flex flex-wrap justify-start bg-blue-100">
          <c:forEach var="tentwala_content" items="${tentwala_contents}" varStatus="cm">
              <c:if test="${tentwala_item_type.itemTypeId==tentwala_content.item.itemType.itemTypeId}">
                  <div class="mx-5 my-8 flex flex-col bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 hover:shadow-2xl">
                      
                          <img class="rounded-t-lg h-52 w-64" src="show_tentwala_pic.do?picPath=${tentwala_content.tentwalaItemPic}&tentwalaEmail=${tentwala_email}&flag=true" alt="" />
                      
                      <div class="p-5 max-w-64 max-h-72">
                          
                              <h5 class="mb-2 text-lg font-bold tracking-tight text-gray-900 dark:text-white">${tentwala_content.item.name}</h5>
                          
                          <p class="mb-3 text-wrap text-sm font-normal text-gray-700 dark:text-gray-400">${tentwala_content.item.description}</p>
                          <p class="mb-3 text-wrap text-sm font-normal text-gray-700 dark:text-gray-400"> <b>Available Quantity: </b>${tentwala_content.totalQuantity}</p>
                          <p class="mb-3 text-wrap text-sm font-normal text-gray-700 dark:text-gray-400"><b>Unit Price(Rs.): </b>${tentwala_content.unitPrice}</p>
                          
                          <!-- <label for="bedrooms-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Choose quantity:</label> -->
                          <div class="relative flex items-center max-w-[15rem] mb-2">
                            <!-- ----------LEFT---------------- -->
                              <button type="button" id="decrement-button${cm.count}" data-input-counter-decrement="bedrooms-input${cm.count}" class="bg-gray-100 dark:bg-gray-700 dark:hover:bg-gray-600 dark:border-gray-600 hover:bg-gray-200 border border-gray-300 rounded-s-lg p-3 h-8 focus:ring-gray-100 dark:focus:ring-gray-700 focus:ring-2 focus:outline-none">
                                  <svg class="w-3 h-3 text-gray-900 dark:text-white" aria-hidden="true" xmlns="https://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 2">
                                      <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h16"/>
                                  </svg>
                              </button>
                            <!-- ----------LEFT---------------- -->

                            <!-- ----------CENTER---------------- -->
                            <input type="text" id="bedrooms-input${cm.count}" data-input-counter data-input-counter-min="0" data-input-counter-max="100" aria-describedby="helper-text-explanation" class="quantity border-x-0 border-gray-300 h-6 font-medium text-center text-gray-900 text-sm focus:ring-blue-500 focus:border-blue-500 block w-full pb-6 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="" value="0" required>
                            <div class="absolute bottom-1 start-1/2 -translate-x-1/2 rtl:translate-x-1/2 flex items-center text-xs text-gray-400 space-x-1 rtl:space-x-reverse">
                              <span>Your Quantity</span>
                            </div>
                            <!-- ----------CENTER---------------- -->

                            <!-- ----------RIGHT---------------- -->
                              <button type="button" id="increment-button${cm.count}" data-input-counter-increment="bedrooms-input${cm.count}" class="bg-gray-100 dark:bg-gray-700 dark:hover:bg-gray-600 dark:border-gray-600 hover:bg-gray-200 border border-gray-300 rounded-e-lg p-3 h-8 focus:ring-gray-100 dark:focus:ring-gray-700 focus:ring-2 focus:outline-none">
                                  <svg class="w-3 h-3 text-gray-900 dark:text-white" aria-hidden="true" xmlns="https://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                                      <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                                  </svg>
                              </button>
                            <!-- ----------RIGHT---------------- -->
                          </div>
                          <!-- <p id="helper-text-explanation" class="mt-2 text-sm text-gray-500 dark:text-gray-400">Please select the number of bedrooms.</p> -->
                      

                          
                          <button  value="${tentwala_content.tentwalaItemId}" id="add_to_cart" class="add_to_cart inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                              Add To Cart 
                          </button>
                          
                      </div>
                  </div>
              </c:if>
          </c:forEach>
      </div>
  </div>
  </div>
</c:forEach>
  

</div>
  
    <!-- ----------------BODY-------------------- -->

    <!-- #################FOOTER#################### -->
    <!-- <div class="min-h-screen flex flex-col">
        <div class="fixed bottom-0 left-0 right-0"> -->
            <c:import url="footer.jsp" />
        <!-- </div> -->
    <!-- </div> -->
    <!-- #################FOOTER#################### -->

    <script>
      let add_to_cart_btn=document.getElementsByClassName("add_to_cart");
      let invoice_id="${invoice_id}";
      let quantity=document.getElementsByClassName("quantity");

      let add_to_invoice_items=async(tentwala_item_id,quantity)=>{
        let response=await fetch('add_invoice_items.do?invoice_id='+invoice_id+'&tentwala_item_id='+tentwala_item_id+'&quantity='+quantity);
        let result=await response.text();
      }

      for(let i=0;i<add_to_cart_btn.length ;i++){
        add_to_cart_btn[i].addEventListener('click',()=>{
          add_to_invoice_items(add_to_cart_btn[i].value,quantity[i].value).then((data)=>{

          }).catch((error)=>{
            console.log(error);
          })

        })
      }
    </script>

    <script>
        let about=document.querySelector("#about")
        about.innerText="Find TentWale!"
        about.href="find_tentwale.do"

        let service=document.querySelector("#services")
        service.classList.add("hidden")
        
    </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
</body>
</html>