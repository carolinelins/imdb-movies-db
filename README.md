# IMDb Movies Database

## English

This project contains a Docker container that hosts a database with information about IMDb movies. The data is extracted from the IMDb website in TSV format.

### Contents

- Description
- Prerequisites
- Installation
- Usage
- Contributing
- License

### Description

`imdb-movies-db` is a Docker container that contains a database with a table of information about IMDb movies. The data is imported from TSV files provided by the IMDb website.

### Prerequisites

- Docker installed on your machine

### Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/your-username/imdb-movies-db.git
    cd imdb-movies-db
    ```

2. Build the Docker image:
    ```bash
    docker build -t imdb-movies-db .
    ```

### Usage

1. Start the container with port mapping (if port 5432 is in use, map to another port like 5416):
    ```bash
    docker run -d -p 5416:5432 --name imdb-movies-db-container imdb-movies-db
    ```

2. Connect to the database:
    - Use your preferred tool to connect to the database hosted in the container. If you mapped to port 5416, use that port in your connection settings.

### Contributing

Contributions are welcome! Feel free to open issues and pull requests.

### License

This project is licensed under the MIT License. See the LICENSE file for details.

---

## Français

Ce projet contient un conteneur Docker qui héberge une base de données avec des informations sur les films IMDb. Les données sont extraites du site IMDb au format TSV.

### Contenu

- Description
- Prérequis
- Installation
- Utilisation
- Contribution
- Licence

### Description

`imdb-movies-db` est un conteneur Docker qui contient une base de données avec une table d'informations sur les films IMDb. Les données sont importées à partir de fichiers TSV fournis par le site IMDb.

### Prérequis

- Docker installé sur votre machine

### Installation

1. Clonez ce dépôt :
    ```bash
    git clone https://github.com/votre-nom-utilisateur/imdb-movies-db.git
    cd imdb-movies-db
    ```

2. Construisez l'image Docker :
    ```bash
    docker build -t imdb-movies-db .
    ```

### Utilisation

1. Démarrez le conteneur avec le mappage de port (si le port 5432 est utilisé, mappez vers un autre port comme 5416) :
    ```bash
    docker run -d -p 5416:5432 --name imdb-movies-db-container imdb-movies-db
    ```

2. Connectez-vous à la base de données :
    - Utilisez votre outil préféré pour vous connecter à la base de données hébergée dans le conteneur. Si vous avez mappé vers le port 5416, utilisez ce port dans vos paramètres de connexion.

### Contribution

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir des issues et des pull requests.

### Licence

Ce projet est sous licence MIT. Voir le fichier LICENSE pour plus de détails.

---

## Português

Este projeto contém um container Docker que hospeda uma base de dados com informações sobre filmes do IMDb. Os dados são extraídos do próprio site do IMDb em formato TSV.

### Conteúdo

- Descrição
- Pré-requisitos
- Instalação
- Uso
- Contribuição
- Licença

### Descrição

O `imdb-movies-db` é um container Docker que contém uma base de dados com uma tabela de informações sobre filmes do IMDb. Os dados são importados de arquivos TSV fornecidos pelo próprio site do IMDb.

### Pré-requisitos

- Docker instalado na sua máquina

### Instalação

1. Clone este repositório:
    ```bash
    git clone https://github.com/seu-usuario/imdb-movies-db.git
    cd imdb-movies-db
    ```

2. Construa a imagem Docker:
    ```bash
    docker build -t imdb-movies-db .
    ```

### Uso

1. Inicie o container com mapeamento de porta (se a porta 5432 estiver em uso, mapeie para outra porta como 5416):
    ```bash
    docker run -d -p 5416:5432 --name imdb-movies-db-container imdb-movies-db
    ```

2. Conecte-se ao banco de dados:
    - Utilize a ferramenta de sua preferência para se conectar ao banco de dados hospedado no container. Se você mapeou para a porta 5416, use essa porta nas configurações de conexão.

### Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.

### Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais detalhes.
