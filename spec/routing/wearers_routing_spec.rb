require "rails_helper"

RSpec.describe WearersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wearers").to route_to("wearers#index")
    end


    it "routes to #show" do
      expect(:get => "/wearers/1").to route_to("wearers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/wearers").to route_to("wearers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wearers/1").to route_to("wearers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wearers/1").to route_to("wearers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wearers/1").to route_to("wearers#destroy", :id => "1")
    end

  end
end
