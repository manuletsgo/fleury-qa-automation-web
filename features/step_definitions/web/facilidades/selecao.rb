Quando("acessar o filtro de facilidades") do
  @category.filters.greenify
  @filters = @category.filters
end

Quando("selecionar facilidades {string}") do |facilidades|
  @filters.selecionar_facilidades(facilidades)
  @units_cells = @category.units
  @units_cells.each do |unit|
    facilidades.split(',').each do |facility|
      expect(unit.get_data[:facilities]).to have_content facility
    end
  end
end

Quando("acessar o primeiro resultado da busca") do
  @unit_cell = @category.units.first
  @unit_cell_data = @unit_cell.get_data
  @unit_cell.open_details
end

Então("deverá ser exibida a página da unidade escolhida") do
  @unit = $web_pages.unit
  @unit_page_data = @unit.get_data
  expect(@unit_page_data[:unit]).to eql @unit_cell_data[:unit]
  expect(@unit_page_data[:address]).to have_content @unit_cell_data[:address]
  expect(@unit_page_data[:facilities]).to eql @unit_cell_data[:facilities]
end
