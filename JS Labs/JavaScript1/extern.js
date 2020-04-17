document.write("Text din exterior" + "<br>");
var textul = "Textul interesant";
document.write("<i>" + textul + "<\/i><br>");

function suma(a, b) {
    rezultatul = a + b
    return rezultatul
}
document.write(suma("O zi ", "buna") + "<br>")
document.write("Suma lui 1+2 este: " + suma(1, 2) + "<br>")

if (navigator.appName.indexOf("Internet Explorer") != -1) {
    document.write("Este Internet Explorer!")
}
else {
    document.write("Nu este Internet Explorer!")
}
for (i = 0; i <= 2; i++) {
    document.write("valoarea lui i: " + i + "<br>")
} 

