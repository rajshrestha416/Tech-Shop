// function validate(){
//     var firstname = document.getElementById("form-firstname");
//     var lastname = document.getElementById("form-lastname");
//     var email = document.getElementById("form-email");
//     var password = document.getElementById("form-pwd");
//     var cpassword = document.getElementById("form-cpwd"); 

//     if(cpassword == password){
//         alert()
//     }
//     if(email != ""){
        
//     }
// }


var form = document.getElementById('form');
var firstname = document.getElementById("firstname");
var lastname = document.getElementById("lastname");
var email = document.getElementById("email");
var password = document.getElementById("pwd");
var cpassword = document.getElementById("cpwd"); 


form.addEventListener('submit',(e) => {
    e.preventDefault();
    checkInput();
});

function checkInput()
{
    alert('submit button clicked.')
    const firstnameValue = firstname.value.trim();
    const lastnameValue = lastname.value.trim();
    const emailvalue = email.value.trim();
    const passwordValue = password.value.trim();
    const cpasswordValue = cpassword.value.trim();
    alert(firstnameValue, lastnameValue);
    if(firstnameValue == ''){
        setErrorFor(firstname,'atleast 8-characters required')
    }
    else{

        setSucess(firstname);
    }

}

function setErrorFor(input, message){
    alert('error');
    const formgroup = input.parentElement; //.form-group
    const small = formgroup.querySelector('small');
    small.innerText = message;
    formgroup.className = 'form-group-error';
    
}