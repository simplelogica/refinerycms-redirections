require 'refinerycms-core'
require 'rack/rewrite'

module Refinery

  autoload :RedirectionsGenerator, 'generators/refinery/redirections/redirections_generator'

  module Redirections

    require 'refinery/redirections/engine'
    require 'refinery/redirections/configuration'
    require 'refinery/redirections/routes_constraint'

    attr_writer :root

    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join("spec/factories").to_s ]
      end
    end
  end
end

