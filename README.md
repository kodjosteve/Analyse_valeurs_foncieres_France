# Analyse des valeurs foncieres en France
Le projet a pour objectif d'analyser l'ensemble des valeurs foncières en France.
## Sommaire :
 **Partie 1 : Introduction**
 - <a href="#C1">1.1 Contexte</a>
 
**Partie 2 : Paramétrage de l'algorithme**
 - <a href="#C2">2.1 Import et nettoyage des données</a>
 - <a href="#C3">2.2 Tests de différents modèles</a>
 
**Partie 3 : Mise en production**
 - <a href="#C4">3.1 Choix du modèle final</a>
 - <a href="#C5">3.2 Tests de billets</a>


## <a name="C1"><u>1.1 Contexte</u></a>
L’Organisation nationale de lutte contre le faux-monnayage (ONCFM), est une organisation publique ayant pour objectif de mettre en place des méthodes d’identification des contrefaçons des billets en euros. Dans le cadre de cette lutte, elle souhaite mettre en place un algorithme qui soit capable de différencier automatiquement les vrais des faux billets. <br><br>
L'organisme met à disposition un fichier de 1500 billets étiquetés : 1000 'vrais' billets et 500 'faux' billets. Les billets sont caractérisés par des dimensions géométriques précises :
- length : la longueur du billet (en mm) ; 
- height_left : la hauteur du billet (mesurée sur le côté gauche, en mm) ; 
- height_right : la hauteur du billet (mesurée sur le côté droit, en mm) ; 
- margin_up : la marge entre le bord supérieur du billet et l'image de celui-ci (en mm) ; 
- margin_low : la marge entre le bord inférieur du billet et l'image de celui-ci (en mm) ; 
- diagonal : la diagonale du billet (en mm).

## <a name="C2"><u>2.1 Import et nettoyage des données</u></a>
