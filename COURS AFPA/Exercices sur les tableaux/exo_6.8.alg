<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;nombre de valeurs positives &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2" totalAffichages="1000" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tab EST_DU_TYPE LISTE" code="1#LISTE#tab"/>
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="valeur_negative EST_DU_TYPE NOMBRE" code="1#NOMBRE#valeur_negative"/>
        <item algoitem="valeur_positive EST_DU_TYPE NOMBRE" code="1#NOMBRE#valeur_positive"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;saisir valeur&quot;" code="4#saisir valeur#0"/>
        <item algoitem="LIRE nb" code="2#nb#pasliste"/>
        <item algoitem="valeur_positive PREND_LA_VALEUR 0" code="5#valeur_positive#0#pasliste"/>
        <item algoitem="valeur_negative PREND_LA_VALEUR 0" code="5#valeur_negative#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A nb-1" code="12#i#0#nb-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;entrez le nombre &quot;" code="4#entrez le nombre #0"/>
            <item algoitem="AFFICHERCALCUL i+1" code="20#i+1#0"/>
            <item algoitem="LIRE tab[i]" code="2#tab#i"/>
            <item algoitem="SI (tab[i]>0) ALORS" code="6#tab[i]>0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="valeur_positive PREND_LA_VALEUR valeur_positive +1" code="5#valeur_positive#valeur_positive +1#pasliste"/>
                <item algoitem="" code="103#commentaire"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="valeur_negative PREND_LA_VALEUR valeur_negative +1" code="5#valeur_negative#valeur_negative +1#pasliste"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;nombre de valeurs negatives &quot;" code="4#nombre de valeurs negatives #0"/>
        <item algoitem="AFFICHER valeur_negative" code="3#valeur_negative#1#pasliste"/>
        <item algoitem="AFFICHER &quot;nombre de valeurs positives &quot;" code="4#nombre de valeurs positives #0"/>
        <item algoitem="AFFICHER valeur_positive" code="3#valeur_positive#0#pasliste"/>
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
