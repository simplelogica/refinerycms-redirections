module Refinery
  module Redirections
    class Engine < Rails::Engine
      include Refinery::Engine

      isolate_namespace Refinery::Redirections

      initializer "register refinerycms_redirections plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = "refinerycms_redirections"
          plugin.menu_match = /refinery\/redirections\/?/
        end
      end

      config.after_initialize do
        Refinery.register_engine(Refinery::Redirections)
      end
    end
  end
end
