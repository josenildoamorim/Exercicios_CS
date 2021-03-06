class TelainicialScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'home_activity' }
  element(:banner)              { 'category_home_item_layout' }

  # Declare todas as acoes da tela
  def existem_banners?
    lista_banners = query("* id:'#{banner}'")
    return lista_banners.length >= 1
  end

  def tocar_banner
    lista_banners = query("* id:'#{banner}'")
    touch(lista_banners[1])
  end
end
