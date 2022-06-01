Quando('acessar a página do produto') do
    @search_results_page.access_product_page(1)
    @product_page = Pages::ProductPage.new
  end
  
  Quando('alterar a cor do produto') do
    @image_before = @product_page.main_image['src']
    @product_page.colors[1].click
  end
  
  Então('deverá alterar a imagem apresentada na PDP') do
    expect(@product_page.main_image['src']).not_to eql @image_before
  end