Dado('que esteja na home') do
    @home_page = Home.new
    @home_page.load
  end

  Quando('digitar o nome do curso ou palavra-chave {string}') do |termo|
   @home_page.find("input[name='q']").set termo
  end
  
  Quando('iniciar a buscar') do
    @home_page.find('button[class="udlite-btn udlite-btn-large udlite-btn-ghost udlite-heading-md udlite-btn-icon udlite-btn-icon-large"]').click
    @search_results_page = SearchResults.new
  end
  
  Então('deverá retornar ao usuário os cursos de acordo com a busca') do
    expect(@search_results_page).to have_content "step"
  end

  Quando('selecionar uma categoria {string}') do |string|
    @home_page.click_button "Categorias"
    @home_page.click_on (string)
  end
  
  Então('deverá retornar ao usuário os cursos dessa categoria') do
    expect(@search_results_page).to have_content "step"
  end