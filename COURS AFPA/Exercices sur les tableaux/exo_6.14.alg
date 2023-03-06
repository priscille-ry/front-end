<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER som" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8" maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#som" algoitem="som EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbsup" algoitem="nbsup EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez le nombre de notes à saisir#0" algoitem="AFFICHER &quot;Entrez le nombre de notes à saisir&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="12#i#0#nb-1" algoitem="POUR i ALLANT_DE 0 A nb-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Entrez le nombre n°#0" algoitem="AFFICHER &quot;Entrez le nombre n°&quot;"/>
            <item code="2#tab#i" algoitem="LIRE tab[i]"/>
            <item code="5#som#0#pasliste" algoitem="som PREND_LA_VALEUR 0"/>
            <item code="12#i#0#nb-1" algoitem="POUR i ALLANT_DE 0 A nb-1">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="5#som#som+tab[i]#pasliste" algoitem="som PREND_LA_VALEUR som+tab[i]"/>
                <item code="3#som#0#pasliste" algoitem="AFFICHER som"/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
