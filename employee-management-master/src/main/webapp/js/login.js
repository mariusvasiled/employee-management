$(document).ready(function(){
	// se apeleaza dupa incarcarea completa a paginii
	$("#username").focusout(validateUsername);
	$("#password").focusout(validatePassword);
	$(".loginArea form button").click(function(event){
		  var isValid = validateAll();
		  if(!isValid){
			   event.preventDefault(); 
		  }
	});
	
	$("#confirmPassword").focusout(validateConfirmPassword);
	
	
});

function validateUsername(){
	var username = $("#username");
	var text = $(username).val();
	if(text.length < 2) {
		$(username).addClass("error");
		return false;
	} else {
		$(username).removeClass("error");
		return true;
	}
}
function validatePassword(){
	var password = $("#password");
	var text = $(password).val();
	if(text.length < 2) {
		$(password).addClass("error");
		return false;
	} else {
		$(password).removeClass("error");
		return true;
	}
}
function validateAll(){
	return validateUsername() & validatePassword();
}

function validateConfirmPassword(){
	var password = $("#password");
	var passwordText = $(password).val();
	var confirmPassword = $("#confirmPassword");
	var confirmPasswordText = $(confirmPassword).val();
	if(confirmPasswordText !== passwordText){
		$(confirmPassword).addClass("error");
		return false;
	} else {
		$(confirmPassword).removeClass("error");
		return true;
	}
}