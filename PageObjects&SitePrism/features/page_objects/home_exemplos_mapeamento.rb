class HomeExemploMapeamentos < SitePrism::Page
    set_url '/'

    element :btn_search, '#mobile-header-open-search-icon'

    element :btn_categorias, 'header--gap-button--3bIww popper--popper--2r2To'

    element :curso_1, '#u103-popper-trigger--1151'

    element :txt, 'udlite-heading-xl search--header-title--3wfny'

    #sections :cursos, Cursos, '.course-list--container--3zXPS'
end

class CursosExemploMapeamentos < SitePrism::Section
    element :name, 'udlite-heading-xl clp-lead__title clp-lead__title--small'
    element :price, 'price-text--price-part--2npPm udlite-clp-discount-price udlite-heading-xxl'
end

#class Cursos < SitePrism::Section
    #element :curso_1, '#u103-popper-trigger--1151'
    #element :curso_2, '#u103-popper-trigger--1154'
    #element :curso_3, '#u103-popper-trigger--1157'
#end