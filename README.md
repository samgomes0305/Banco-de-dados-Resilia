# RESILIADATA - Sistema de Gerenciamento de Tecnologias e Colaboradores

## Descrição do Projeto

O RESILIADATA é um sistema de gerenciamento de informações sobre empresas parceiras, suas tecnologias utilizadas e colaboradores associados. Este projeto utiliza um banco de dados MySQL para armazenar e relacionar os dados essenciais.

## Estrutura do Banco de Dados

### Entidades Principais:

1. **Tecnologia:**
   - **idTecnologia (INT, PK):** Identificador único para cada tecnologia.
   - **nomeTecnologia (VARCHAR):** Nome da tecnologia.

2. **EmpresaParceira:**
   - **idEmpresaParceira (INT, PK):** Identificador único para cada empresa parceira.
   - **nome (VARCHAR):** Nome da empresa parceira.
   - **endereco (VARCHAR):** Endereço da empresa.
   - **telefone (VARCHAR):** Número de telefone da empresa.
   - **email (VARCHAR):** Endereço de e-mail da empresa.

3. **TecnologiaEmpresa:**
   - **idTecnologiaEmpresa (INT, PK):** Identificador único para cada relação entre tecnologia e empresa.
   - **idEmpresaParceira (INT, FK):** Chave estrangeira referenciando EmpresaParceira.
   - **idTecnologia (INT, FK):** Chave estrangeira referenciando Tecnologia.

4. **Colaborador:**
   - **idColaborador (INT, PK):** Identificador único para cada colaborador.
   - **nomeColaborador (VARCHAR):** Nome do colaborador.
   - **cargo (VARCHAR):** Cargo ocupado pelo colaborador.
   - **idEmpresaParceira (INT, FK):** Chave estrangeira referenciando EmpresaParceira.

### Relacionamentos:

- Uma `EmpresaParceira` pode ter zero ou mais `Colaboradores` (relação 1:N).
- Uma `Tecnologia` pode ser utilizada por zero ou mais `EmpresasParceiras` através da tabela `TecnologiaEmpresa` (relação M:N). Uma `EmpresaParceira` pode utilizar zero ou mais `Tecnologias`.

## Instruções para Execução

1. Clone o repositório para a sua máquina local.
2. Execute o script SQL no seu servidor MySQL para criar o banco de dados e suas tabelas.
3. Modifique o script SQL conforme necessário para atender aos requisitos específicos do seu sistema.
4. Utilize as consultas SQL para interagir com o banco de dados e gerenciar as informações.

## Exemplos de Consultas SQL

- Consulta para obter todas as tecnologias utilizadas por uma empresa específica:
  ```sql
  SELECT Tecnologia.nomeTecnologia
  FROM TecnologiaEmpresa
  JOIN Tecnologia ON TecnologiaEmpresa.idTecnologia = Tecnologia.idTecnologia
  WHERE TecnologiaEmpresa.idEmpresaParceira = {ID_EMPRESA};

## Contribuições e Autor

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests para melhorias no código ou na documentação.

**Autor:**
Samuel Galvão Gomes
