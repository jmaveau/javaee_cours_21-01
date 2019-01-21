# Exercice 4

## Constater et expliquer les valeurs affichées de compteur et compteurInterne. 

CompteurInterne est interne au Get donc est initialisé à chaque appel http, il reste donc à 0.

Compteur par contre est global donc n'est jamais réinitialisé jusqu'au reset du serveur Tomcat.