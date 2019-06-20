# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?
    if user.admin?
      can :manage, :all
    else
      can [:create], [Comment, Sugest, User]
      can [:update, :show, :edit], User, user_id: user.id
      can [:read, :update, :show], Order, user_id: user.id
    end
  end
end
