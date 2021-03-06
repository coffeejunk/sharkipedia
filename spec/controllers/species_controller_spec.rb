require "rails_helper"

RSpec.describe SpeciesController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:species) { create :species }

    context "by slug" do
      it "returns http success" do
        get :show, params: {id: species.slug}
        expect(response).to have_http_status(:success)
      end
    end

    context "by id" do
      it "returns http success" do
        get :show, params: {id: species.id}
        expect(response).to have_http_status(:success)
      end
    end
  end
end
