class CreateAdminService
  def call(email, password, role = :admin)
    email ||= Rails.application.secrets.admin_email
    password ||= Rails.application.secrets.admin_password
    user = User.find_or_create_by!(email: email) do |user|
        user.password = password
        user.password_confirmation = password
        user.confirm!
        user.role = role
      end
  end
end