class AdminAbility
  include CanCan::Ability
  def initialize(adminuser)
    return unless adminuser && adminuser.superadmin_role?
    can :access, :rails_admin
    can :manage, :all       
  end
end