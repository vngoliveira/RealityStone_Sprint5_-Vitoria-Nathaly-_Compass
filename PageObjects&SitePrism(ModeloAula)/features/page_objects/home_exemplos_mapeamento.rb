class FooterExemploMapeamentos < SitePrism::Section
    element :img_facebook, 'img[name="follow_facebook"]'
    element :img_twitter, 'img[name="follow_twitter"]'
end

class ProductsExemploMapeamentos < SitePrism::Section
    element :name, 'a.productName'
    element :price, 'a.productPrice'
end

class HomeExemploMapeamentos < SitePrism::Page
    set_url '/'

    element :btn_open_search, '#search #menuSearch'
    element :menu_items, '.nav-li-Links a'
    # menu_items.first.click
    # menu_items[2].click

    section :footer, FooterExemploMapeamentos, 'footer.ng-scope'
    # footer.img_facebook.click
    # footer.img_twitter.click

    sections :products, ProductsExemploMapeamentos, '.categoryRight li.ng-scope'
    # products[2].price.click
    # products.last.click
end