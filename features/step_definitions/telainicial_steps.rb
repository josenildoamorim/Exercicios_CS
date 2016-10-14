######### DADO #########
Dado(/^que estou na tela inicial$/) do
  @page_inicial = page(TelainicialScreen).await(timeout: 5)
end
######### QUANDO #########
Quando(/^toco em um banner$/) do
  @page_inicial.tocar_banner
end
######### ENTAO #########
Então(/^devo ver ao menos um banner$/) do
  fail 'Não há banners na tela' if
    @page_inicial.existem_banners? == false
end

Então(/^devo ver a tela de catálogo$/) do
  @page_catalogo = page(TeladecatalogoScreen).await(timeout: 5)
end
