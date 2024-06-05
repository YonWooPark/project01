$(document).ready(function(){
	$("#btn_login").on("click", function() {
		if ($("#a_id").val().trim() == "") {
			alert("INPUT ADMIN ID");
			$("#a_id").focus();
		} else if ($("#a_pw").val().trim() == "") {
			alert("INPUT ADMIN PW");
			$("#a_pw").focus();
		} else {
			$("#login_form").submit();
		}
	});
});