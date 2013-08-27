module Refinery
  module Redirections
    module Admin
      class RedirectionsController < ::Refinery::AdminController

        crudify :'refinery/redirections/redirection', title_attribute: :from_url

      end
    end
  end
end
