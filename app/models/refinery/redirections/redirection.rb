class Refinery::Redirections::Redirection < ActiveRecord::Base
  attr_accessible :from_url, :status_code, :to_url

  validates :from_url, :status_code, :to_url, presence: true


  before_save :sanitize_path

  def sanitize_path
    self.from_url = self.class.sanitize_path from_url
  end


  # This method gets a path and 'sanitizes it'. This means that all the params that we don't want (Google Analytics params, testing params...) are stripped out and params are sorted so '/en?a=1&b=1' and '/en?b=1&a=1' are the same
  def self.sanitize_path path, ignored_path_params = Refinery::Redirections.ignored_path_params
    path, params = path.split("?")
    if params.blank?
      path
    else
      # We split the params
      params = params.split('&')
      # And then get those ignored and remove them
      not_ignored_params = params.reject{|p| ignored_path_params.detect{|ignored| p.start_with?("#{ignored}=") || (p == ignored)}}

      not_ignored_params.blank? ? path : "#{path}?#{not_ignored_params.sort.join('&')}"

    end

  end

end
