Projet XYZ
Bienvenue dans la documentation du projet XYZ. Ce projet vise à [... une brève description de l'objectif du projet].

# Lancer le conteneur Docker de casdoor et remplir la base de données

1. Pull l'image Docker de casdoor :
   `docker pull casbin/casdoor-all-in-one`
2. Lancer le conteneur docker et le rattacher à un volume :
   `docker run -d -v volume_casdoor:/mnt -p 8000:8000 casbin/casdoor-all-in-one`
3. Copier le fichier dumpfile.sql dans le volume (/backend/dumpfile.sql) :
   **Penser à modifier id_conteneur par l'id du conteneur qui vous venez de lancer**
   `docker cp dumpfile.sql id_conteneur:/mnt`
4. Acceder au ficher dumpfile dans le conteneur avec la commande :
   `docker exec -it id_conteneur bash`
   `cd /mnt`
5. Restaurer la base de données :
   `mysql -u root -p casdoor < dumpfile.sql`
