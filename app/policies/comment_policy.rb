class CommentPolicy < ApplicationPolicy

  def destroy?
    user.present? && (record.user == user || user.admin? || user.moderator?)
  end

	def create?
		user.present?
	end

	def new?
		create?
	end

	def show?
		true
	end

end