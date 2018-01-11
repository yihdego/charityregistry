require 'rails_helper'

RSpec.describe RegistryController, type: :controller do
  let!(:user) { User.create(username: 'yihdego')}
  describe "GET #index" do
    before(:each) {get :index}
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "returns an instance variable of all multiple lists" do
      expect(assigns[:registries]).to be_an ActiveRecord::Relation
    end
  end

  describe "GET #new" do
    before(:each) {get :new}
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "renders new view" do
      expect(response).to render_template(:new)
    end
    it "assigns a new registry instance variable" do
      expect(assigns[:registry]).to be_a Registry
    end
  end

  describe "GET #create" do
    before(:each) do
      post :create, params: {registry: {title: "Coat Drive", description: "We're collecting coats for the community, we appreciate all your help as it goes toward keeping members of our community warm.", deadline: DateTime.new(2018,2,3), user_id: user.id}}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "assigns a user variable" do
      expect(assigns[:registry]).to be_a Registry
    end
    it "creates a user in the user table" do
      expect(Registry.find_by(title: "Coat Drive")).to be_a Registry
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
