#encoding: UTF-8
Quando("acessar a categoria {string}") do |categoria|
  step 'que esteja na home'
  @main_header = @home.main_header
  @main_header.acessar_categoria(categoria)
  @unidades = $web_pages.unidades
  step "deverá ser exibida a página da categoria '#{categoria}'"
end

Então("deverá ser exibida a página da categoria {string}") do |categoria|
  expect(@unidades.span_unidades.text).to eql categoria
end
