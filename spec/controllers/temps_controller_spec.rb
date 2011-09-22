require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TempsController do

  # This should return the minimal set of attributes required to create a valid
  # Temp. As you add validations to Temp, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all temps as @temps" do
      temp = Temp.create! valid_attributes
      get :index
      assigns(:temps).should eq([temp])
    end
  end

  describe "GET show" do
    it "assigns the requested temp as @temp" do
      temp = Temp.create! valid_attributes
      get :show, :id => temp.id.to_s
      assigns(:temp).should eq(temp)
    end
  end

  describe "GET new" do
    it "assigns a new temp as @temp" do
      get :new
      assigns(:temp).should be_a_new(Temp)
    end
  end

  describe "GET edit" do
    it "assigns the requested temp as @temp" do
      temp = Temp.create! valid_attributes
      get :edit, :id => temp.id.to_s
      assigns(:temp).should eq(temp)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Temp" do
        expect {
          post :create, :temp => valid_attributes
        }.to change(Temp, :count).by(1)
      end

      it "assigns a newly created temp as @temp" do
        post :create, :temp => valid_attributes
        assigns(:temp).should be_a(Temp)
        assigns(:temp).should be_persisted
      end

      it "redirects to the created temp" do
        post :create, :temp => valid_attributes
        response.should redirect_to(Temp.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved temp as @temp" do
        # Trigger the behavior that occurs when invalid params are submitted
        Temp.any_instance.stub(:save).and_return(false)
        post :create, :temp => {}
        assigns(:temp).should be_a_new(Temp)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Temp.any_instance.stub(:save).and_return(false)
        post :create, :temp => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested temp" do
        temp = Temp.create! valid_attributes
        # Assuming there are no other temps in the database, this
        # specifies that the Temp created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Temp.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => temp.id, :temp => {'these' => 'params'}
      end

      it "assigns the requested temp as @temp" do
        temp = Temp.create! valid_attributes
        put :update, :id => temp.id, :temp => valid_attributes
        assigns(:temp).should eq(temp)
      end

      it "redirects to the temp" do
        temp = Temp.create! valid_attributes
        put :update, :id => temp.id, :temp => valid_attributes
        response.should redirect_to(temp)
      end
    end

    describe "with invalid params" do
      it "assigns the temp as @temp" do
        temp = Temp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Temp.any_instance.stub(:save).and_return(false)
        put :update, :id => temp.id.to_s, :temp => {}
        assigns(:temp).should eq(temp)
      end

      it "re-renders the 'edit' template" do
        temp = Temp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Temp.any_instance.stub(:save).and_return(false)
        put :update, :id => temp.id.to_s, :temp => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested temp" do
      temp = Temp.create! valid_attributes
      expect {
        delete :destroy, :id => temp.id.to_s
      }.to change(Temp, :count).by(-1)
    end

    it "redirects to the temps list" do
      temp = Temp.create! valid_attributes
      delete :destroy, :id => temp.id.to_s
      response.should redirect_to(temps_url)
    end
  end

end
