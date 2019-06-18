require "rails_helper"
require './app/helpers/sessions_helper'
require 'devise'

RSpec.configure do |c|
  c.include SessionsHelper
end


RSpec.describe Users::RegistrationsController, type: :controller do
  let(:user) {FactoryBot.create :user}
  let(:orther_user) {FactoryBot.create :Ortheruser}
  before :each do
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end

  describe "POST #create" do
    it "requests user to @user" do
      post :create, params: {user: FactoryBot.attributes_for(:create_user)}
      expect(response).to redirect_to root_path
    end
  end

end
