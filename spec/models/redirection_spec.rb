require 'spec_helper'

module Refinery
  module Redirections
    describe Redirection do
      it_behaves_like "model with attributes", :redirection
      it_behaves_like "model with required attributes", :redirection, [:from_url, :status_code, :to_url]

      context "when sanitizing paths" do

        [
          [ "/path-with-undesired-params?page=2&a=1", ["a"], "/path-with-undesired-params?page=2" ],
          [ "/path-with-unsorted-params?b=0&a=1", [], "/path-with-unsorted-params?a=1&b=0" ]
        ].each do |original_path, undesired_params, sanitized_path|

          context "when creating redirection to #{original_path}" do

            let(:redirection) { create :redirection, from_url: original_path }
            subject { redirection }

            before { Refinery::Redirections.ignored_path_params = undesired_params }

            it "should sanitize it into #{sanitized_path}" do
              Refinery::Redirections::Redirection.sanitize_path(original_path).should eql sanitized_path
            end

            its(:from_url) { should eql sanitized_path }

          end

        end

      end
    end
  end
end
