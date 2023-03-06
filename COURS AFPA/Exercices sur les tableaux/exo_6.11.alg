<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER sch" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2" totalAffichages="1000" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tab1 EST_DU_TYPE LISTE" code="1#LISTE#tab1"/>
        <item algoitem="tab2 EST_DU_TYPE LISTE" code="1#LISTE#tab2"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="sch EST_DU_TYPE NOMBRE" code="1#NOMBRE#sch"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR i ALLANT_DE 0 A 7" code="12#i#0#7">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="" code="103#commentaire"/>
            <item algoitem="tab1[i] PREND_LA_VALEUR ALGOBOX_ALEA_ENT(0,7)" code="5#tab1#ALGOBOX_ALEA_ENT(0,7)#i"/>
            <item algoitem="tab2[i] PREND_LA_VALEUR ALGOBOX_ALEA_ENT(0,7)" code="5#tab2#ALGOBOX_ALEA_ENT(0,7)#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A 7" code="12#i#0#7">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="POUR j ALLANT_DE 0 A 7" code="12#j#0#7">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="sch PREND_LA_VALEUR sch+(tab1[i]*tab2[j])" code="5#sch#sch+(tab1[i]*tab2[j])#pasliste"/>
                <item algoitem="AFFICHER sch" code="3#sch#1#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
