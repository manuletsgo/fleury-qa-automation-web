Quando("acessar a categoria {string}") do |category|
  step 'que esteja na home'
  @main_header = @home.main_header
  @main_header.acessar_categoria(category)
  @category = $web_pages.category
end

Então("deverá ser exibida a página da categoria {string}") do |category|
  @category.span_unidades.greenify
  expect(@category.span_unidades.text).to eql category
end
