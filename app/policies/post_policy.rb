class PostPolicy < ApplicationPolicy
  def new?
    user.admin?
  end

  def update?
    user.admin?
  end

  def edit?
    user.admin?
  end
end
