module Refinery
  module Redirections
    include ActiveSupport::Configurable

    config_accessor :ignored_path_params
    config_accessor :enable_rack_redirection
    config_accessor :enable_route_redirection

    self.ignored_path_params = ["utm_medium","utm_source","utm_campaign","utm_content","utm_term"]
    self.enable_rack_redirection = true
    self.enable_route_redirection = true

  end
end
