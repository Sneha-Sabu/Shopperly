module ProductsHelper
    def products_author(products)
    users_signed_in? && current_users.id == products.users_id
    end
end
