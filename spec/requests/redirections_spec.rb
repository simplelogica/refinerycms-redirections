require "spec_helper"

module Refinery
  module Redirections
    describe "Redirections" do

      let(:redirection) { create :redirection }

      subject { page }

      context "when visiting a url with a redirection created" do

        before { visit redirection.from_url }
        its(:status_code) { should eql redirection.status_code }

      end

    end
  end
end
