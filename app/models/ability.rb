class Ability  
  include CanCan::Ability
  def initialize(user)
    if user.present?
      if user.role.name == 'admin'
        can :manage, :all
      else
        can :create , Product
        can :create , Sale
        can :edit , Sale
        can :read, :all
      end
      else
        can :read, :all
    end
  end
end