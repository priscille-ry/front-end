//nombre de joueur
let nbrjoueur = prompt("Saisissez le nombre de joueur : ");

while (nbrjoueur % 2 != 0) {
    console.log("merci de saisir un chiffre pair !");
    nbrjoueur = prompt("Saisissez le nombre de joueur : ");
}

class Personnage {
    // Création des variables pour les Set et get
    #nom;
    #vie;
    #attaque;
    #defense;
    #existe;
    #type;
    #nextType;
    //Création du constructor qui n'a que pour variable interne _nom
    constructor(_nom) {
        // Variable ciblé
        this.SetNom(_nom);
        this.SetVie(Personnage.nombreAleatoire(20, 100));
        this.SetAttaque(Personnage.nombreAleatoire(20, 100));
        this.SetDefense(Personnage.nombreAleatoire(20, 100));

        // on vérifie ici que le constructor à bien fonctionné, si oui le SetExiste passe à true
        if (this.getNom() == "") {
            console.log("constructeur out");
            this.SetExiste(false);
        }
        else {
            this.SetExiste(true);
        }

        this.SetType("");
        this.SetNextType("CRS");

    }
    // Création des Set et get pour chaque variable
    //Set pour changer et mettre à jour la valeur
    SetNom(_nom) {
        this.#nom = _nom;
    }
    // Get pour ciblé la valeur existante que l'on mettra à jour via le Set
    getNom() {
        return this.#nom;
    }

    SetVie(_vie) {
        this.#vie = _vie;
        if (this.#vie <= 0) {
            this.SetExiste(false);
            this.#vie = 0;
            console.log("%cle personnage " + this.getType() + " " + this.getNom() + " est dead", "color:red");
        }
        if (this.#vie > 100) {
            this.SetVie(100);
        }
    }

    getVie() {
        return this.#vie;
    }

    SetAttaque(_attaque) {
        this.#attaque = _attaque;
        if (this.#attaque > 100) {
            this.SetAttaque(100);
        }
        if (this.#attaque < 20) {
            this.SetAttaque(20);
        }
    }

    getAttaque() {
        return this.#attaque;
    }

    SetDefense(_defense) {
        this.#defense = _defense;
        if (this.#defense > 100) {
            this.SetDefense(100);
        }
        if (this.#defense < 20) {
            this.SetDefense(20);
        }
    }

    getDefense() {
        return this.#defense;
    }

    SetExiste(_existe) {
        this.#existe = _existe;
    }

    getExiste() {
        return this.#existe;
    }

    SetType(_type) {
        this.#type = _type;
    }

    getType() {
        return this.#type;
    }

    SetNextType(_nextType) {
        this.#nextType = _nextType;
    }

    getNextType() {
        return this.#nextType;
    }

    // function du nombre aléatoire en static
    static nombreAleatoire(min, max) {
        return Math.round(min + Math.random() * (max - min));
    }
    // info console pour afficher l'état du personnage dans une console
    info() {
        return console.log(this.getNom().toString() + " est un " + this.getType() + ", il a pour vie " + this.getVie() + " points , pour attaque " + this.getAttaque() + " points et pour défense  " + this.getDefense() + " points.");
    }
    // la function attaquer
    attaquer(defenseur, type) {
        // Si le def est un CRS
        if (type == "CRS") {
            let chance = Personnage.nombreAleatoire(1, 10);
            if(chance >= 7 && chance <= 9)
            {
              console.log("Caillassage !");
              defenseur.SetVie(defenseur.getVie() - 5);
              console.log("le défenseur " + defenseur.getType() + " subit des dégats");
            }
            if(chance == 10)
            {
              console.log("Mouvement de foule !");
              defenseur.SetVie(defenseur.getVie() - 15);
              console.log("le défenseur " + defenseur.getType() + " subit des dégats");
            }
        }
        // Si le def est un GJ
        else if (type == "GJ") {
              let chance = Personnage.nombreAleatoire(1, 10);
              if(chance >= 7 && chance <= 9)
              {
                console.log("Attaque fumigène !");
                defenseur.SetVie(defenseur.getVie() - 5);
                console.log("le défenseur " + defenseur.getType() + " subit des dégats");
              }
              if(chance == 10)
              {
                console.log("Attaque canon à eau !");
                defenseur.SetVie(defenseur.getVie() - 10);
                console.log("le défenseur " + defenseur.getType() + " subit des dégats");
              }
        }
        else {
            console.log("Nouvelle attaque " + this.getType() + " de " + this.getNom().toString() + " sur le " + defenseur.getType() + " " + defenseur.getNom().toString());
            // si l'attaque de l'attaquant est supérieur à la défense du défenseur, le défenseur subit 10 de dégat
            if (this.getAttaque() > defenseur.getDefense()) {
                defenseur.SetVie(defenseur.getVie() - 10);
                console.log("le défenseur " + defenseur.getType() + " subit des dégats");
            }
            // si l'attaque de l'attaquant est égale à la défense du défenseur, le défenseur subit 5 de dégat
            if (this.getAttaque() == defenseur.getDefense()) {
                defenseur.SetVie(defenseur.getVie() - 5);
                console.log("le défenseur " + defenseur.getType() + " subit des dégats");
            }
            // si l'attaque de l'attaquant est inférieur à la défense du défenseur, l'attaquant subit 5 de dégat
            if (this.getAttaque() < defenseur.getDefense()) {
                this.SetVie(this.getVie() - 5);
                console.log("l'attaquant " + this.getType() + " subit des dégats");
            }
        }
        // on envoie les infos des combattants (attaquant et défenseur)
        this.info(); // attaquant
        defenseur.info(); // défenseur
    }
}

class CRS extends Personnage {
    //Création du constructor qui n'a que pour variable interne _nom
    constructor(_nom, _vie, _attaque, _defense, _type) {
        super(_nom, _vie, _attaque, _defense, _type);
        this.SetAttaque(this.getAttaque() + 5);
        this.SetDefense(this.getDefense() + 5);
        this.SetVie(this.getVie() - 5);
        this.SetType("CRS");
    }
}

class GJ extends Personnage {
    //Création du constructor qui n'a que pour variable interne _nom
    constructor(_nom, _vie, _attaque, _defense, _type) {
        super(_nom, _vie, _attaque, _defense, _type);
        this.SetAttaque(this.getAttaque() - 5);
        this.SetDefense(this.getDefense() - 5);
        this.SetVie(this.getVie() + 5);
        this.SetType("GJ");
    }
}

class Match {
    #tailleequipe = null;
    #tabplayeur;
    #Winner = "";
    constructor(_tailleequipe, _Winner) {
        this.#tailleequipe = _tailleequipe;
        this.#tabplayeur = [];
        this.SetWinner(_Winner);
    }

    SetWinner(_Winner) {
        this.#Winner = _Winner;
    }

    getWinner() {
        return this.#Winner;
    }

    verifieNomPersonnage(nomSaisie) {
        var exist = false;
        for (var i = 0; i <= (this.#tabplayeur.length - 1); i++) {
            if (this.#tabplayeur.length > 0) {
                if (this.#tabplayeur[i].getNom() == nomSaisie) {
                    exist = true;
                }
            }
        }
        return exist;
    }

    win(perso) {
        this.SetWinner(perso.getNom());
        console.log("match terminé !");
        console.log("%cle gagnant est " + this.getWinner(perso.getNom()), "color:green");
        perso.info();
    }

    init() {
        //création du tableau vide des playeurs
        var nbrejoueurcree = 0;
        var nomSaisie = "";
        var perso;
        var nomSaisieControle;
        var count = 1;
        while (nbrejoueurcree < this.#tailleequipe) {
            nomSaisie = prompt("Saisissez un nom:");
            if (nomSaisie != "") {
                nomSaisieControle = this.verifieNomPersonnage(nomSaisie);
                if (!nomSaisieControle) {
                    if (count % 2 == 0) {
                        perso = new CRS(nomSaisie);
                    }
                    else {
                        perso = new GJ(nomSaisie);
                    }
                    perso.info();
                    this.#tabplayeur.push(perso);
                    nomSaisie = "";
                    nbrejoueurcree += 1;
                    count++;
                }
                else {
                    console.log("nom déjà pris !");
                }
            }
        }
    }

    run() {
        //On défini la variable randomAncienAtq, on a mis -1 pour être sur que la valeur de départ soit complètement différent de la variable random de l'attaquant_rand lors du premier tour
        let randomAncienAtq = -1;
        let attanquant_rand;
        let def_rand;
        let round = 1;
        while (this.#tabplayeur.length > 1) {
            // Valeur random pour l'attaquant et le défenseur
            attanquant_rand = Personnage.nombreAleatoire(0, (this.#tabplayeur.length - 1));
            def_rand = Personnage.nombreAleatoire(0, (this.#tabplayeur.length - 1));
            // Si l'attaquant est différent de l'ancient attaquant
            if (attanquant_rand != randomAncienAtq) {
                // Si l'attaquant random est différent du défenseur random
                if (attanquant_rand != def_rand) {
                    if (this.#tabplayeur[attanquant_rand].getType() != this.#tabplayeur[def_rand].getType()) {
                        //round
                        console.log("round : " + round)
                        //l'attaquant attaque le défenseur et fait appel à la function attaquer qui est dans notre constructor
                        this.#tabplayeur[attanquant_rand].attaquer(this.#tabplayeur[def_rand], this.#tabplayeur[def_rand].getType());
                        try {
                            //si l'attaquant est mort on le supprime du tableau via splice
                            if (this.#tabplayeur[attanquant_rand].getExiste() == false) {
                                this.#tabplayeur.splice(attanquant_rand, 1);
                            }
                            //si le defenseur est mort on le supprime du tableau via splice
                            if (this.#tabplayeur[def_rand].getExiste() == false) {
                                this.#tabplayeur.splice(def_rand, 1);
                            }
                            //on intercepte l'erreur si la donnée du tableau n'existe plus
                        } catch (error) { }
                        //On actualise la valeur de l'attaquant actuel pour pas qu'il re-attaque sur le prochain round
                        randomAncienAtq = attanquant_rand;
                        round++;
                    }
                }
            }
        }
        // Si il ne reste plus que une personne en liste dans le tableau, afficher le message comme quoi le match est terminé
        if (this.#tabplayeur.length == 1) {
            this.#Winner = this.#tabplayeur[0];
            this.win(this.#Winner);
        }
    }
}

var m = new Match(nbrjoueur);
m.init();
m.run();