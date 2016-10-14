class TeladetalhesprodutoScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'product_activity' }
  element(:size_button)         { 'button_size' }
  element(:color_button)        { 'button_color' }
  element(:cart_button)         { 'buy_button' }

  # Declare todas as acoes da tela
  def arrastar_para(direction)
    positions = [0, 0, 0, 0] # [ 'from_x', 'to_x', 'from_y', 'to_y' ]

    case (direction)
    when 'baixo'
      positions = [30, 30, 60, 30]
    when 'cima'
      positions = [80, 80, 60, 90]
    when 'esquerda'
      positions = [90, 20, 80, 80]
    when 'direita'
      positions = [20, 90, 80, 80]
    else
      raise 'Não foi possivel arrastar'
    end
    perform_action('drag', positions[0], positions[1],
                   positions[2], positions[3], 15)
    sleep(1)
  end

  def escolher_tamanho
    touch("* id:'#{size_button}'")
    touch("* marked:'40'")
  end

  def escolher_cor
    touch("* id:'#{color_button}'")
    touch("* marked:'Preto'")
  end

  def tentar_escolher_cor
    touch("* id:'#{color_button}'")
  end

  def enviar_para_carrinho
    touch("* id:'#{cart_button}'")
  end

  def validar_mensagem_sem_tamanho_e_sem_cor
    query("* {text CONTAINS[c] 'Por favor selecione o tamanho e cor'}")
  end

  def validar_mensagem_escolher_cor_sem_tamanho
    query("* {text CONTAINS[c] 'Por favor selecione um tamanho'}")
  end
end
