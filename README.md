# 🚀 Projet TeamsManager

Bienvenue dans la documentation du projet TeamsManager. Ce projet vise à gérer des équipes de football, permettant aux utilisateurs de créer, modifier des équipes, descriptions des clubs, des joueurs, etc. Cependant, certaines fonctionnalités seront modérées par leurs rôles.

## Technologies utilisées

- [NodeJS](https://nodejs.org/en/)
- [VueJS](https://vuejs.org/)
- [MySQL](https://www.mysql.com/fr/)
- [Docker](https://www.docker.com/)
- [Casdoor](https://casdoor.org/)

## Installation du projet

Il vous faudra installer le projet. Pour cela, un git clone du projet est nécessaire.

```bash
git clone https://github.com/geoffreyrig4L/teamsManager
```

### Installation de Docker

Pour installer Docker, suivez les instructions de la documentation officielle de Docker [Docker](https://docs.docker.com/get-docker/).

### Installation de NodeJS

Premièrement, vous devez installer Node.js sur votre machine. Vous pouvez le télécharger depuis le site officiel de Node.js. Après avoir téléchargé Node.js, vous pouvez vérifier son installation avec la commande:

```bash
node -v
```

Déplacez-vous ensuite dans le répertoire backend avec la commande:

```bash
cd backend/
```

Pour lancer le projet backend, installez les dépendances avec la commande:

```bash
npm install
```

Pour lancer le projet, utilisez la commande:

```bash
npm run dev
```

Le projet backend est maintenant lancé sur le port 8000.

### Installation de VueJS

Pour installer Vue.js, utilisez la commande:

```bash
npm install -g @vue/cli
```

Ensuite, déplacez-vous dans le dossier frontend avec la commande:

```bash
cd frontend/
```

Enfin, pour lancer le projet frontend, utilisez la commande:

```bash
npm run dev
```

Le projet frontend est maintenant lancé sur le port 8080.

##Lancer le conteneur docker de casdoor et remplir la base de donée

pull l'image docker de casdoor
`docker pull casbin/casdoor-all-in-one`
Lancer le conteneur dockeur et le rattacher a un volume
`docker run -d -v volume_casdoor:/mnt -p 8000:8000 casbin/casdoor-all-in-one`
copier le fichier dumpfile.sql dans le volume (/backend/dumpfile.sql)
`docker cp dumpfile.sql id_conteneur:/mnt`
Acceder au ficher dumpfile dans le conteneur avec la commande :
`docker exec -it id_conteneur bash
cd /mnt`
Restore la base de donnée
`mysql -u root -p casdoor < dumpfile.sql`
