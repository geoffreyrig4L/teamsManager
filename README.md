# :rocket: Projet TeamsManager

Bienvenue dans la documentation du projet TeamsManager. Ce projet vise à gérer des équipes de football, permettant aux utilisateurs de créer, modifier des équipes, descriptions des clubs, des joueurs, etc. Cependant, certaines fonctionnalités seront modérées par leurs rôles.

## Technologies utilisées

- :computer: [NodeJS](https://nodejs.org/en/)
- :art: [VueJS](https://vuejs.org/)
- :file_folder: [MySQL](https://www.mysql.com/fr/)
- :whale: [Docker](https://www.docker.com/)
- :lock: [Casdoor](https://casdoor.org/)

## Installation du projet

Il vous faudra installer le projet. Pour cela, un git clone du projet est nécessaire.

```bash
git clone https://github.com/geoffreyrig4L/teamsManager
```

## Installation de Docker

Pour installer Docker, suivez les instructions de la documentation officielle de Docker [:whale: Docker](https://docs.docker.com/get-docker/).

## Installation de NodeJS

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

## Installation de VueJS

déplacez-vous dans le dossier frontend avec la commande:

```bash
cd frontend/
```

Pour installer Vue.js et ces dépendances, utilisez la commande:

```bash
npm install
```

Enfin, pour lancer le projet frontend, utilisez la commande:

```bash
npm run dev
```

Le projet frontend est maintenant lancé sur le port 8080.

## Lancer le conteneur Docker de Casdoor et remplir la base de données

Pull l'image Docker de Casdoor:

```bash
docker pull casbin/casdoor-all-in-one
```

Lancez le conteneur Docker et attachez-le à un volume:

```bash
docker run -d -v volume_casdoor:/mnt -p 8000:8000 casbin/casdoor-all-in-one
```

Copiez le fichier dumpfile.sql dans le volume (backend/dumpfile.sql):

```bash
docker cp dumpfile.sql id_conteneur:/mnt
```

Accédez au fichier dumpfile dans le conteneur avec la commande:

```bash
docker exec -it id_conteneur bash
cd /mnt
```

Restaurez la base de données:

```bash
mysql -u root -p casdoor < dumpfile.sql
```
