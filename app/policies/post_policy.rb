class PostPolicy < ApplicationPolicy
  def new?
    user.admin?
  end

  def update?
    user.admin? || record.author == user
  end

  def edit?
    user.admin? || record.author == user
  end

  def create?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
