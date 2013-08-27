require "spec_helper"

module Refinery
  module Redirections
    describe "Redirections" do


      before {
        ::ApplicationController.any_instance.stub(:refinery_user_required?).and_return(false)
      }

      let(:redirection) { create :redirection }

      subject { page }

      context "when visiting a url with a redirection created" do

        before { visit_without_redirects redirection.from_url }
        it('should redirect with the right http status code') { page.status_code.to_s.should eql redirection.status_code }
        it('should redirect to the right path') { redirected_url.should eql "http://www.example.com#{redirection.to_url}" }

      end

      context "when visiting a url without a redirection created" do

        before { visit_without_redirects '/' }
        it('should not return a redirection http status code') { page.status_code.should satisfy { |code| code < 300 || code >= 400} }

      end

    end
  end
end
