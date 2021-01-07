function validatePass(){
	if(document.myform.password.value!=document.myform.cpassword.value){
	    alert("Password not matched!");
	    document.myform.pass.focus();
	    return false;
	}
	return true;
}
function validateNumber(event){
    var keychar=event.key;
    if (((".+-0123456789").indexOf(keychar)>-1))
       return true;
    else
       return false;
}
function validateName(event){
    var keychar=event.key;
    var pat1="abcdefghijklmnopqrstuvwxyz ";
    var pat2="ABCDEFGHIJKLMNOPQRSTUVWXYZ-";
    if((pat1).indexOf(keychar)>-1 || (pat2).indexOf(keychar)>-1)
        return true;
    else
        return false;
}