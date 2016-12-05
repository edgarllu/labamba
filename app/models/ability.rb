class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.editor?
      can :read, :all
      can :create,      Bamba
      can :edit,        Bamba
      can :update,      Bamba
      can :destroy,     Bamba
      can [:set_title], Bamba
    elsif user.basic?
      can :read, :all
      can :create,      Bamba
    else
      can :read, :all
    end
  end
end