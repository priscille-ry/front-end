<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="POSITION PREND_LA_VALEUR  i"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" maxBoucle="500000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#N" algoitem="N EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#PLUS_GD" algoitem="PLUS_GD EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#POSITION" algoitem="POSITION EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#i#1#pasliste" algoitem="i PREND_LA_VALEUR 1"/>
        <item code="4#Entrez le nombre#0" algoitem="AFFICHER &quot;Entrez le nombre&quot;"/>
        <item code="3#i#0#pasliste" algoitem="AFFICHER i"/>
        <item code="2#N#pasliste" algoitem="LIRE N"/>
        <item code="15#N!=0" algoitem="TANT_QUE (N!=0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#i#i+1#pasliste" algoitem="i PREND_LA_VALEUR i+1"/>
            <item code="4#Entrez le nombre#0" algoitem="AFFICHER &quot;Entrez le nombre&quot;"/>
            <item code="3#i#0#pasliste" algoitem="AFFICHER i"/>
            <item code="2#N#pasliste" algoitem="LIRE N"/>
            <item code="6#N>PLUS_GD" algoitem="SI (N>PLUS_GD) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#PLUS_GD# N#pasliste" algoitem="PLUS_GD PREND_LA_VALEUR  N"/>
                <item code="5#POSITION# i#pasliste" algoitem="POSITION PREND_LA_VALEUR  i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
