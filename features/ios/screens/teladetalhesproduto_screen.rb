class TeladetalhesprodutoScreen < IOSScreenBase
  # Identificador da tela
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'PRODUCT_SCREEN' }
  # element(:button)              { pending 'Insert button identificator' }

  # Declare todas as acoes da tela
  # action(:touch_button) do
  #   touch("* marked:'#{button}'")
  # end
end
