class Visit < ActiveRecord::Base
  belongs_to(:user)
  belongs_to(:location)
  def to_s
    self.user.to_s + " - visits - " + self.location.to_s
  end
end
