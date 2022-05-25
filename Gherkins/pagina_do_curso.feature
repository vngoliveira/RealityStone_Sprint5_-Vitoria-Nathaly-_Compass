#language: pt

Funcionalidade: Página do Curso
    COMO um usuário logado na plataforma Udemy
    QUERO manusear as ações pré-compra
    PARA realizar minha necessidade de usuário

    Contexto: Estar na página de um curso
        Dado que esteja logado na plataforma 
        Quando selecionar um curso
        E acessar a página desse curso

    Cenário: Aplicar cupom à compra na página do curso
        Quando for inserido um cupom
        E validado pelo sistema a aplicabilidade dele na compra
        Então o valor do curso deverá receber o desconto referente ao cupom

    Cenário: Comprar curso agora
        Quando selecionar a compra imediata
        Então o usuário deverá ser encaminhado para a página de pagamento do curso

    Cenário: Presentear com um curso
        Quando selecionar a opção de Presentear
        E preencher as informações sobre o destinatário na página de presentear um curso
        Então o usuário deverá ser encaminhado para a página de pagamento do curso

    Cenário: Adicionar curso ao carrinho
        Quando adicionar o curso ao carrinho
        Então o produto deverá ser adicionado e visualizado no carrinho do usuário