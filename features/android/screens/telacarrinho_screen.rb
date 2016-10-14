class TelacarrinhoScreen < AndroidScreenBase
  # The screen identificator
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare all the elements of this screen
  element(:layout_name)         { 'cart_activity' }
  # element(:button)              { pending 'Insert button identificator' }

  # Declare all actions of this screen
  # action(:touch_button) do
  #   touch("* id:'#{button}'")
  # end
end
