// levanto los campos del formulario de registro que voy a validar
const titulo = document.getElementById('titulo');
const autor = document.getElementById('autor');
const descripcion = document.getElementById('descripcion');
const precio = document.getElementById('precio');
const imagen = document.getElementById('imagen');
const formAdministracion = document.getElementById('form-administracion');
// levanto los campos de error
const errorTitulo = document.getElementById('error-titulo');
const errorAutor = document.getElementById('error-autor');
const errorDescripcion = document.getElementById('error-descripcion');
const errorPrecio = document.getElementById('error-precio');
const errorImagen = document.getElementById('error-imagen');

//si se termino de cargar el dom
document.addEventListener('DOMContentLoaded', function() {

        //en el evento submit valido que los campos esten llenos y no dejo que se envie automaticamente el formulario
        formAdministracion.addEventListener('submit', (e) => {
            e.preventDefault();
            console.log("entro a la funcion");
            // limpio los mensajes de error
            errorTitulo.innerText = "";
            errorAutor.innerText = "";
            errorDescripcion.innerText = "";
            errorPrecio.innerText = "";
            errorImagen.innerText = "";
 
            if (titulo.value === '' || titulo.value == null) {
                e.preventDefault();
                errorTitulo.innerText = "El título es obligatorio";
            }
            if (autor.value === '' || autor.value == null) {
                e.preventDefault();
                errorAutor.innerText = "El autor es obligatorio";
            }
            if (descripcion.value === '' || descripcion.value == null) {
                e.preventDefault();
                errorDescripcion.innerText = "La descripción es obligatoria";
            }
            if (precio.value === '' || precio.value == null) {
                e.preventDefault();
                errorPrecio.innerText = "El precio es obligatorio";
            }
            if (imagen.value === '' || imagen.value == null) {
                e.preventDefault();
                errorImagen.innerText = "La imagen es obligatoria";
            }
                       
        });

});
