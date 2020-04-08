require 'test_helper'
class LineItemControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    get '/users/sign_in'
    sign_in users(:users_001)
    post users_session_url
  
  end  
  
  setup do
    @line_item = line_item(:one)
  end

  


end