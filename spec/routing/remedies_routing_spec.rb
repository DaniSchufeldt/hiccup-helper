require "rails_helper"

RSpec.describe RemediesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/remedies").to route_to("remedies#index")
    end

    it "routes to #new" do
      expect(:get => "/remedies/new").to route_to("remedies#new")
    end

    it "routes to #show" do
      expect(:get => "/remedies/1").to route_to("remedies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/remedies/1/edit").to route_to("remedies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/remedies").to route_to("remedies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/remedies/1").to route_to("remedies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/remedies/1").to route_to("remedies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/remedies/1").to route_to("remedies#destroy", :id => "1")
    end

  end
end
