const passwordField = document.getElementById("password");
const togglePass = document.getElementById("boton_mostrar");
const toggleEye = document.getElementById("pass_toggle_eye")

togglePass.addEventListener("click", function (){
    if (passwordField.type === "password") {
    passwordField.type = "text";
    toggleEye.classList.remove("fa-eye-slash");
    toggleEye.classList.add("fa-eye");
    } else {
    passwordField.type = "password";
    toggleEye.classList.remove("fa-eye");
    toggleEye.classList.add("fa-eye-slash");
    }
})