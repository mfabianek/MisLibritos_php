const email = document.getElementById('email');
const password = document.getElementById('password');

const errorEmail = document.getElementById('error-email');
const errorPassword = document.getElementById('error-password');

const form = document.getElementById('form');

form.addEventListener('submit', async function (e) {
    e.preventDefault();

    errorEmail.innerText = "";
    errorPassword.innerText = "";

    let hasError = false;

    if (email.value === '' || email.value == null) {
        errorEmail.innerText = "El correo electrónico es obligatorio";
        hasError = true;
    }
    if (password.value === '' || password.value == null) {
        errorPassword.innerText = "La contraseña es obligatoria";
        hasError = true;
    }

    if (hasError) {
        return;
    }

    const options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            email: email.value,
            contrasenia: password.value,
        })
    };

    try {       
        const response = await fetch('https://pab.com.ar/login.php', options);
        const data = await response.json();
        if (response.status === 200) {
            Swal.fire({
                title: "Inicio de sesion",
                text: "Sesion iniciada correctamente",
                icon: "success"
            });
            location.href = "../index.html";
        } else {
            alertas = "Error en el inicio de sesión: " + data.message;
            Swal.fire({
                position: "top-end",
                icon: "error",
                title: alertas,
                showConfirmButton: false,
                timer: 3000
            });
        }
    } catch (error) {
        console.error('Error:', error);
        alertas = "Error en el inicio de sesión: " + error;
        Swal.fire({
            position: "top-end",
            icon: "error",
            title: alertas,
            showConfirmButton: false,
            timer: 3000
        });
    }
});

email.addEventListener('keyup', (e) => {
    if (e.keyCode === 13) {
        if (email.value === '' || email.value == null) {
            errorEmail.innerText = "El correo electrónico es obligatorio";
        } else {
            errorEmail.innerText = "";
        }
    }
});
password.addEventListener('keyup', (e) => {
    if (e.keyCode === 13) {
        if (password.value === '' || password.value == null) {
            errorPassword.innerText = "La contraseña es obligatoria";
        } else {
            errorPassword.innerText = "";
        }
    }
});

email.addEventListener('blur', () => {
    if (email.value === '' || email.value == null) {
        errorEmail.innerText = "El correo electrónico es obligatorio";
    } else {
        errorEmail.innerText = "";
    }
});
password.addEventListener('blur', () => {
    if (password.value === '' || password.value == null) {
        errorPassword.innerText = "La contraseña es obligatoria";
    } else {
        errorPassword.innerText = "";
    }
});
