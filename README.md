# App-Saneamento

## Descrição do Projeto

O App-Saneamento é uma aplicação desktop desenvolvida em Java, utilizando a biblioteca Swing para a interface gráfica e JDBC para a conexão com um banco de dados MySQL. O objetivo principal do aplicativo é facilitar a interação entre usuários e agentes de saneamento, permitindo o registro de denúncias, doações e avaliações relacionadas a serviços de saneamento. O sistema também possui um módulo de autenticação para diferentes perfis de usuário (usuários comuns e agentes de saneamento).

## Estrutura do Projeto

O projeto segue uma estrutura organizada em pacotes, cada um com responsabilidades específicas:

*   **`src/appsaneamento`**: Contém a classe principal da aplicação (`AppSaneamento.java`), que serve como ponto de entrada.
*   **`src/view`**: Armazena as classes Java e os arquivos `.form` (gerados pelo NetBeans) que definem as interfaces gráficas do usuário (telas de login, cadastro, denúncias, doações, etc.).
*   **`src/DAO`**: Contém as classes de Data Access Object (DAO), responsáveis pela comunicação com o banco de dados. Cada classe DAO gerencia as operações CRUD (Create, Read, Update, Delete) para uma entidade específica (e.g., `LoginDAO`, `CadastroDAO`, `DenunciaDAO`).
*   **`src/Beans`**: Define as classes de modelo (POJOs - Plain Old Java Objects) que representam as entidades do sistema (e.g., `Login`, `Cadastro`, `Denuncia`). Essas classes encapsulam os dados e fornecem métodos para acessá-los e modificá-los.
*   **`src/conexao`**: Inclui a classe `Conexao.java`, que estabelece e gerencia a conexão com o banco de dados MySQL.
*   **`src/Image`**: Contém os recursos de imagem utilizados na interface gráfica da aplicação.

## Funcionalidades Principais

O App-Saneamento oferece as seguintes funcionalidades:

*   **Autenticação de Usuários**: Permite que usuários e agentes de saneamento façam login no sistema com credenciais distintas.
*   **Cadastro de Usuários e Agentes**: Funcionalidades para registro de novos usuários e agentes.
*   **Registro de Denúncias**: Usuários podem registrar denúncias relacionadas a problemas de saneamento.
*   **Registro de Doações**: Funcionalidade para registrar doações.
*   **Avaliações**: Usuários podem avaliar serviços ou situações relacionadas ao saneamento.
*   **Gerenciamento de Dados**: As classes DAO permitem a persistência e recuperação de dados no banco de dados.

## Requisitos do Sistema

Para executar o App-Saneamento, você precisará dos seguintes softwares instalados:

*   **Java Development Kit (JDK)**: Versão 8 ou superior.
*   **MySQL Server**: Banco de dados para armazenar as informações da aplicação.
*   **MySQL Connector/J**: Driver JDBC para conexão Java com MySQL. (Geralmente incluído no projeto ou pode ser baixado separadamente).
*   **NetBeans IDE (Opcional)**: O projeto foi desenvolvido no NetBeans, e o IDE facilita a abertura e edição dos arquivos `.form`.

## Configuração do Banco de Dados

1.  **Crie um banco de dados MySQL** com o nome `appsaneamento`.
2.  **Execute o script SQL** para criar as tabelas necessárias. (Assumindo que o script SQL para criação das tabelas não está incluído no projeto, será necessário criá-lo com base nas entidades do projeto, como `usuarios`, `agentes`, `denuncias`, `doacoes`, `avaliacoes`).
    *Exemplo de estrutura de tabela (apenas para referência, pode variar):*

    ```sql
    CREATE TABLE usuarios (
        id INT AUTO_INCREMENT PRIMARY KEY,
        username VARCHAR(50) NOT NULL UNIQUE,
        senha VARCHAR(255) NOT NULL
    );

    CREATE TABLE agentes (
        id INT AUTO_INCREMENT PRIMARY KEY,
        username VARCHAR(50) NOT NULL UNIQUE,
        senha VARCHAR(255) NOT NULL
    );

    -- Adicione outras tabelas conforme as entidades do projeto (denuncias, doacoes, avaliacoes)
    ```

3.  **Verifique a conexão com o banco de dados** na classe `src/conexao/Conexao.java`. Certifique-se de que as credenciais (`root`, `''`) e o nome do banco de dados (`appsaneamento`) estejam corretos ou atualize-os conforme sua configuração local.

    ```java
    public Connection getConexao(){
        try{
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/appsaneamento",
                    "root", // Seu usuário do MySQL
                    ""); // Sua senha do MySQL
            return conn;
        }catch(Exception e){
            System.out.println("Erro de conexão" + e.getMessage());
            return null;
        }
    }
    ```

## Como Compilar e Executar

### Usando NetBeans IDE

1.  Abra o NetBeans IDE.
2.  Vá em `File > Open Project...` e selecione a pasta `App-Saneamento-master`.
3.  O NetBeans deve reconhecer o projeto automaticamente.
4.  Para compilar, clique em `Run > Clean and Build Project`.
5.  Para executar, clique em `Run > Run Project` ou pressione `F6`.

### Via Linha de Comando (Avançado)

1.  Navegue até o diretório raiz do projeto (`App-Saneamento-master`).
2.  Compile os arquivos Java:
    ```bash
    javac -d build/classes -cp "path/to/mysql-connector-java.jar" src/**/*.java
    ```
    *Nota: Substitua `path/to/mysql-connector-java.jar` pelo caminho real do seu driver MySQL Connector/J.* Se você não tiver o driver, pode baixá-lo do site oficial do MySQL.

3.  Execute a aplicação:
    ```bash
    java -cp "build/classes:path/to/mysql-connector-java.jar" appsaneamento.AppSaneamento
    ```

## Contribuição

Se você deseja contribuir com este projeto, sinta-se à vontade para fazer um fork do repositório e enviar suas pull requests. Para grandes mudanças, por favor, abra uma issue primeiro para discutir o que você gostaria de mudar.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo `LICENSE` (se existir) para mais detalhes.

## Autor

Manus AI


