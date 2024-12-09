# Java Login Application - Docker Deployment

## Descrição do Projeto

Este projeto implementa uma aplicação Java de login usando uma arquitetura multi-container com Docker Compose, incluindo Nginx como proxy reverso, Tomcat como servidor de aplicação e MySQL como banco de dados.

## Arquitetura

- **Nginx**: Proxy reverso (porta 80)
- **Tomcat**: Servidor de aplicação Java (porta 8080)
- **MySQL**: Banco de dados (porta 3306)

## Pré-requisitos

- Docker
- Docker Compose
- Terraform (opcional, para deployment na AWS)

## Configuração Local

1. Clone o repositório
```bash
git clone https://github.com/BrendoTrindade/java-login-docker.git
cd java-login-docker
```

2. Configurar variáveis de ambiente
- Copie `terraform/terraform.tfvars.example` para `terraform/terraform.tfvars`
- Ajuste as configurações conforme necessário

3. Iniciar containers
```bash
docker-compose up -d
```

## Acessando a Aplicação

- **Aplicação**: http://localhost
- **Login**: Utilize as credenciais configuradas no `docker-compose.yml`

## Deployment na AWS

1. Configure suas credenciais AWS
2. Inicialize o Terraform
```bash
cd terraform
terraform init
terraform apply
```

## Tecnologias Utilizadas

- Java
- Spring Boot
- Docker
- Docker Compose
- Nginx
- MySQL
- Terraform
- AWS

## Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature
3. Commit suas alterações
4. Abra um Pull Request

## Licença

Este projeto está licenciado sob a Licença MIT.

## Autor

Brendo Trindade

## Repositório

Confira o código completo no GitHub: [Java Login App Docker Compose](https://github.com/BrendoTrindade/java-login-docker)
