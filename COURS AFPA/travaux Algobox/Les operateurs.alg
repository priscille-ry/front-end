<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER direBonjour" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" maxBoucle="500000" arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#saluer" algoitem="saluer EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#nom" algoitem="nom EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#direBonjour" algoitem="direBonjour EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#saluer#&quot;bonjour&quot;#pasliste" algoitem="saluer PREND_LA_VALEUR &quot;bonjour&quot;"/>
        <item code="5#nom#&quot;fifi&quot;#pasliste" algoitem="nom PREND_LA_VALEUR &quot;fifi&quot;"/>
        <item code="5#direBonjour#saluer+&quot; &quot;+nom#pasliste" algoitem="direBonjour PREND_LA_VALEUR saluer+&quot; &quot;+nom"/>
        <item code="3#direBonjour#0#pasliste" algoitem="AFFICHER direBonjour"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
