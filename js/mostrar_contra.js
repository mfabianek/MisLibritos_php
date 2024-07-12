const passwordField = document.getElementById("password");
const togglePass = document.getElementById("boton_mostrar");

togglePass.addEventListener("click", function (){
    if (passwordField.type === "password") {
    passwordField.type = "text";
    } else {
    passwordField.type = "password";
    }
})