Dado('que acesse a home') do
    @google_home = GoogleHome.new
    @google_home.load
  end
  
  Então('deverá exibir o logo da Google') do
    expect(@google_home).to have_content 'Gmail'
    expect(@google_home).to have_css '.lnXdpd'
  end

Quando('buscar por {string}') do |termo|
    @google_home.search_for(termo)
    @google_results = GoogleHome.new
end
  
Então('deverão ser encontrados resultados') do
    expect(@google_home).to have_content 'Jeep Compass'
end