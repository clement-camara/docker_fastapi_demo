FROM python:3.9

#-------------------------------------------------------------

WORKDIR /app

### définir le répertoire de travail qui sera
### utilisé pour le lancement des commandes CMD

#--------------------------------------------------------------

COPY requirements.txt .
RUN pip install -r requirements.txt

### installer les dépendances

#--------------------------------------------------------------

### copier le projet depuis notre machine locale vers le conteneur Docker

COPY . .

#--------------------------------------------------------------

### on lance le serveur avec l'host et le port

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]


