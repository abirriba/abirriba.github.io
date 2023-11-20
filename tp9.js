function seconnecter() {
    var login = prompt("donner votre nom d'utilisateur");
    var password = prompt("entrer votre mot de passe");
    if (login == "admin" && password == "admin") {
        document.write("Bienvenue : " + login)
    }
    else {
        alert("Accès refusé");

    }
}
function seconnecter2() {
    location.href = 'tp9.html'

}

function affichagetab() {
    document.write('<table border=2px,red,solid width=30%>');
    for (var i = 0; i <= 5; i++) {
        document.write('<tr> <td>llll</td> <td>*</td> <td>*</td> </tr>');
    }
    document.write('</table>');
}

document.write("abirr")

function affichagetab2() {
    var count = prompt("entrez le nombre de lignes pour votre tableau")
    document.write('<table border=2px width=30%>');
    for (var i = 1; i <= count; i++) {
        document.write('<tr> <td>*</td> <td>*</td> <td>*</td> </tr>');
    }
    document.write('</table>');

}



function cdc() {
    var chaine = prompt("Donnez un mot");
    document.write(chaine.toUpperCase() + "<br>");
    document.write(chaine.toLocaleLowerCase() + "<br>");
    document.write("la chaine contient: " + chaine.length + " caracteres" + "<br>");
    document.write("La premiere lettre est " + chaine.substring(0, 1) + "<br>");
}

// "".charAt(0) hadi blast substring (0,1) ghat3ti l7rf lwl 
// blast 0 ndir(chaine.lenght-1) ghy3ti l7rf lkhr


function swich() {
    var color = prompt("entrez une couleur: ");
    switch (color) {
        case "rouge":
            document.body.style.background = "red";
            break;
        case "ROUGE":
            document.body.style.background = "red";
            break;

        case "bleu":
            document.body.style.background = "blue";
            break;

        case "BLEU":
            document.body.style.background = "blue";
            break;
    }
}
function connexion3() {
    var i = 0;
    do {
        var id = prompt("entrez votre nom d'utilisateur");
        var mdp = prompt("entrez votre mot de passe");
        if (id == "admin" && mdp == "admin") {
            document.write("Bienvenue" + id);
            break;
        }
        else
            alert("Accès refusé");
        i = i + 1;
    } while (i < 3)

    
    if (i == 3)
        alert("Delai dépassé");
}
function ajouterLigne() {
    location.href = "ligne.html"
}