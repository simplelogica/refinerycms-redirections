class Refinery::Redirections::Redirection < ActiveRecord::Base
  attr_accessible :from_url, :status_code, :to_url
  validates :from_url, :status_code, :to_url, presence: true
end
