/*var nombre = prompt ("entrez un nombre");
console.log(nombre);
if(nombre%2==0)
{
    alert("pair");
}
else{
    alert("impair");
}*/




/*var annee = prompt("entrez annee");
console.log(annee);
let YearNow = new Date();
    let YearNowOk = YearNow.getFullYear();
    console.log(YearNow);
    console.log(YearNowOk);
var age = YearNowOk-annee;
console.log(age);
if (age>=18)
{
    alert("majeur");
}
else{
    alert("mineur");
}*/




/*let nombre1 = prompt("veuillez saisir un nombre");
console.log(nombre1);
let nombre2 = prompt("veuillez saisir un nombre");
console.log(nombre2);
var operateur = prompt("veuillez saisir un opérateur");
console.log(operateur);
if (isNaN(nombre1)==true || isNaN(nombre2)==true)
{
    alert("le nombre1 n'est pas correct");
}
function operation(nombre1,nombre2,operateur)
{
    if (operateur=="+")
    {
        return parseInt(nombre1) + parseInt(nombre2);
    }
    else if (operateur=="-")
    {
        return nombre1-nombre2;
    }
    else if (operateur=="/")
    {
        return nombre1/nombre2;
    }
    else if (operateur=="*")
    {
        return nombre1*nombre2;
    }
}

if (nombre1==0 && operateur=="/" || nombre2==0 && operateur=="/")
{
    alert("le nombre 0 n'est pas divisible")
}
else{
    console.log(operation(nombre1,nombre2,operateur));
}*/




/*var pu = prompt("prix unitaire");
var qte = prompt("quantite");
var port = 0;
var rem = 0;
var somme = pu * qte;
console.log(somme);
if (somme >= 500) {
    port = 0;
}
else {
    port = (somme * 2 / 100);
    if (port <= 6) {
        port = 6;
    }
}
console.log(port);


if (somme >= 100 && somme <= 200) {
    rem = (somme * 5 / 100);
}
else {
    rem = (somme * 10 / 100);
}
console.log(rem);
console.log(somme + port - rem);*/



/*var celib = confirm("etes vous celibataire");
var enfants = 10;
var participation = 0;
var participationenfants = 0;

if (celib == true)
{
    participation = 20;
}
else{
    participation = 25;
}
console.log(participation);
 var enfants = confirm("avez-vous des enfants");
 if (enfants == true)
 {
 var nbenfants = prompt("combien d'enfants avez vous");
 if (nbenfants >0)
 {
    participationenfants = nbenfants * 10;
 }
 else{
    participationenfants = 0;
 }
}
 console.log(participationenfants);
 participation += participationenfants; // autre façon d'ecrire participation = participation + participationenfants;
if (participation > 50)
{
participation = 50;
}
console.log(participation);
var salaire = prompt("quel est le montant de votre salaire tous les mois?");
if (salaire <= 1200)
{
    participation += 10;
    if(participation >50)
    {
        participation = 50;
    }
}
console.log(participation);*/