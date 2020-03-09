class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    def redirect_if_categories_not_found
    logger.error "Attempt to access non-existent #{request.controller_class}#{params[:id]}"
    flash[:notice] = 'Sorry, but that doesn\'t exist.'
    redirect_to(categories_index_url)
    end

    def redirect_if_products_not_found
    logger.error "Attempt to access non-existent #{request.controller_class}#{params[:id]}"
    flash[:notice] = 'Sorry, but that doesn\'t exist.'
    redirect_to(products_index_url)
    end
    
end
