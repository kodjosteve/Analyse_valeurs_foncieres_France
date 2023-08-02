# Analyse des valeurs foncieres en France
Le projet a pour but d'étudier l'ensemble des ventes immobilières (appartements et maisons) réalisées en France sur une période données.
## Sommaire
 **Partie 1 : Introduction**
 - 1.1 Contexte
 - 1.2 Objectifs
  
**Partie 2 : Résultats**
 - 2.1 Base de données
 - 2.2 Dashboard
 
# <u> Partie 1 : Introduction</u>

## <u>1.1 Contexte</u>
![](https://github.com/kodjosteve/Analyse_valeurs_foncieres_France/blob/main/Donn%C3%A9es%20d'entr%C3%A9e/Logo%20Laplace%20Immo.png)
 <br><br>Vous êtes data analyst chez Laplace Immo, un réseau national d’agences immobilières.
 Le directeur général est sensible depuis quelque temps à l’importance des données, et il pense que l’agence doit se démarquer de la concurrence en créant un modèle pour mieux prévoir le prix de vente des biens immobiliers. 
<br>Dans ce cadre, il vous a confié la modification de la base de données permettant de collecter les transactions immobilières et foncières en France. Vous utiliserez ensuite cette base pour analyser le marché et aider les différentes agences régionales à mieux accompagner leurs clients.
<br>Des requêtes spécifiques ont été demandées par le directeur. Elles sont accessibles [ici](https://github.com/kodjosteve/Analyse_valeurs_foncieres_France/blob/main/Donn%C3%A9es%20d'entr%C3%A9e/Listes%20des%20requ%C3%AAtes%20demand%C3%A9es%20par%20le%20directeur.png).
<br><br>Les données foncières et géographiques sont issues respectivement des sites [demandes de valeurs foncières](https://www.data.gouv.fr/fr/datasets/demandes-de-valeurs-foncieres/) et [référentiel géographique](https://www.data.gouv.fr/fr/datasets/referentiel-geographique-francais-communes-unites-urbaines-aires-urbaines-departements-academies-regions/) du gouvernement français.
<br>Les fichiers csv une fois téléchargés sont nettoyés et servent de base pour concevoir la base de données et le Dashboard.

## <u>1.2 Objectifs</u>
Les objectifs visés par ce projet sont les suivants : <br>
 - Concevoir une base de données
 - Effectuer des requêtes SQL pour répondre à une problématique métier
 - Concevoir un Dashboard sur Power BI

# <u> Partie 2 : Résultats</u>
Le Dashboard est accessible via ce [lien](https://app.powerbi.com/view?r=eyJrIjoiNzE5OTE0MjEtYWI5Zi00NmZkLThiYjgtYWRmN2U0MTlmMjgzIiwidCI6IjFhMTU4ZmM3LWQwNGMtNDA5Yy05MjhkLWI4NWExN2U4YjI3NyJ9&pageName=ReportSection).<br>
Les fichiers (Pyton et Pbix) de création du Dashboard étant très volumineux, ils sont tous accessibles via ce [lien](https://drive.google.com/drive/folders/1Cqe-5qjUciKeXfKNSBtV-fKD0J6ltE2g?usp=sharing).

## <u>2.1 Conception de la base de données</u>
La base de données à été réalisée sur Microsoft SQL Server 2019. Les requêtes SQL sont accessibles [ici](https://github.com/kodjosteve/Analyse_valeurs_foncieres_France/blob/main/R%C3%A9sultats/Requ%C3%AAtes%20SQL%20Data_Immo.sql).<br>
La capture d'écran ci-dessous présente un aperçu de la base de données.<br><br>
![](https://github.com/kodjosteve/Analyse_valeurs_foncieres_France/blob/main/R%C3%A9sultats/SQLServer_R%C3%A9sultats_requete11.png)

## <u>2.2 Conception du Dashboard</u>
Le Dashboard a été réalisé sur Microsoft Power BI et est accessible. Les deux captures suivantes présentent un aperçu des deux pages réalisées : <br>
#### Vue Région-Département <br>
![](https://github.com/kodjosteve/Analyse_valeurs_foncieres_France/blob/main/R%C3%A9sultats/PowerBI_Capture_Dashboard_Region_d%C3%A9partement.png)<br>
#### Vue Commune <br>
![](https://github.com/kodjosteve/Analyse_valeurs_foncieres_France/blob/main/R%C3%A9sultats/PowerBI_Capture_Dashboard_Commune.png)<br>

