<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Le nombre le plus grand est : &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" arrondiAuto="vrai" totalAffichages="1000" epaisseurPoint="2" epaisseurLigne="2" totalBoucles="5000000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="N EST_DU_TYPE NOMBRE" code="1#NOMBRE#N"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="NB EST_DU_TYPE NOMBRE" code="1#NOMBRE#NB"/>
        <item algoitem="INB EST_DU_TYPE NOMBRE" code="1#NOMBRE#INB"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="NB PREND_LA_VALEUR 0" code="5#NB#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 1 A 5" code="12#i#1#5">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Entrez un nombre&quot;" code="4#Entrez un nombre#0"/>
            <item algoitem="LIRE N" code="2#N#pasliste"/>
            <item algoitem="SI (i==1 OU N>NB) ALORS" code="6#i==1 OU N>NB">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="NB PREND_LA_VALEUR N" code="5#NB#N#pasliste"/>
                <item algoitem="INB PREND_LA_VALEUR i" code="5#INB#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Le nombre le plus grand est : &quot;" code="4#Le nombre le plus grand est : #1"/>
        <item algoitem="AFFICHER NB" code="3#NB#1#pasliste"/>
        <item algoitem="AFFICHER &quot;la position du nombre le plus grand &quot;" code="4#la position du nombre le plus grand #1"/>
        <item algoitem="AFFICHER INB" code="3#INB#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
