<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="PRODUIT PREND_LA_VALEUR 7*N" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="N EST_DU_TYPE NOMBRE" code="1#NOMBRE#N"/>
        <item algoitem="PRODUIT EST_DU_TYPE NOMBRE" code="1#NOMBRE#PRODUIT"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR N ALLANT_DE 1 A 10" code="12#N#1#10">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="PRODUIT PREND_LA_VALEUR 7*N" code="5#PRODUIT#7*N#pasliste"/>
            <item algoitem="AFFICHER PRODUIT" code="3#PRODUIT#1#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
