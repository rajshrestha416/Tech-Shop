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

form.addEventListener('submit'||'click' , (e)=> {
    e.preventDefault();
    checkInput();
    console.log()
});

function checkInput()
{
    const firstnameValue = firstname.value.trim();
    const lastnameValue = lastname.value.trim();
    const emailvalue = email.value.trim();
    const passwordValue = password.value.trim();
    const cpasswordValue = cpassword.value.trim();
    if(firstnameValue == ''){
        firstname.addEventListener('blur' ,() => {   
        setErrorFor(firstname,'Please Fill the Firstname.')
        });
    }
    else{

        setSucess(firstname);
    }

    if(lastnameValue == ''){
        setErrorFor(lastname,'Please Fill the Lastname.')
    }
    else{
        setSucess(lastname);
    }

    if(emailvalue == ''){
        setErrorFor(email,'Please fill the Email.')
    }
    else if(!isEmail(emailvalue)){
        setErrorFor(email,'Please Enter Valid Email.')
    }
    else{
        setSucess(email);
    }

    if(passwordValue == '' ){
        setErrorFor(password,'Please Enter the password.')
    }
    else{

        setSucess(password);
    }

    if(cpasswordValue == '' ){
        setErrorFor(cpassword,'Please Enter the password.')
    }
    else if(passwordValue != cpasswordValue){
        setErrorFor(cpassword,"Password Didn't matched")
    }
    else{
        setSucess(cpassword);
    }
}

function setErrorFor(input, message){
    const formgroup = input.parentElement; //.form-group
    const small = formgroup.querySelector('small');
    small.innerText = message;
    small.style.color= 'red';
    formgroup.className = 'error';
    return false;
}
function setSucess(input){
    const formgroup = input.parentElement; //.form-group
    formgroup.className = 'success';
    return true;
}   
function isEmail(emailvalue)
{
    return /\S+@\S+\.\S+/.test(emailvalue)
}