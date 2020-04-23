module RoleService::Find
  def self.find_by_name name
    Role.find_by!(name: name)
  end

  def self.admin
    find_by_name Roles::Admin
  end

  def self.user
    find_by_name Roles::User 
  end
end