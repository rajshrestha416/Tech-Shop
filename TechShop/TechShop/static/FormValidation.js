const form = document.getElementById('form');
const firstname = document.getElementById("firstname");
const lastname = document.getElementById("lastname");
const username = document.getElementById("username");
const email = document.getElementById("email");
const password = document.getElementById("pwd");
const cpassword = document.getElementById("cpwd"); 

form.addEventListener('submit'||'click' , (e)=> {
    
    if(checkInput() == false)
    {
        e.preventDefault();
    }
});


function checkInput()
{
    let check = true;
    const firstnameValue = firstname.value.trim();
    console.log(firstnameValue);
    const lastnameValue = lastname.value.trim();
    const usernameValue = username.value.trim();
    const emailvalue = email.value.trim();
    const passwordValue = password.value.trim();
    const cpasswordValue = cpassword.value.trim();
    if(firstnameValue == ''){
        setErrorFor(firstname,'Please Fill the Firstname field.')
        return false;
    }
    else{

        setSucess(firstname);
        check = true;
    }

    if(lastnameValue == ''){
        setErrorFor(lastname,'Please Fill the Lastname field.')
        return false;
    }
    else{
        setSucess(lastname);
        check = true;
    }

    if(usernameValue == ''){
        setErrorFor(username, 'please fill the Username field')
    }
    else{
        setSucess(username);
        check = true;
    }

    if(emailvalue == ''){
        setErrorFor(email,'Please fill the Email field.')
        return false;
    }
    else if(!isEmail(emailvalue)){
        setErrorFor(email,'Please Enter Valid Email field.')
        return false;
    }
    else{
        setSucess(email);
        check = true;
    }

    if(passwordValue == '' ){
        setErrorFor(password,'Please Enter the password field.')
        return false;
    }
    else{

        setSucess(password);
        check = true;
    }

    if(cpasswordValue == '' ){
        setErrorFor(cpassword,'Please Enter the password field.')
        return false;
    }
    else if(passwordValue != cpasswordValue){
        setErrorFor(cpassword,"Password Didn't matched")
        return false;
    }
    else{
        setSucess(cpassword);
        check = true;
    }
    return check;
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