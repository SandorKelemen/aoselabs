// Exercitiu 2
function getValue(row, col) {
    return row*20+col
}

document.write("<br><br><table border = 1><caption>Tabel exercitiu 2</caption>")
for (i = 0; i < 20; i++) {
    document.write("<tr>")
    for(j = 1; j <= 20; j++){
        document.write("<td>" + getValue(i,j) + "</td>")
    }
    document.write("</tr>")
} 
document.write("</table>")