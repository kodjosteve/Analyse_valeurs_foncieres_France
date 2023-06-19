# Analyse des valeurs foncieres en France
## Sommaire :
 **Partie 1 : Introduction**
 - <a href="#C1">1.1 Contexte</a>
 - <a href="#C1">1.2 Objectifs</a>
  
**Partie 2 : Résultats**
 - <a href="#C2">2.1 Base de données</a>
 - <a href="#C3">2.2 Dashboard</a>
 
**Partie 3 : Mise en production**
 - <a href="#C4">3.1 Choix du modèle final</a>
 - <a href="#C5">3.2 Tests de billets</a>


# <u> Partie 1 : Introduction</u>

## <a name="C1"><u>1.1 Contexte</u></a>
 Vous êtes data analyst chez Laplace Immo, un réseau national d’agences immobilières.
 Le directeur général est sensible depuis quelque temps à l’importance des données, et il pense que l’agence doit se démarquer de la concurrence en créant un modèle pour mieux prévoir le prix de vente des biens immobiliers. 
<br>Dans ce cadre, il vous a confié la modification de la base de données permettant de collecter les transactions immobilières et foncières en France. Vous utiliserez ensuite cette base pour analyser le marché et aider les différentes agences régionales à mieux accompagner leurs clients.
<br>Les requêtes SQL demandées par le directeur sont accessibles ici.
<br><br>Les données foncières et géographiques sont issues respectivement des sites [demandes de valeurs foncières](https://www.data.gouv.fr/fr/datasets/demandes-de-valeurs-foncieres/) et [référentiel géographique](https://www.data.gouv.fr/fr/datasets/referentiel-geographique-francais-communes-unites-urbaines-aires-urbaines-departements-academies-regions/) du gouvernement français.
<br> Les fichiers csv une fois téléchargés seront nettoyés et serviront de base pour concevoir la base de données et le Dashboard.

## <a name="C2"><u>1.2 Objectifs</u></a>
Les objectifs visés par ce projet sont les suivants : <br>
 - Concevoir une base de données
 - Effectuer des requêtes SQL pour répondre à une problématique métier
 - Concevoir un Dashboard sur Power BI

# <u> Partie 2 : Résultats</u>
Les fichiers étant très volumineux, ils sont tous accessibles via ce lien.

## <a name="C3"><u>2.1 Conception de la base de données</u></a>
La base de données à été réalisée sur Microsoft SQL Server 2019. Les requêtes SQL sont accessibles ici.<br>
La capture d'écran ci-dessous présente un aperçu de la base de données.

## <a name="C4"><u>2.2 Conception du Dashboard Base de données</u></a>
Le Dashboard a été réalisé sur Microsoft Power BI et est accessible ici.<br>
Les deux captures suivantes présentent un aperçu des deux pages réalisées dans Power BI : <br>
#### Vue Région-Département ![](https://github.com/kodjosteve/Analyse_valeurs_foncieres_France/blob/main/R%C3%A9sultats/PowerBI_Capture_Dashboard_Region_d%C3%A9partement.png)<br>
#### Vue Commune ![](https://github.com/kodjosteve/Analyse_valeurs_foncieres_France/blob/main/R%C3%A9sultats/PowerBI_Capture_Dashboard_Commune.png)<br>

