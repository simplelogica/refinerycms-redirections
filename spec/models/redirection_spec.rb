require 'spec_helper'

module Refinery
  module Redirections
    describe Redirection do
      it_behaves_like "model with attributes", :redirection
      it_behaves_like "model with required attributes", :redirection, [:from_url, :status_code, :to_url]
    end
  end
end
