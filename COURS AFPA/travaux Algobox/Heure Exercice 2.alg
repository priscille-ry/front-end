<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER secondes"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" epaisseurLigne="2" totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="heures EST_DU_TYPE NOMBRE" code="1#NOMBRE#heures"/>
        <item algoitem="minutes EST_DU_TYPE NOMBRE" code="1#NOMBRE#minutes"/>
        <item algoitem="secondes EST_DU_TYPE NOMBRE" code="1#NOMBRE#secondes"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez les heures :&quot;" code="4#Entrez les heures :#0"/>
        <item algoitem="LIRE heures" code="2#heures#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez les minutes : &quot;" code="4#Entrez les minutes : #0"/>
        <item algoitem="LIRE minutes" code="2#minutes#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrez les secondes :&quot;" code="4#Entrez les secondes :#0"/>
        <item algoitem="LIRE secondes" code="2#secondes#pasliste"/>
        <item algoitem="secondes PREND_LA_VALEUR secondes + 1" code="5#secondes#secondes + 1#pasliste"/>
        <item algoitem="SI (secondes == 60 ) ALORS" code="6#secondes == 60 ">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="secondes PREND_LA_VALEUR 0" code="5#secondes#0#pasliste"/>
            <item algoitem="minutes PREND_LA_VALEUR minutes + 1" code="5#minutes#minutes + 1#pasliste"/>
            <item algoitem="SI (minutes == 60) ALORS" code="6#minutes == 60">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="minutes PREND_LA_VALEUR 0" code="5#minutes#0#pasliste"/>
                <item algoitem="heures PREND_LA_VALEUR heures + 1" code="5#heures#heures + 1#pasliste"/>
                <item algoitem="SI (heures == 24) ALORS" code="6#heures == 24">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="heures PREND_LA_VALEUR 0" code="5#heures#0#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="" code=""/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;Dans une seconde il sera&quot;" code="4#Dans une seconde il sera#0"/>
        <item algoitem="AFFICHER heures" code="3#heures#0#pasliste"/>
        <item algoitem="AFFICHER &quot;:&quot;" code="4#:#0"/>
        <item algoitem="AFFICHER minutes" code="3#minutes#0#pasliste"/>
        <item algoitem="AFFICHER &quot;:&quot;" code="4#:#0"/>
        <item algoitem="AFFICHER secondes" code="3#secondes#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
