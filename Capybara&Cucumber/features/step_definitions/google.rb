Dado('que acesse a home') do
    visit('https://www.google.com.br/webhp?tab=rw')
  end
  
  Então('deverá exibir o logo da Google') do
    expect(page).to have_content 'Gmail'
    expect(page).to have_css '.lnXdpd'
  end

Quando('buscar por {string}') do |termo|
    find("input[name='q']").set termo
    find(".UUbT9 .gNO89b").click
end
  
Então('deverão ser encontrados resultados') do
    expect(page).to have_content 'Jeep Compass'
end