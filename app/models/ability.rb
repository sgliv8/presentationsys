class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elsif user.advisory?
      can :read, Comment
      can :create, Comment
      can :update, Comment do |comment|
        comment.try(:user) == user
      end
      can :destroy, Comment do |comment|
        comment.try(:user) == user
      end
    elsif user.instructor?
      can :read, Grade
      can :create, Grade
      can :update, Grade do |grade|
        grade.try(:user) == user
      end
      can :destroy, Grade do |grade|
        grade.try(:user) == user
      end
    end
  end
end
