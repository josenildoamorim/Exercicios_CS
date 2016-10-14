class TeladecatalogoScreen < IOSScreenBase
  # The screen identificator
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare all the elements of this screen
  element(:layout_name)         { 'CATALOG_SCREEN' }
  element(:product)             { 'PRODUCT_CELL' }

  # Declare all actions of this screen

  def esperar
    wait_for(timeout: 5) { element_exists("* id:'#{product}'") }
  end

  def tocar_produto
    esperar
    touch("* id:'#{product}'")
  end

  def existem_produtos?
    esperar
    lista_produtos = query("* id:'#{product}'")
    return lista_produtos.length >= 1
  end
end
