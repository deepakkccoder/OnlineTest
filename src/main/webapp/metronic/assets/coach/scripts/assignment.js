function generateAccessCode(){
	
	if( $('#accessCode').val() ) {
		$("#errorMessage").empty();
		var msg ="<strong>Warning! </strong>Student has already been assigned the test "		
		$("#errorMessage").append(msg);
		$("#errorMessage").removeClass("hidden");
		$("#errorMessage").show();
		return false;
	}

	$.ajax({
		url:'../../../onlinetest/assignment/generateTest',
		type:"GET",
		success:function(data){
			
			$("#accessCode").val(data.accessCode);
			//$("#accessLink").val(data.accessLink);
			
		}
	});
	
}


function assignmentDone(userId){

	if( !$('#accessCode').val() ) {
		$("#errorMessage").empty();
		var msg ="<strong>Warning!</strong> access Code is empty, you can not save "		
		$("#errorMessage").append(msg);
		$("#errorMessage").removeClass("hidden");
		$("#errorMessage").show();
		return false;
	}
	
	if(!$("#sentEmail").val()){
		$("#errorMessage").empty();
		var msg ="<strong>Warning!</strong> You need to send test to student. Please send email "		
		$("#errorMessage").append(msg);
		$("#errorMessage").removeClass("hidden");
		$("#errorMessage").show();
		return false;
	}
	$.ajax({ 
	   type: "POST",
	   url: '../../../onlinetest/coach/saveAssignment',
	   data:{
		   userId:userId,
		   accessCode :$('#accessCode').val(),
		   accessLink:$('#accessLink').val(),
		   
	   },
	   success: function(data){        
		   
		   if(data === "success"){
			   window.location.href = "../../../onlinetest/coach/home";
			   
		   }
		   
	   }
	});

}


function assignmentCancel(){

	window.location.href = "../../../onlinetest/coach/home";

}

function sendEmail(userId){
	var msg;
	if( !$('#accessCode').val() ) {
		$("#errorMessage").empty();
		msg ="<strong>Warning!</strong> access Code is empty, you can not send email please generate code "
		$("#successMessage").hide();
		$("#errorMessage").append(msg);
//		$("#errorMessage").removeClass("hidden");
		$("#errorMessage").show();
		return false;
	}
	
	$("#errorMessage").hide();
	$("#successMessage").empty();
	msg ="<strong>Success!</strong> Email has been sent successfully! "
	$("#successMessage").append(msg);
	$("#successMessage").show();
	$("#sentEmail").val(true);
	assignmentDone(userId);
	
	$.ajax({
		url:'../../../onlinetest/coach/sendEmail',
		data:{
			 userId:userId,		
			 accessLink:$('#accessLink').val(),
			 accessCode:$('#accessCode').val(),
			 email:$('#email').html(), 
		},
		type:"GET",
		success:function(data){
			if(data=="success"){
				
			}
			
				 
		}
	});

}

function saveJobSearchStatusChange(userId){

$.ajax({ 
   type: "POST",
   url: '../../../onlinetest/coach/changeStudentJobSearchStatus',
   data:{
	   userId:userId,
	   jobSearchStatus :$('input[name=jobSearchStatus]:checked').val(),
	   
	   
   },
   success: function(data){        
	   
	   if(data === "success"){
		   window.location.href = "../../../onlinetest/coach/home";
		   
	   }
	   
   }
});

}