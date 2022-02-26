# Clone Leboncoin

J'ai choisi de partir sur un MVP très basique, à savoir : un site permettant l'ajout, modification et suppression d'une annonce.
Et de mettre de côté la partie wishlist, messagerie.

## Mise en place

1- Dans un premier temps j'ai utilisé un outil permettant de construire un schéma de DB, ici j'ai utilisé un outil mis à disposition par Le Wagon.

2- Une fois le schéma et les features choisis je passe normalement par la case Figma, ici je suis passé directement au développement.

3- Pour le démarrage du projet et un gain de temps j'ai choisi de commencer avec une template comprenant bootstrap pour le CSS et la gem Devise pour la gestion des utilisateurs (Template trouvable ici : https://github.com/lewagon/rails-templates)

4- Ajout la gem Rspec dans l'optique de rédiger mes tests

5- Génération le model d'annonce et ajouté les relations avec les utilisateurs

6- Rédaction des tests

7- Ajout des validations aux models pour passer les tests

8- Génération du controller et du CRUD

9- Ajout des routes et des views

## Utilisation

- J'ai créer 2 utilisateurs =
  - email: olivier@gmail.com mdp: 123456
  - email: randja@gmail.com mdp: 123456
Olivier possède 6 annonces, Randja aucune

## Amélioration

- Avec plus de temps les features à ajouter auraient été :
  L'ajout d'image via Cloudinary par exemple
  Une page spécifique aux annonces émises par un utilisateurs dédiée à leur gestion
