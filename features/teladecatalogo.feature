# language: pt
Funcionalidade: Tela de Catalogo
O catálogo deve conter ao menos um produto
Se eu tocar em um produto, eu posso ver seus detalhes

  Contexto:
    Dado que eu esteja na tela de Catalogo
    
  Cenário: Ao menos um produto no catalogo
    Entao devo ver ao menos um produto

  Cenário: Ver detalhes de um produto
    Quando toco em um produto
    Entao devo ver os detalhes do produto escolhido
