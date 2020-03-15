class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_users!
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    rescue_from CanCan::AccessDenied do |exception|
        redirect_to main_app.root_path, alert: exception.message
    end
     protected

     def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :address)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :address)}
     end
    
    def after_sign_in_path_for(resource)
    shopperly_index_path
    end
    
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
