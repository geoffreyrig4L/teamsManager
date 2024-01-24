Projet XYZ
Bienvenue dans la documentation du projet XYZ. Ce projet vise à [... une brève description de l'objectif du projet].

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
