require 'spec_helper'

module Refinery
  module Redirections
    describe Redirection do
      it_behaves_like "model with attributes", :redirection
    end
  end
end
