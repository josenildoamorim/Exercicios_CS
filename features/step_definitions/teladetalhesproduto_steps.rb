######### DADO #########
Dado(/^que estou na tela de detalhes do produto$/) do
  @page_inicial = page(TelainicialScreen).await(timeout: 5)
  @page_inicial.tocar_banner
  @page_catalogo = page(TeladecatalogoScreen).await(timeout: 5)
  @page_catalogo.tocar_produto
  @page_detalhes_produto = page(TeladetalhesprodutoScreen).await(timeout: 5)
end

Dado(/^arrasto para baixo$/) do
  @page_detalhes_produto.arrastar_para 'baixo'
end
######### QUANDO #########
Quando(/^escolho um tamanho$/) do
  @page_detalhes_produto.escolher_tamanho
end

Quando(/^escolho uma cor$/) do
  @page_detalhes_produto.escolher_cor
end

Quando(/^envio para o carrinho$/) do
  @page_detalhes_produto.enviar_para_carrinho
end

Quando(/^tento escolher uma cor$/) do
  @page_detalhes_produto.tentar_escolher_cor
end
######### ENTAO #########
Então(/^devo ver a tela do carrinho$/) do
  @page_inicial = page(TelacarrinhoScreen).await(timeout: 5)
end

Então(/^devo ver uma mensagem de erro$/) do
  @page_detalhes_produto.validar_mensagem_sem_tamanho_e_sem_cor
end

Então(/^devo ver uma mensagem de erro para cor$/) do
  @page_detalhes_produto.validar_mensagem_escolher_cor_sem_tamanho
end
