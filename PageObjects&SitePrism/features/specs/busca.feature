#language: pt

Funcionalidade: Busca
    COMO um usuário logado na plataforma Udemy
    QUERO buscar por um curso
    PARA filtrar e facilitar minha compra

    Contexto: Estar na home
        Dado que esteja na home

    @Categoria_existente
    Cenário: Buscar por uma das Categorias existentes
        Quando selecionar uma das categoria existentes
        Então deverá retornar ao usuário os cursos dessa categoria
    
    @Esquema_busca
    Esquema do Cenário: Buscar por uma das Categorias existentes
        Quando selecionar uma categoria "<categoria>"
        Então deverá retornar ao usuário os cursos dessa categoria

        Exemplos:
        |         categoria           |
        | Desenvolvimento             |
        | Negócios                    |
        | Finanças e contabilidade    |
        | TI e software               |
        | Produtividade no escritório |
        | Desenvolvimento Pessoal     |
        | Desing                      |
        | Marketing                   |
        | Estilo de vida              |
        | Fotografia e vídeo          |
        | Saúde e fitness             |
        | Música                      |
        | Ensino e estudo acadêmico   |
    
    @Barra_pesquisa
    Cenário: Buscar por um curso pela barra de pesquisa
        Quando digitar o nome do curso ou palavra-chave "Python"
        E iniciar a buscar
        Então deverá retornar ao usuário os cursos de acordo com a busca