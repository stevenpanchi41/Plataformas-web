function verificarRespuesta(id,respuesta,correcta)
{
    let resultado =
    document.getElementById(id);

    if(respuesta==correcta)
    {
        resultado.innerHTML=
        "<span style='color:green;font-weight:bold;'>✅ Correcto</span>";
    }
    else
    {
        resultado.innerHTML=
        "<span style='color:red;font-weight:bold;'>❌ Incorrecto</span>";
    }
}