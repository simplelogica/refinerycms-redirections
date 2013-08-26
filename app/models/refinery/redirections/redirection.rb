puts "HEY YA"
class Refinery::Redirections::Redirection < ActiveRecord::Base
  attr_accessible :from_url, :status_code, :to_url
end
