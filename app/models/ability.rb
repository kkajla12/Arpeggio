class Ability
  include CanCan::Ability

  def initialize( user )
    user ||= User.new # guest user

    if user.role? :admin
      can :manage, :all
    else
      can :read, Product
      can :manage, Product, :user_id => user.id
    end
  end
end
