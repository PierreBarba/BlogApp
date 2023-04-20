class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :create, Post, author_id: user.id
      can :update, Post, author_id: user.id
      can :destroy, Post, author_id: user.id
      can :create, Comment, author_id: user.id
      can :update, Comment, author_id: user.id
      can :destroy, Comment, author_id: user.id
    end
  end
end
