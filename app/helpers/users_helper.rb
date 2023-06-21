module UsersHelper
  def user_path(user)
    "/blog/#{user.id}"
  end
end
