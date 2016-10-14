# language: pt
Funcionalidade: Tela de detalhes do Produto
Posso escolher o tamanho e a cor do produto
Só posso incluir o produto no carrinho se escolher seu tamanho e cor,
caso contrário devo ver uma mensagem de erro.
Só posso selecionar uma cor se selecionar um tamanho previamente,
caso contrário devo ver uma mensagem de erro.

  Contexto:
    Dado que estou na tela de detalhes do produto
    E arrasto para baixo

  Cenário: Enviar para o carrinho com tamanho e cor escolhidos
    Quando escolho um tamanho
    E escolho uma cor
    E envio para o carrinho
    Então devo ver a tela do carrinho

  Cenário: Enviar para o carrinho sem escolher tamanho e cor
    Quando envio para o carrinho
    Então devo ver uma mensagem de erro

  Cenário: Escolher cor sem escolher o tamanho primeiro
    Quando tento escolher uma cor
    Então devo ver uma mensagem de erro para cor
