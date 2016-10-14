class TeladecatalogoScreen < AndroidScreenBase
  # The screen identificator
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare all the elements of this screen
  element(:layout_name)         { 'catalog_activity' }
  element(:product)             { 'product_item' }

  # Declare all actions of this screen
  def tocar_produto
    touch("* id:'#{product}'")
  end

  def existem_produtos?
    wait_for(timeout: 5) { element_exists("* id:'#{product}'") }
    lista_produtos = query("* id:'#{product}'")
    return lista_produtos.length >= 1
  end
end
