#language: pt

Funcionalidade: Cadastro
    COMO um usuário não logado na plataforma Udemy
    QUERO realizar meu cadastro na plataforma
    PARA realizar compras de cursos

    Contexto: Estar na home
        Dado que esteja na home

    Cenário: Cadastro convencional
        Quando acessar a página de cadastro
        E preencher as informações corretamente
        Então o usuário deverá ser direcionado para a home novamente com perfil logado

    Cenário: Cadastro forçado
        Quando o usuário tentar efetuar uma compra na plataforma
        E for direcionado para a página de cadastro
        E preencher as informações corretamente
        Então o usuário deverá ser direcionado para as próximas etapas de compra, com perfil logado 