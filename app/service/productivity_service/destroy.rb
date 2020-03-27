module ProductivityService::Destroy
  def self.call productivity_id
    Productivity.destroy(productivity_id)
  end
end