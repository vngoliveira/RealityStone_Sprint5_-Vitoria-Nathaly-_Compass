require 'capybara/dsl'

class GoogleHome
    include Capybara::DSL

    def load
        visit('https://www.google.com.br/webhp?tab=rw')
    end

    def search_for(query)
        find("input[name='q']").set query
        click_button 'Pesquisa Google'
    end
end