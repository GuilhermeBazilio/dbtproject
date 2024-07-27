# Projeto DBT com AWS Redshift e S3

## Descrição do Projeto

Este projeto utiliza o DBT (Data Build Tool) para transformar dados e disponibilizá-los em um banco de dados Redshift na AWS. Também é utilizado um bucket S3 para utilizar os scripts de carga das tabelas. Por fim, o projeto também é conectado com o git, garantido processo de CI/CD. O objetivo é criar um pipelines de dados eficientes e escaláveis, utilizando as melhores práticas de engenharia de dados. Neste projeto, exploramos as transformações no DBT, bem como seus seeds, macros e testes.

## Pré-requisitos

- AWS Account
- Configuração do AWS CLI
- DBT instalado

## Configuração

### Configuração do AWS Redshift

1. Faça login na sua conta AWS e navegue até o serviço Redshift.
2. Siga as instruções para criar um novo cluster Redshift.
3. Anote as credenciais do cluster, pois você precisará delas para configurar o DBT.

### Configuração do AWS S3

1. Navegue até o serviço S3 na sua conta AWS.
2. Crie um novo bucket e anote o nome do bucket.

### Configuração do DBT

1. Clone este repositório para a sua máquina local.
2. Navegue até o diretório do projeto e instale as dependências com `pip install -r requirements.txt`.
3. Crie um novo arquivo `profiles.yml` no diretório `~/.dbt/` e adicione suas credenciais Redshift.


## IDE do DBT
Nesta imagem é possível visualizar o projeto na IDE cloud do DBT, note que a IDE já está conectada ao github na sessão de controle de versionamento:
![image](https://github.com/user-attachments/assets/a40381f6-79a9-4ec0-8255-ca9a5f950df5)

# Banco Redshift
Nesta imagem é possível visualizar o banco Redshift com os dados carregados:
![image](https://github.com/user-attachments/assets/d646d6db-fe04-4c9c-a635-f9e3b2a850e8)

# Bucket S3
Nesta imagem é possível visualizar os arquivos hospedados no bucket S3, provisionado para este projeto:
![image](https://github.com/user-attachments/assets/5a9bf9cc-243f-4281-bd2f-ecee11721393)

