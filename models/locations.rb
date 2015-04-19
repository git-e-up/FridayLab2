class Location < ActiveRecord::Base
  has_many (:visits)
  has_many(:users, :through => :visits)
  def to_s
    self.city + '... The greatest City in the World!'
  end
end
