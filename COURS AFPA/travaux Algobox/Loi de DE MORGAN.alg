<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (aPermis = 'O' Et nbAnneeEXP >=2) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" maxBoucle="500000" arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#aPermis" algoitem="aPermis EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#nbAnneeEXP" algoitem="nbAnneeEXP EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Possède le permis (O/N) :#0" algoitem="AFFICHER &quot;Possède le permis (O/N) :&quot;"/>
        <item code="2#aPermis#pasliste" algoitem="LIRE aPermis"/>
        <item code="4#Nombre d'années d'expérience :#0" algoitem="AFFICHER &quot;Nombre d'années d'expérience :&quot;"/>
        <item code="2#nbAnneeEXP#pasliste" algoitem="LIRE nbAnneeEXP"/>
        <item code="6#aPermis = 'O' Et nbAnneeEXP >=2" algoitem="SI (aPermis = 'O' Et nbAnneeEXP >=2) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Embauche autorisée !#0" algoitem="AFFICHER &quot;Embauche autorisée !&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Embauche impossible ! #0" algoitem="AFFICHER &quot;Embauche impossible ! &quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
