class Personnage {
    #nom;
    #vie;
    #attaque;
    #defense;
    #existe;
    constructor(_nom, _existe) {
        this.SetNom(_nom);
        this.SetVie(Personnage.nombreAleatoire(20, 100));
        this.Setattaque(Personnage.nombreAleatoire(20, 100));
        this.Setdefense(Personnage.nombreAleatoire(20, 100));


        if (this.getNom() == "") {
            console.log("constructeur out");
            this.Setexiste(false);
        }
        else {
            this.Setexiste(true);
        }
        console.log(this.getexiste());


    }


    SetNom(_nom) {
        this.#nom = _nom;
    }
    getNom() {
        return this.#nom;
    }

    SetVie(_vie) {
        this.#vie = _vie;
    }

    getVie() {
        return this.#vie;
    }


    Setattaque(_attaque) {
        this.#attaque = _attaque;
    }

    getattaque() {
        return this.#attaque;
    }

    Setdefense(_defense) {
        this.#defense = _defense;
    }

    getdefense() {
        return this.#defense;
    }
    Setexiste(_existe) {
        this.#existe = _existe;
    }

    getexiste() {
        return this.#existe;
    }

    static nombreAleatoire(min, max) {
        return Math.round(min + Math.random() * (max - min));
    }
    info() {

        return console.log(this.getNom(), this.getVie(), this.getattaque(), this.getdefense());
    }
    attaquer(defenseur) {
        console.log("Nouvelle attaque de " + this.getNom() + " sur " + defenseur.getNom());
        if (this.getattaque() > defenseur.getdefense()) {
            defenseur.SetVie(defenseur.getVie() - 10);

        }

        if (this.getattaque() < defenseur.getdefense()) {
            this.vie -= 5;
        }
        if (this.getVie() <= 0) {
            console.error("le personnage " + this.getNom() + " est dead");
        }

        if (defenseur.getVie() <= 0) {
            console.error("le personnage " + defenseur.getNom() + " est dead");
            defenseur.getexiste(false);
        }

        this.info();
        defenseur.info();
    }

}

// function random
function prenom_rand(min, max) {
    return Math.round(min + Math.random() * (max - min));
}
// Tableau des prénom
var tableau_prenom = ["Damien", "Prisci", "Elo", "Kaz", "Manu", "Jess", "Coco", "Moussmouss", "Axel", "Michou", "Matthieu", "Keke", "Alessandro", "Jojo", "Séverine", "Guigui"];
// On vient ici selectionner un prénom dans le tableau des prénoms

var valeur_prenom_rand = prenom_rand(0, (tableau_prenom.length - 1));
const nbrjoueur = 3;
var tabplayeur = [];

for (var i = 0; i <= nbrjoueur - 1; i++) {
    tabplayeur[i] = new Personnage(tableau_prenom[valeur_prenom_rand]);
    tabplayeur[i].info();
    var valeur_prenom_rand = prenom_rand(0, (tableau_prenom.length - 1));
}

//perso1.attaquer(perso2);
let randomAncienAtq = -1;
function run() {
    /*if (attanquant_rand == 0) {
        var rand_victime = prenom_rand(1, tabplayeur.length - 1);
        tabplayeur[0].attaquer(tabplayeur[rand_victime]);

    }
    if (attanquant_rand == tabplayeur.length - 1) {
        var rand_victime = prenom_rand(0, tabplayeur.length - 2);
        tabplayeur[attanquant_rand].attaquer(tabplayeur[rand_victime]);

    }
    if (attanquant_rand > 0 && attanquant_rand < (tabplayeur.length - 1)) {
        var rand_victime_lui = prenom_rand(1, 2);
        if (rand_victime_lui == 1) {
            var rand_victime_position_lui = prenom_rand(0, (attanquant_rand - 1));
        }
        else {
            var rand_victime_position_lui = prenom_rand((attanquant_rand + 1), (tabplayeur.length - 1));
        }

        tabplayeur[attanquant_rand].attaquer(tabplayeur[rand_victime_position_lui]);

    }




    if (tabplayeur[rand_victime].vie <= 0) {
        tabplayeur[rand_victime].existe = false;
        tabplayeur.splice(rand_victime, 1);
        console.log(tabplayeur.length);
    }

    if (tabplayeur[attanquant_rand].vie <= 0) {
        tabplayeur[attanquant_rand].existe = false;
        tabplayeur.splice(attanquant_rand, 1);
        console.log(tabplayeur.length);
    }*/

    while (tabplayeur.length > 1) {
        var attanquant_rand = prenom_rand(0, tabplayeur.length - 1);
        var def_rand = prenom_rand(0, tabplayeur.length - 1);

        if (attanquant_rand != randomAncienAtq) {
            if (attanquant_rand != def_rand) {
                tabplayeur[attanquant_rand].attaquer(tabplayeur[def_rand]);
                try {
                    //si l'attaquant est mort on le supprime du tableau
                    if (tabplayeur[attanquant_rand].getexiste() == false) {
                        tabplayeur.splice(attanquant_rand, 1);
                    }
                    //si le defenseur est mort on le supprime du tableau
                    if (tabplayeur[def_rand].getexiste() == false) {
                        tabplayeur.splice(def_rand, 1);
                    }
                    //on intercepte l'erreur si la donnée du tableau n'existe plus
                } catch (error) { }
                randomAncienAtq = attanquant_rand;
            }
        }
    }


    if (tabplayeur.length == 1) {
        console.log("match terminé !");
        console.log("le gagnant est " + tabplayeur[0].getNom());
    }

}

run();