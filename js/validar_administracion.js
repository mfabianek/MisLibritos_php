// levanto los campos del formulario de registro que voy a validar
const titulo = document.getElementById('titulo');
const autor = document.getElementById('autor');
const descripcion = document.getElementById('descripcion');
const precio = document.getElementById('precio');
const imagen = document.getElementById('imagen');
const formAdministracion = document.getElementById('form-administracion');

const errorTitulo = document.getElementById('titulo-error');
const errorAutor = document.getElementById('autor-error');
const errorDescripcion = document.getElementById('descripcion-error');
const errorPrecio = document.getElementById('precio-error');
const errorImagen = document.getElementById('imagen-error');


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

            let formularioValido=true;
 
            if (titulo.value === '' || titulo.value == null) {
                e.preventDefault();
                errorTitulo.innerText = "El título es obligatorio";
                formularioValido=false;
            }
            if (autor.value === '' || autor.value == null) {
                e.preventDefault();
                errorAutor.innerText = "El autor es obligatorio";
                formularioValido=false;
            }
            if (descripcion.value === '' || descripcion.value == null) {
                e.preventDefault();
                errorDescripcion.innerText = "La descripción es obligatoria";
                formularioValido=false;
            }
            if (precio.value === '' || precio.value == null) {
                e.preventDefault();
                errorPrecio.innerText = "El precio es obligatorio";
                formularioValido=false;
            }
            if (imagen.value === '' || imagen.value == null) {
                e.preventDefault();
                errorImagen.innerText = "La imagen es obligatoria";
                formularioValido=false;
            }

            //fetch con método POST para insertar registro

            if (formularioValido) {
              
              function parsePath(path) {
                // Encuentra la posición de la última barra invertida
                const lastBackslashIndex = path.lastIndexOf('\\');
                
                // Verifica que haya al menos una barra invertida
                if (lastBackslashIndex === -1) {
                    throw new Error('La ruta no contiene ninguna barra invertida.');
                }
            
                // Devuelve la subcadena que sigue a la última barra invertida
                return path.substring(lastBackslashIndex + 1);
            }
            
            const path = imagen.value;
            const result = parsePath(path);
                                          
              const apiUrl = `http://localhost/MisLibritos_API/libritos.php`;
                                                     
                const postData = {
                  Titulo: titulo.value,
                  Autor: autor.value,
                  Descripcion: descripcion.value,
                  //Imagen: imagen.value,
                  Imagen:result,
                  Precio: precio.value             
                };
              
                fetch(apiUrl, {
                  method: 'POST',
                  headers: {
                    'Content-Type': 'application/json' // Tipo de contenido JSON
                  },
                  body: JSON.stringify(postData) // Convertir el objeto a JSON
                })
                  .then((response) => response.json())
                  .then((data) => {
                    console.log("Librito insertado correctamente");
                    // Limpiar los campos del formulario
                    titulo.value = "";
                    autor.value = "";
                    descripcion.value = "";
                    imagen.value = "";
                    precio.value = "";
                    // Mostrar mensaje de éxito
                    alert("Librito insertado correctamente");
                    location.href="../pages/administracion.html";

                                        
                  })
                  .catch((error) => {
                    console.error("Error insertando librito:", error);                    
                  });
                }
                                    
        });

})
