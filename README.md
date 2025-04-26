# LoL Tournament Manager

Application de gestion de tournois League of Legends développée en Ruby on Rails.  
Elle permet la création d’équipes, l’ajout de joueurs, la gestion de matchs et l’affichage d’un classement dynamique basé sur les résultats.

## Fonctionnalités

- Création, modification et suppression d’équipes
- Ajout et gestion de joueurs par équipe (maximum 5 joueurs par équipe)
- Création et historique de matchs entre équipes
- Calcul automatique des victoires et classement des équipes
- Affichage des 5 derniers matchs sur la page d’accueil
- Interface stylisée avec Tailwind CSS

## Installation

### Prérequis

- Ruby 3.x
- Rails 7.x
- PostgreSQL

### Étapes

1. Cloner le dépôt :

```bash
git clone <repository_url>
cd lol_tournament
```

2. Installer les dépendances :

```bash
bundle install
```

3. Configurer la base de données :

```bash
rails db:create db:migrate db:seed
```

4. Lancer le serveur :

```bash
bin/dev
```

> Si `bin/dev` n’est pas disponible, lancer séparément :
>
> ```bash
> rails server
> ```

5. Accéder à l’application :

Naviguer vers `http://localhost:3000`

## Structure principale

| Fonction       | Route         |
| -------------- | ------------- |
| Page d’accueil | `/`           |
| Équipes        | `/teams`      |
| Joueurs        | `/players`    |
| Matchs         | `/matches`    |
| Classement     | `/classement` |

## Technologies utilisées

- Ruby on Rails 7
- PostgreSQL
- Tailwind CSS
- Turbo / Hotwire
- Importmap

## Notes

- Les matchs enregistrés permettent de déterminer le classement (victoires uniquement).
- Le classement est recalculé dynamiquement à chaque chargement de page.

## Auteur

Projet réalisé par Nolan Malherbe / Développeur(se) dans le cadre d’un exercice de gestion d'application web.
