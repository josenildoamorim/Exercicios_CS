# language: pt
Funcionalidade: Tela Inicial
A tela inicial deve conter ao menos um banner
Se eu tocar em um banner, eu devo ver a tela de catálogo

  @reinstall
  Cenário: Ao menos um banner na tela Inicial
    Dado que estou na tela inicial
    Então devo ver ao menos um banner

  Cenário: Tocar em um banner e ver o catálogo
    Dado que estou na tela inicial
    Quando toco em um banner
    Então devo ver a tela de catálogo
