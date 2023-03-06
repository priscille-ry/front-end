<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER somme" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2" totalAffichages="1000" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme"/>
        <item algoitem="valeurs EST_DU_TYPE LISTE" code="1#LISTE#valeurs"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="valeurs[0] PREND_LA_VALEUR 2" code="5#valeurs#2#0"/>
        <item algoitem="valeurs[1] PREND_LA_VALEUR 12" code="5#valeurs#12#1"/>
        <item algoitem="valeurs[2] PREND_LA_VALEUR 46" code="5#valeurs#46#2"/>
        <item algoitem="valeurs[3] PREND_LA_VALEUR 6" code="5#valeurs#6#3"/>
        <item algoitem="valeurs[4] PREND_LA_VALEUR 52" code="5#valeurs#52#4"/>
        <item algoitem="POUR i ALLANT_DE 0 A 4" code="12#i#0#4">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="somme PREND_LA_VALEUR somme + valeurs[i]" code="5#somme#somme + valeurs[i]#pasliste"/>
            <item algoitem="AFFICHER somme" code="3#somme#1#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
