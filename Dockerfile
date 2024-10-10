# Utiliser une image Python comme base
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copier tout le code de l'application dans le conteneur
COPY . .

# Exposer le port 8000 pour l'application Django
EXPOSE 8000

# Commande pour lancer le serveur Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
