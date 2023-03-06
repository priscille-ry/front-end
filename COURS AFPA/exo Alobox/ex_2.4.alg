<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; euros&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" maxBoucle="500000" totalAffichages="1000" epaisseurLigne="2" nbDecimales="8" totalBoucles="5000000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#prix_ht" algoitem="prix_ht EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#quantite" algoitem="quantite EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tva" algoitem="tva EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_ttc" algoitem="prix_ttc EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#prix_ht#pasliste" algoitem="LIRE prix_ht"/>
        <item code="2#quantite#pasliste" algoitem="LIRE quantite"/>
        <item code="2#tva#pasliste" algoitem="LIRE tva"/>
        <item code="5#prix_ttc#prix_ht*quantite*(1+tva/100)#pasliste" algoitem="prix_ttc PREND_LA_VALEUR prix_ht*quantite*(1+tva/100)"/>
        <item code="4#le prix ttc est de  #0" algoitem="AFFICHER &quot;le prix ttc est de  &quot;"/>
        <item code="3#prix_ttc#0#pasliste" algoitem="AFFICHER prix_ttc"/>
        <item code="4# euros#0" algoitem="AFFICHER &quot; euros&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
