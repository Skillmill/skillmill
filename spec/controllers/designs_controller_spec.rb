require 'rails_helper'

RSpec.describe DesignsController, type: :controller do

  let(:design) { create(:design) }

  before do
    @project = design.project
    @current_user = design.designer
    fake_sign_in @current_user
  end


  let(:valid_attributes) {
    {:thirdpartycontent => '1', description: 'Desc', image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'logo.png'))}
  }

  let(:invalid_attributes) {
    {:thirdpartycontent => ''}
  }

  let(:valid_session) { {} }

  describe "GET #show" do
    it "assigns the requested design as @design" do
      get :show, {:id => design.id}, valid_session
      expect(assigns(:design)).to eq(design)
    end
  end

  describe "GET #new" do
    it "assigns a new design as @design" do
      get :new, {project_id: @project.id}, valid_session
      expect(assigns(:design)).to be_a_new(Design)
    end
  end

  describe "GET #edit" do
    it "assigns the requested design as @design" do
      get :edit, {:id => design.id}, valid_session
      expect(assigns(:design)).to eq(design)
    end


  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Design" do
        expect {
          post :create, {:design => valid_attributes, project_id: @project.id}, valid_session
        }.to change(Design, :count).by(1)
      end

      it "assigns a newly created design as @design" do
        post :create, {:design => valid_attributes, project_id: @project.id}, valid_session
        expect(assigns(:design)).to be_a(Design)
        expect(assigns(:design)).to be_persisted
      end

      it "redirects to the created design" do
        post :create, {:design => valid_attributes, project_id: @project.id}, valid_session
        expect(response).to redirect_to(submitted_designs_path)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {description: '0'}
      }

      it "updates the requested design" do
        put :update, {:id => design.to_param, :design => new_attributes}, valid_session
        design.reload
        expect(design.description).to eq('0')
      end

      it "assigns the requested design as @design" do
        put :update, {:id => design.to_param, :design => valid_attributes}, valid_session
        expect(assigns(:design)).to eq(design)
      end

      it "redirects to the design" do
        put :update, {:id => design.to_param, :design => valid_attributes}, valid_session
        expect(response).to redirect_to(submitted_designs_path)
      end
    end
  end


end
