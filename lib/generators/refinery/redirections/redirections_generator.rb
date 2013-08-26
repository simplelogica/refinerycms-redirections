module Refinery
  class RedirectionsGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates/", __FILE__)

    def generate_ue_core_initializer
      template "config/initializers/refinery/redirections.rb.erb", File.join(destination_root, "config", "initializers", "refinery", "redirections.rb")
    end

    def rake_db
      rake("refinery_redirections:install:migrations")
    end

  end
end
