// username validation
var unInput = document.getElementById("unInput");
var unletter = document.getElementById("unletter");
var unlength = document.getElementById("unlength");
var unValid = false;

// lights up green/red if valid/invalid
function unValidation() {
  if(unInput.value.length >= 3) {
    unlength.classList.remove("invalid");
    unlength.classList.add("valid");
  } else {
    unlength.classList.remove("valid");
    unlength.classList.add("invalid");
  }
  if(unInput.value.match(/[A-Za-z]/)) {
    unletter.classList.remove("invalid");
    unletter.classList.add("valid");
  } else {
    unletter.classList.remove("valid");
    unletter.classList.add("invalid");
  }
  if(unInput.value.length >= 3 && unInput.value.match(/[A-Za-z]/)) {
    unValid = true;
  }
}

// email validation
var userEmail = document.getElementById("useremail");
var validEmail = document.getElementById("emailValid");
function emailValidation() {
  if(userEmail.value.match(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/)){
    validEmail.classList.remove("invalid");
    validEmail.classList.add("valid");
  } else{
    validEmail.classList.remove("valid");
    validEmail.classList.add("invalid");
  }
}

// password validation
var pwInput = document.getElementById("pwInput");
var pwletter = document.getElementById("pwletter");
var pwcapital = document.getElementById("pwcapital");
var pwnumber = document.getElementById("pwnumber");
var pwlength = document.getElementById("pwlength");
var pwspecial = document.getElementById("pwspecial");
var confirmpw = document.getElementById("confirmInput");
var pwmatch = document.getElementById("pwmatch");
var pwValid = false;
function pwValidation() {
  var lowerCaseLetters = /[a-z]/g;
  if(pwInput.value.match(lowerCaseLetters)) {
    pwletter.classList.remove("invalid");
    pwletter.classList.add("valid");
  } else {
    pwletter.classList.remove("valid");
    pwletter.classList.add("invalid");
  }
  var upperCaseLetters = /[A-Z]/g;
  if(pwInput.value.match(upperCaseLetters)) {
    pwcapital.classList.remove("invalid");
    pwcapital.classList.add("valid");
  } else {
    pwcapital.classList.remove("valid");
    pwcapital.classList.add("invalid");
  }
  var numbers = /[0-9]/g;
  if(pwInput.value.match(numbers)) {
    pwnumber.classList.remove("invalid");
    pwnumber.classList.add("valid");
  } else {
    pwnumber.classList.remove("valid");
    pwnumber.classList.add("invalid");
  }
  var special = /[!@#$%^&*]/g;
  if(pwInput.value.match(special)) {
    pwspecial.classList.remove("invalid");
    pwspecial.classList.add("valid");
  } else {
    pwspecial.classList.remove("valid");
    pwspecial.classList.add("invalid");
  }
  if(pwInput.value.length >= 8) {
    pwlength.classList.remove("invalid");
    pwlength.classList.add("valid");
  } else {
    pwlength.classList.remove("valid");
    pwlength.classList.add("invalid");
  }
  if(confirmpw.value == pwInput.value && confirmpw.value.length > 0) {
    pwmatch.classList.remove("invalid");
    pwmatch.classList.add("valid");
  } else {
    pwmatch.classList.remove("valid");
    pwmatch.classList.add("invalid");
  }
  if (pwInput.value.match(lowerCaseLetters) &&
      pwInput.value.match(upperCaseLetters) &&
      pwInput.value.match(numbers) &&
      pwInput.value.match(special) &&
      pwInput.value.length >= 8 &&
      confirmpw.value.match(pwInput.value) 
      ) {
        pwValid = true;
      }
}

// message if fields aren't written
function processInfo() {
  if(unInput.value == "" || pwInput.value == ""){
    alert("Please fill out all the fields");
  }
  if(unValid == true && pwValid == true){
    alert("Thanks for Registering!");
  }
}