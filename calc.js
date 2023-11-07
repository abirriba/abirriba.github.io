function addition() {
    let a = document.getElementById("t1").value;
    let b = document.getElementById("t2").value;
    let c = Number(a) + Number(b);
    // t3.value = c;
    document.getElementById("t3").value = c;

}
function soustraction() {
    let a = document.getElementById("t1").value;
    let b = document.getElementById("t2").value;
    let c = Number(a) - Number(b);
    t3.value = c;

}
function multiplication() {
    let a = document.getElementById("t1").value;
    let b = document.getElementById("t2").value;
    let c = Number(a) * Number(b);
    t3.value = c;

}
function division() {
    let a = document.getElementById("t1").value;
    let b = document.getElementById("t2").value;
    let c = Number(a) / Number(b);
    t3.value = c;
}


function permute() {
    let a = document.getElementById("t1").value;
    let b = document.getElementById("t2").value;

    t1.value = b;
    t2.value = a;
}

function parite() {
    let a = document.getElementById("t1").value;
    let b = document.getElementById("t2").value;
    let t4 = document.getElementById("t4");
    let c = Number(a) + Number(b);
    let d = Number(c) % 2;

    if (d == 1)
     document.getElementById("t4").value = "Nombre IMPAIR";
        //  t4.value = "Nombre IMPAIR";
    else {
        t4.value = "NOMBRE PAIR";
    }

}