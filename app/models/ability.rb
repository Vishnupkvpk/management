# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :manage, Expense, user_id: user.id
      can :manage, Income, user_id: user.id
      can :read, :all
    end # See the wiki for details:
  end
end
