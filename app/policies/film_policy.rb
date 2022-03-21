# frozen_string_literal: true

class FilmPolicy < ApplicationPolicy
  def show?
    user.admin? || user.present? if user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
