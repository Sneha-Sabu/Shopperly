class AddSuperadmin < ActiveRecord::Migration[6.0]
  def change
   Users.create! do |u|
        u.email     = 'test_admin@test.com'
        u.password  = 'password'
        u.superadmin_role = true
        end
  end
end
