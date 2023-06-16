module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ["public", "private", "archived"]

  included do
    validates :status, inclusion: {in: VALID_STATUSES}
  end

  class_methods do
    def public_count
      where(status: "public").count
    end
  end

  def archived?
    status == "archived"
  end

  def visible_to?(a_user)
    status == "public" or
      not archived? or
      (status == "private" and a_user == user)
  end
end
