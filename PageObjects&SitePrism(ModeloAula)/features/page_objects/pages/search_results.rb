require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page
        set_url '/#/search'

        section :header, Sections::Header, 'header'
        #elements :products, 'div.categoryRight li.ng-scope'
        sections :products, Sections::Products, 'div.categoryRight li.ng-scope'
    end
end