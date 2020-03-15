class AdminAbility
  include CanCan::Ability
  def initialize(users)
    return unless users && users.superadmin_role?
    can :access, :rails_admin
    can :manage, :all       
  end
end