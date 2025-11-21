# Étape 1 : choisir une image Python officielle
FROM python:3.13-slim

# Étape 2 : définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : copier les fichiers nécessaires
COPY requirements.txt .

# Étape 4 : installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Étape 5 : copier le reste du code (app.py, etc.)
COPY . .

# Étape 6 : exposer le port 5000
EXPOSE 5000

# Étape 7 : définir la commande pour lancer l'application
CMD ["python", "app.py"]
