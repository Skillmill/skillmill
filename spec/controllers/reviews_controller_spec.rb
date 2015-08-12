require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do

  let(:design) { create(:design) }

  before do
    @project = design.project
    @current_user = design.designer
    fake_sign_in @current_user
  end


  let(:valid_attributes) {
    {rating: 3, comment: 'Nice'}
  }

  let(:invalid_attributes) {
    {comment: ''}
  }

  let(:valid_session) { {} }


  describe "GET #new" do
    it "assigns a new review as @review" do
      get :new, {design_id: design.id}, valid_session
      expect(assigns(:review)).to be_a_new(Review)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Review" do
        expect {
          post :create, {:review => valid_attributes, design_id: design.id}, valid_session
        }.to change(Review, :count).by(1)
      end

      it "assigns a newly created review as @review" do
        post :create, {:review => valid_attributes, design_id: design.id}, valid_session
        expect(assigns(:review)).to be_a(Review)
        expect(assigns(:review)).to be_persisted
      end

      it "redirects to the created review" do
        post :create, {:review => valid_attributes, design_id: design.id}, valid_session
        expect(response).to redirect_to(design)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved review as @review" do
        post :create, {:review => invalid_attributes, design_id: design.id}, valid_session
        expect(assigns(:review)).to be_a_new(Review)
      end

      it "re-renders the 'new' template" do
        post :create, {:review => invalid_attributes, design_id: design.id}, valid_session
        expect(response).to render_template("new")
      end
    end
  end


end
