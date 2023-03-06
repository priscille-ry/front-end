<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Negatif&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" maxBoucle="500000" arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#ent1" algoitem="ent1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#ent2" algoitem="ent2 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez première valeur:#0" algoitem="AFFICHER &quot;Entrez première valeur:&quot;"/>
        <item code="2#ent1#pasliste" algoitem="LIRE ent1"/>
        <item code="4#Eentrz deuxième valeur:#0" algoitem="AFFICHER &quot;Eentrz deuxième valeur:&quot;"/>
        <item code="2#ent2#pasliste" algoitem="LIRE ent2"/>
        <item code="6#(ent1> 0 Et ent2 > 0) ou ( ent1 &lt; 0 Et ent2 &lt; 0 )" algoitem="SI ((ent1> 0 Et ent2 > 0) ou ( ent1 &lt; 0 Et ent2 &lt; 0 )) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Positif#0" algoitem="AFFICHER &quot;Positif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Negatif#0" algoitem="AFFICHER &quot;Negatif&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
