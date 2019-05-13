class Show < ActiveRecord::Base
  has_many :characters
  has_one :network

  def build_network(call_letters)
  	Network.find_or_create_by(call_letters).shows << self
  end
end