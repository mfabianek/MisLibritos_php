document.addEventListener("DOMContentLoaded", function () {
  const apiUrl = `https://pab.com.ar/libritos.php`;
  fetch(apiUrl)
    .then((response) => response.json())
    .then((data) => {
      for (let index = 0; index < data.length; index++) {
        let id = data[index].id;
        let titulo = data[index].Titulo;
        let autor = data[index].Autor;
        let precio = data[index].Precio;            
        let imagen = "../../assets/img/"+ data[index].Imagen;
        let listadoElement = document.getElementById("Listado");
        let nuevoLibro = document.createElement("tr");

        nuevoLibro.innerHTML = `
    <th scope="row">${id}</th>
    <td>${titulo}</td>
    <td>${autor}</td>    
    <td>${precio}</td>
    <td><img src=${imagen} class="img-fluid img-thumbnail" alt="El Principito" width="200px"></td>        
`;

        listadoElement.appendChild(nuevoLibro);
      }
    })
    .catch((error) => {
      console.error("Error trayendo información de libritos:", error);
    });
});
