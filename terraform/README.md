# Terraform para AWS - Java Login Application

Este diretório contém a configuração Terraform para provisionar a infraestrutura AWS necessária para a aplicação Java Login.

## Recursos Provisionados

- VPC com subnet pública
- Internet Gateway
- Security Group (portas 80, 8080, 3306, 22)
- Instância EC2 (t2.micro)
- Elastic IP
- Route 53 Zone e Record

## Pré-requisitos

1. Terraform instalado
2. AWS CLI configurado com suas credenciais
3. Par de chaves SSH na AWS
4. Domínio registrado (para Route 53)

## Como Usar

1. Copie o arquivo de exemplo de variáveis:
```bash
cp terraform.tfvars.example terraform.tfvars
```

2. Edite o arquivo `terraform.tfvars` com suas configurações:
```hcl
aws_region  = "us-east-1"
key_name    = "seu-key-pair-name"
domain_name = "seu-dominio.com"
```

3. Inicialize o Terraform:
```bash
terraform init
```

4. Verifique o plano de execução:
```bash
terraform plan
```

5. Aplique as mudanças:
```bash
terraform apply
```

## Após o Deploy

1. Copie os arquivos do projeto para a instância EC2:
```bash
scp -r ../docker-compose.yml ec2-user@<PUBLIC_IP>:/home/ec2-user/
scp -r ../nginx ec2-user@<PUBLIC_IP>:/home/ec2-user/
scp -r ../tomcat ec2-user@<PUBLIC_IP>:/home/ec2-user/
scp -r ../mysql ec2-user@<PUBLIC_IP>:/home/ec2-user/
```

2. Conecte-se à instância:
```bash
ssh ec2-user@<PUBLIC_IP>
```

3. Execute o Docker Compose:
```bash
cd /home/ec2-user
docker-compose up -d
```

## Destruindo a Infraestrutura

Para remover todos os recursos:
```bash
terraform destroy
```

## Outputs

- `public_ip`: IP público da instância EC2
- `instance_id`: ID da instância EC2
- `nameservers`: Nameservers do Route 53
- `app_url`: URL da aplicação

## Notas de Segurança

- O security group permite acesso SSH de qualquer IP (0.0.0.0/0). Em produção, restrinja para seus IPs confiáveis.
- O MySQL (porta 3306) está restrito à VPC.
- Considere usar AWS Secrets Manager para senhas em produção.
