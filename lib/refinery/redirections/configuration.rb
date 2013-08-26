module Refinery
  module Redirections
    include ActiveSupport::Configurable

    config_accessor :ignored_path_params

    self.ignored_path_params = ["utm_medium","utm_source","utm_campaign","utm_content","utm_term"]

  end
end
