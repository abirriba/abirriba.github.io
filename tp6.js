function calcul_moyenne() {
    let n1 = prompt("donner la première note:");
    let n2 = prompt("donner la deuxième  note:");
    let n3 = prompt("donner la troisième note:");

    let somme = Number(n1) + Number(n2) + Number(n3)
    let moyenne = (somme / 3).toFixed(2);
    let status = "";


    if (moyenne < 10) {
        status = "redoublant";
    }

    else if (moyenne < 14) {
        status = "admis passable";
    }

    else {
        status = "admis bien"
    }
    document.write("voici la somme: " + somme + "<hr> voici la moyenne:" + moyenne, "<hr> vous etes " + status);
}

function test_age() {
    let age = prompt('quelle est votre age ?'); 
    if (age < 3 || age > 100) {
        document.write('<img src="confused.gif" alt="Full Page GIF">');
    }

    else if (age < 18) {
        document.write("<h1 style='color: white'> vous etes mineur </h1>");
        document.body.bgColor = "red";
    }
    else {
        document.write("<h1 style='color: black'> vous etes majeur </h1>");
        document.body.bgColor = "green";
    }
}


// nouvelle exerciece//
function simple_affichage() {
    let name = prompt("donner votre prenom");
    let familyname = prompt("donner votre nom");
    document.write('<div style="margin:auto; width:300Px; border:6px solid blue; text-align: center;"> Bonjour ' + name + "  " + familyname + '</div>');
}

function test_couleur() {
    let c = prompt("donner une couleur");
    if (c == "rouge" || c == "ROUGE") {
        document.body.style.background = "red";
    }
    else if (c == "bleu" || c == "BLEU") {
        document.body.style.background = "bleu";
    }
    else {
        document.write("couleur nom comprise");
    }
}
