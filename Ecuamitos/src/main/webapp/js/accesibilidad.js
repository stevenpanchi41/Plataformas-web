// Siempre inicia normal
document.addEventListener("DOMContentLoaded", function()
{
    document.body.style.fontSize = "100%";

    // Borra configuraciones antiguas
    localStorage.removeItem("tamanoFuente");
});

let tamanioActual = 100;

function aumentarTexto()
{
    tamanioActual += 10;

    document.body.style.fontSize =
    tamanioActual + "%";
}

function cambiarTema()
{
    document.body.classList.toggle("modo-oscuro");
}