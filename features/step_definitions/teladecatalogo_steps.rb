######### DADO #########
Dado(/^que eu esteja na tela de Catalogo$/) do
  @page_inicial = page(TelainicialScreen).await(timeout: 5)
  @page_inicial.tocar_banner
  @page_catalogo = page(TeladecatalogoScreen).await(timeout: 5)
end
######### QUANDO #########
Quando(/^toco em um produto$/) do
  @page_catalogo.tocar_produto
end
######### ENTAO #########
Entao(/^devo ver ao menos um produto$/) do
  fail 'Não há produtos na tela' if
    @page_catalogo.existem_produtos? == false
end

Entao(/^devo ver os detalhes do produto escolhido$/) do
  @page_detalhes_produto = page(TeladetalhesprodutoScreen).await(timeout: 5)
end
