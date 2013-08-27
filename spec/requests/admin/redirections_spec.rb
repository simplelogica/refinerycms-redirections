# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Redirections" do
    describe "Admin" do
      describe "redirections" do

        it_behaves_like "model with admin" do

          let(:i18n_plural_key) { 'redirections' }
          let(:admin_index_path) { refinery.redirections_admin_redirections_path }
          let(:model_factory) { :redirection }
          let(:model_name_attribute) { :from_url }
          let(:model_class) { Refinery::Redirections::Redirection }
          let(:row_prefix) { "redirections" }

          def fill_record options

            fill_in I18n.t("activerecord.attributes.refinery/redirections/redirection.from_url"), :with => options[:name]

            fill_in I18n.t("activerecord.attributes.refinery/redirections/redirection.to_url"), :with => attributes_for(:redirection)[:to_url]

          end
        end


      end
    end
  end
end
