require "spec_helper"

describe TempsController do
  describe "routing" do

    it "routes to #index" do
      get("/temps").should route_to("temps#index")
    end

    it "routes to #new" do
      get("/temps/new").should route_to("temps#new")
    end

    it "routes to #show" do
      get("/temps/1").should route_to("temps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/temps/1/edit").should route_to("temps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/temps").should route_to("temps#create")
    end

    it "routes to #update" do
      put("/temps/1").should route_to("temps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/temps/1").should route_to("temps#destroy", :id => "1")
    end

  end
end
