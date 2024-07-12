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
        const response = await fetch('http://localhost/MisLibritos_API/login.php', options);
        const data = await response.json();
        if (response.status === 200) {
            location.href = "../index.html";
        } else {
            alert("Error en el inicio de sesión: " + data.message);
        }
    } catch (error) {
        console.error('Error:', error);
        alert('Ocurrió un error durante el inicio de sesión');
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
