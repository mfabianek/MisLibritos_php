// levanto los campos del formulario de registro que voy a validar
const nombre = document.getElementById('nombre');
const apellido = document.getElementById('apellido');
const email = document.getElementById('email');
const password = document.getElementById('password');
const fechaNacimiento = document.getElementById('fechaNacimiento');
const pais = document.getElementById('pais');
const terminos = document.getElementById('terminos');
const formRegistro = document.getElementById('form-registro');
// levanto los campos de error
const errorNombre = document.getElementById('error-nombre');
const errorApellido = document.getElementById('error-apellido');
const errorEmail = document.getElementById('error-email');
const errorPassword = document.getElementById('error-password');
const errorFechaNacimiento = document.getElementById('error-fechaNac');
const errorPais = document.getElementById('error-pais');
const errorTerminos = document.getElementById('error-terminos');

document.addEventListener('DOMContentLoaded', function() {

        formRegistro.addEventListener('submit', async (e) => {
            e.preventDefault();
            console.log("entro a la funcion");
            errorNombre.innerText = "";
            errorApellido.innerText = "";
            errorEmail.innerText = "";
            errorPassword.innerText = "";
            errorFechaNacimiento.innerText = "";
            errorPais.innerText = "";
            errorTerminos.innerText = "";

            if (nombre.value === '' || nombre.value == null) {
                e.preventDefault();
                errorNombre.innerText = "El nombre es obligatorio";
            }
            if (apellido.value === '' || apellido.value == null) {
                e.preventDefault();
                errorApellido.innerText = "El apellido es obligatorio";
            }
            if (email.value === '' || email.value == null) {
                e.preventDefault();
                errorEmail.innerText = "El correo electrónico es obligatorio";
            }
            if (password.value === '' || password.value == null) {
                e.preventDefault();
                errorPassword.innerText = "La contraseña es obligatoria";
            }
            if (fechaNacimiento.value === '' || fechaNacimiento.value == null) {
                e.preventDefault();
                errorFechaNacimiento.innerText = "La fecha de nacimiento es obligatoria";
            }
            if (pais.value === '' || pais.value == null) {
                e.preventDefault();
                errorPais.innerText = "El país es obligatorio";
            }
            if (!terminos.checked) {
                e.preventDefault();
                errorTerminos.innerText = " Debes aceptar los términos y condiciones";
            }

            let fechaInput = fechaNacimiento.value;

            let fecha = new Date(fechaInput);

            let year = fecha.getFullYear();
            let month = ('0' + (fecha.getMonth() + 1)).slice(-2);
            let day = ('0' + (fecha.getDate() + 1)).slice(-2);

            let fechaFormateada = `${year}-${month}-${day}`;

            const options = {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    nombre: nombre.value,
                    apellido: apellido.value,
                    email: email.value,
                    contrasenia: password.value,
                    fechaNacimiento: fechaFormateada,
                    pais: pais.value
                })
            };

            const response = await fetch(' https://pab.com.ar/register.php', options);
            const data = await response.json();
            if (response.status === 201) {
                location.href = "iniciosesion.html";
            }

        });

});
