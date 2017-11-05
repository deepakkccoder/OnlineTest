<%@ include file="/WEB-INF/views/include.jsp"%>




<!--
<script type="text/javascript" src="/resources/ion-range-slider/js/vendor/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="/resources/ion-range-slider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>

-->


<!-- <script src="<c:url value="/metronic/ion-range-slider/js/vendor/jquery-1.12.3.min.js" />" type="text/javascript" ></script> -->
<script src="<c:url value="/metronic/ion-range-slider/js/ion-rangeSlider/ion.rangeSlider.min.js" />" type="text/javascript" ></script>


<!--  
<link rel="stylesheet" type="text/css" href="/resources/ion-range-slider/css/normalize.css">
<link rel="stylesheet" type="text/css" href="/resources/ion-range-slider/css/ion.rangeSlider.css">
<link rel="stylesheet" type="text/css" href="/resources/ion-range-slider/css/ion.rangeSlider.skinFlat.css">
-->
<link href="<c:url value="/metronic/ion-range-slider/css/normalize.css" />" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/metronic/ion-range-slider/css/ion.rangeSlider.css" />" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/metronic/ion-range-slider/css/ion.rangeSlider.skinFlat.css" />" rel="stylesheet" type="text/css"/>



<script language="javascript" >


var enableLinking = true;

$(document).ready(function () {
  
   // 1)
	$("#range_NC").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    from_fixed: true,
	    grid: true,
	    from: 0,
	    to: 59,
	    keyboard: true,
	    keyboard_step: 5,
	    onFinish:  function (data) {
			
			
			if(enableLinking){ 
	         // Save slider instance to var
				var nextSlider = $("#range_C_MINUS").data("ionRangeSlider");
	
				// Call sliders update method with any params
				nextSlider.update({
					 min: 0,
					 max: 100,
				    from: data.to+1,
				});
				
				if (data.to >= nextSlider.old_to) {
				
	
					nextSlider.update({
						 min: 0,
						 max: 100,
					    to: data.to+1,
					});
				}
			}

   	}
	    
	});
	
	// 2)
	$("#range_C_MINUS").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    grid: true,
	    from: 60,
	    to: 64,
	    keyboard: true,
	    keyboard_step: 1,
	    onFinish:  function (data) {
	    			if(enableLinking){ 
         var previewsSlider = $("#range_NC").data("ionRangeSlider");
			var nextSlider = $("#range_C").data("ionRangeSlider");

			previewsSlider.update({
				 min: 0,
				 max: 100,
				 to: data.from-1,
			});
			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			
				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
			}

   	},
   	onUpdate:  function (data) {
						if(enableLinking){ 
			var nextSlider = $("#range_C").data("ionRangeSlider");

			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			

				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
			}


   	}
	});
	
	
	// 3)
	$("#range_C").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    from: 65,
	    to: 69,
	     grid: true,
	    keyboard: true,
	    keyboard_step: 1,
	    
	    //Start
	    onFinish:  function (data) {
	    			if(enableLinking){ 
         var previewsSlider = $("#range_C_MINUS").data("ionRangeSlider");
			var nextSlider = $("#range_C_PLUS").data("ionRangeSlider");

			previewsSlider.update({
				 min: 0,
				 max: 100,
				 to: data.from-1,
			});
			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			
				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
			}

   	},
   	onUpdate:  function (data) {

						if(enableLinking){ 
			var nextSlider = $("#range_C_PLUS").data("ionRangeSlider");

			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			

				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
			}


   	}
   	//finish

	    
   	
	});
	
	$("#range_C_PLUS").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    from: 70,
	    to: 74,
	    grid: true,
	    keyboard: true,
	    keyboard_step: 1,
	    //Start
	    onFinish:  function (data) {
	    
	    			if(enableLinking){ 
         var previewsSlider = $("#range_C").data("ionRangeSlider");
			var nextSlider = $("#range_B_MINUS").data("ionRangeSlider");

			previewsSlider.update({
				 min: 0,
				 max: 100,
				 to: data.from-1,
			});
			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			
				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
			
			}

   	},
   	onUpdate:  function (data) {

						if(enableLinking){ 
			var nextSlider = $("#range_B_MINUS").data("ionRangeSlider");

			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			

				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}


   	}
   	}
   	//finish
	});
	
	$("#range_B_MINUS").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    from: 75,
	    to: 79,
	    grid: true,
	    keyboard: true,
	    keyboard_step: 10,
	    //Start
	    onFinish:  function (data) {
	    
	    			if(enableLinking){ 
         var previewsSlider = $("#range_C_PLUS").data("ionRangeSlider");
			var nextSlider = $("#range_B").data("ionRangeSlider");

			previewsSlider.update({
				 min: 0,
				 max: 100,
				 to: data.from-1,
			});
			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			
				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
			}

   	},
   	onUpdate:  function (data) {
   	
   				if(enableLinking){ 

			var nextSlider = $("#range_B").data("ionRangeSlider");

			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			

				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}


   	}
   	}
   	//finish
	});
	
	$("#range_B").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    from: 80,
	    to: 84,
	    grid: true,
	    keyboard: true,
	    keyboard_step: 1,
	    //Start
	    onFinish:  function (data) {
	    
	    			if(enableLinking){ 
         var previewsSlider = $("#range_B_MINUS").data("ionRangeSlider");
			var nextSlider = $("#range_B_PLUS").data("ionRangeSlider");

			previewsSlider.update({
				 min: 0,
				 max: 100,
				 to: data.from-1,
			});
			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			
				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
			}

   	},
   	onUpdate:  function (data) {
		  			if(enableLinking){ 
			var nextSlider = $("#range_B_PLUS").data("ionRangeSlider");

			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			

				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}


   	}
   	}
   	//finish
 	});
	
	$("#range_B_PLUS").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    from: 85,
	    to: 89,
	    grid: true,
	    keyboard: true,
	    keyboard_step: 1,
	   //Start
	    onFinish:  function (data) {
	     			if(enableLinking){ 
         var previewsSlider = $("#range_B").data("ionRangeSlider");
			var nextSlider = $("#range_A_MINUS").data("ionRangeSlider");

			previewsSlider.update({
				 min: 0,
				 max: 100,
				 to: data.from-1,
			});
			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			
				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
			}

   	},
   	onUpdate:  function (data) {

						if(enableLinking){ 
			var nextSlider = $("#range_A_MINUS").data("ionRangeSlider");

			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			

				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}

			}
   	}
   	//finish
   	
	});
	
	$("#range_A_MINUS").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    from: 90,
	    to: 94,
	    grid: true,
	    keyboard: true,
	    keyboard_step: 1,
	   //Start
	    onFinish:  function (data) {
	    
	    			if(enableLinking){ 
         var previewsSlider = $("#range_B_PLUS").data("ionRangeSlider");
			var nextSlider = $("#range_A").data("ionRangeSlider");

			previewsSlider.update({
				 min: 0,
				 max: 100,
				 to: data.from-1,
			});
			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			
				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
			}

   	},
   	onUpdate:  function (data) {
        			if(enableLinking){ 
			var nextSlider = $("#range_A").data("ionRangeSlider");

			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			

				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}


   	}
   	}
   	//finish
	});
	$("#range_A").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    from: 95,
	    to: 98,
	    grid: true,
	    keyboard: true,
	    keyboard_step: 1,
	    //Start
	    onFinish:  function (data) {
	    
	    			if(enableLinking){ 
         var previewsSlider = $("#range_A_MINUS").data("ionRangeSlider");
			var nextSlider = $("#range_A_PLUS").data("ionRangeSlider");

			previewsSlider.update({
				 min: 0,
				 max: 100,
				 to: data.from-1,
			});
			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			
				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}
		}
   	},
   	onUpdate:  function (data) {
   	  			if(enableLinking){ 

			var nextSlider = $("#range_A_PLUS").data("ionRangeSlider");

			nextSlider.update({
				 min: 0,
				 max: 100,
			    from: data.to+1,
			});
			
			if (data.to >= nextSlider.old_to) {
			

				nextSlider.update({
					 min: 0,
					 max: 100,
				    to: data.to+1,
				});
			}

			}
   	}
   	//finish
	});
	$("#range_A_PLUS").ionRangeSlider({
	    type: "double",
	    min: 0,
	    max: 100,
	    from: 98,
	    to: 100,
	    to_fixed : true,
	    grid: true,
	    keyboard: true,
	    keyboard_step: 1,
	    //Start
	    onFinish:  function (data) {
	    			if(enableLinking){ 
         var previewsSlider = $("#range_A").data("ionRangeSlider");


			previewsSlider.update({
				 min: 0,
				 max: 100,
				 to: data.from-1,
			});

			}

   	}
   	//finish
	});
});

</script>



<div class="content">


<div class="col-lg-1"><BR /> NC  </div>
<div class="col-lg-11">
	<input type="text" id="range_NC" name="NC" value="" />
</div>

<div class="col-lg-1"><BR /> C-  </div>
<div class="col-lg-11"><input type="text" id="range_C_MINUS" name="C-" value="" /></div>

<div class="col-lg-1"><BR /> C  </div>
<div class="col-lg-11"><input type="text" id="range_C" name="C" value="" /></div>

<div class="col-lg-1"><BR /> C+ </div>
<div class="col-lg-11"><input type="text" id="range_C_PLUS" name="C+" value="" /></div>

<div class="col-lg-1"><BR /> B- </div>
<div class="col-lg-11"><input type="text" id="range_B_MINUS" name="B-" value="" /></div>

<div class="col-lg-1"><BR /> B  </div>
<div class="col-lg-11"><input type="text" id="range_B" name="B" value="" /></div>

<div class="col-lg-1"><BR /> B+   </div>
<div class="col-lg-11"><input type="text" id="range_B_PLUS" name="B+" value="" /></div>

<div class="col-lg-1"><BR /> A-  </div>
<div class="col-lg-11"><input type="text" id="range_A_MINUS" name="A-" value="" /></div>

<div class="col-lg-1"><BR /> A  </div>
<div class="col-lg-11"><input type="text" id="range_A" name="A" value="" /></div>

<div class="col-lg-1"><BR /> A+  </div>
<div class="col-lg-11"><input type="text" id="range_A_PLUS" name="A+" value="" /></div>


</div>

<button onClick="save()" />Save</button>


<script type="text/javascript">
<!--
//-->
//Slider now writes it's result to value attribute and also to data-from and data-to attributes

function save(){
	

	
	var gradesList = {grades : [
		{	name : "NC",
			rangeFrom : $("#range_NC").val().split(";")[0],
			rangeTo : $("#range_NC").val().split(";")[1],
		},
		{	name : "C-",
			rangeFrom : $("#range_C_MINUS").val().split(";")[0],
			rangeTo : $("#range_C_MINUS").val().split(";")[1],
		},
		{	name : "C",
			rangeFrom : $("#range_C").val().split(";")[0],
			rangeTo : $("#range_C").val().split(";")[1],
		},
		{	name : "C+",
			rangeFrom : $("#range_C_PLUS").val().split(";")[0],
			rangeTo : $("#range_C_PLUS").val().split(";")[1],
		},
		{	name : "B-",
			rangeFrom : $("#range_B_MINUS").val().split(";")[0],
			rangeTo : $("#range_B_MINUS").val().split(";")[1],
		},
		{	name : "B",
			rangeFrom : $("#range_B").val().split(";")[0],
			rangeTo : $("#range_B").val().split(";")[1],
		},
		{	name : "B+",
			rangeFrom : $("#range_B_PLUS").val().split(";")[0],
			rangeTo : $("#range_B_PLUS").val().split(";")[1],
		},
		{	name : "A-",
			rangeFrom : $("#range_A_MINUS").val().split(";")[0],
			rangeTo : $("#range_A_MINUS").val().split(";")[1],
		},
		{	name : "A",
			rangeFrom : $("#range_A").val().split(";")[0],
			rangeTo : $("#range_A").val().split(";")[1],
		},
		{	name : "A+",
			rangeFrom : $("#range_A_PLUS").val().split(";")[0],
			rangeTo : $("#range_A_PLUS").val().split(";")[1],
		}
		
		]};

	
	 dataString = JSON.stringify(gradesList);
	 console.log(dataString);	 
	 
	 
	 $.ajax({
	        type: "POST",
	        url: "grading/save",
	        data: dataString,
	        contentType: "application/json; charset=utf-8",
	        dataType: "json",
	        success: function(data){
	        	alert(data);
	        },
	        failure: function(errMsg) {
	            alert(errMsg);
	        }
	  });
	 
}


function initialValues(){
	
	
    <c:forEach var="grade" items="${grades}">
        
    if("${grade.name}" == "NC")
    { 
       	var slider = $("#range_NC").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    
    else if("${grade.name}" == "A")
    { 
       	var slider = $("#range_A").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    
    else if("${grade.name}" == "A+")
    { 
       	var slider = $("#range_A_PLUS").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    
    else if("${grade.name}" == "A-")
    { 
       	var slider = $("#range_A_MINUS").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    
    else if("${grade.name}" == "B")
    { 
       	var slider = $("#range_B").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    
    else if("${grade.name}" == "B+")
    { 
       	var slider = $("#range_B_PLUS").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    
    else if("${grade.name}" == "B-")
    { 
       	var slider = $("#range_B_MINUS").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    
    else if("${grade.name}" == "C")
    { 
       	var slider = $("#range_C").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    
    else if("${grade.name}" == "C+")
    { 
       	var slider = $("#range_C_PLUS").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    
    else if("${grade.name}" == "C-")
    { 
       	var slider = $("#range_C_MINUS").data("ionRangeSlider");
    
    	slider.update({
			 min: 0,
			 max: 100,
		    to: ${grade.rangeTo},
		    from: ${grade.rangeFrom},
		    
		});
    }
    </c:forEach>
	
}


$( document ).ready(function() {
	initialValues();
});


</script>


