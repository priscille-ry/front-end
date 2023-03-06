<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER prixeneuros" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#prixeneuros" algoitem="prixeneuros EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prixenfrancs" algoitem="prixenfrancs EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#prixenfrancs#pasliste" algoitem="LIRE prixenfrancs"/>
        <item code="5#prixeneuros#prixenfrancs/6.55957#pasliste" algoitem="prixeneuros PREND_LA_VALEUR prixenfrancs/6.55957"/>
        <item code="3#prixeneuros#0#pasliste" algoitem="AFFICHER prixeneuros"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
