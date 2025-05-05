# LoL Tournament Manager

Application de gestion de tournois League of Legends développée en Ruby on Rails.  
Elle permet la création d'équipes, l'ajout de joueurs, la gestion de matchs et l'affichage d'un classement dynamique basé sur les résultats.

## Fonctionnalités

- Création, modification et suppression d'équipes
- Ajout et gestion de joueurs par équipe (maximum 5 joueurs par équipe)
- Création et historique de matchs entre équipes
- Calcul automatique des victoires et classement des équipes
- Affichage des 5 derniers matchs sur la page d'accueil
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

> Si `bin/dev` n'est pas disponible, lancer séparément :
>
> ```bash
> rails server
> ```

5. Accéder à l'application :

Naviguer vers `http://localhost:3000`

## Structure principale

| Fonction       | Route         |
| -------------- | ------------- |
| Page d'accueil | `/`           |
| Équipes        | `/teams`      |
| Joueurs        | `/players`    |
| Matchs         | `/matches`    |
| Classement     | `/classement` |

## Modèles

L'application utilise trois modèles principaux :

### Team (Équipe)

- Représente une équipe de League of Legends
- Contient un nom unique
- Peut avoir jusqu'à 5 joueurs maximum
- Possède une méthode `victories_count` pour calculer le nombre de victoires
- Relations :
  - `has_many :players` (une équipe peut avoir plusieurs joueurs)

### Player (Joueur)

- Représente un joueur de League of Legends
- Attributs :
  - Prénom
  - Nom
  - Rôle (Top laner, Jungler, Mid laner, ADC, Support)
- Relations :
  - `belongs_to :team` (un joueur appartient à une équipe)

### Match

- Représente un match entre deux équipes
- Attributs :
  - Date
  - Score de l'équipe 1
  - Score de l'équipe 2
- Relations :
  - `belongs_to :team1` (première équipe)
  - `belongs_to :team2` (deuxième équipe)
- Validation : les deux équipes doivent avoir au moins un joueur

## Dépendances principales

### Backend

- Ruby on Rails 8.0.2
- PostgreSQL (base de données)
- Puma (serveur web)
- Propshaft (pipeline d'assets)
- Importmap-rails (gestion des imports JavaScript)
- Turbo-rails (accélérateur de pages SPA)
- Stimulus-rails (framework JavaScript modeste)
- Jbuilder (construction d'APIs JSON)
- Solid Cache (cache)
- Solid Queue (file d'attente)
- Solid Cable (WebSocket)

### Frontend

- Tailwind CSS 4.2 (framework CSS)
- Turbo / Hotwire (interactivité)
- Stimulus (JavaScript)

### Développement

- Debug (débogage)
- Brakeman (analyse de sécurité)
- Rubocop (linter Ruby)
- Web Console
- Foreman (gestion des processus)

### Test

- Capybara (tests système)
- Selenium WebDriver (tests navigateur)

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

Projet réalisé par Nolan Malherbe / Développeur(se) dans le cadre d'un exercice de gestion d'application web.
