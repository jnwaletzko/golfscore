# == Schema Information
#
# Table name: holes
#
#  id                  :integer          not null, primary key
#  number              :integer          not null
#  par                 :integer          not null
#  yards               :integer
#  handicap            :integer
#  score               :integer          not null
#  number_of_putts     :integer          not null
#  green_in_regulation :boolean          not null
#  fairway_hit         :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require "rails_helper"

RSpec.describe V1::HolesController, type: :controller do
  let!(:holes) { create_list(:hole, 10) }
  let(:hole_id) { holes.first.id }

  describe "GET #index" do
    before { get :index, params: {format: :json} }

    it "returns holes" do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status_code(200)
    end
  end

  describe "GET #show" do
    before { get :show, params: {id: hole_id, format: :json} }

    context "when the record exists" do
      it "returns the hole" do
        expect(json).not_to be_empty
        expect(json["id"]).to eq(hole_id)
      end

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the record does not exist" do
      let(:hole_id) { 100 }

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end

      it "returns a not found message" do
        expect(response.body).to match(/Couldn't find Hole/)
      end
    end
  end

  fdescribe "POST #create" do
    let(:valid_attributes) do
      {
        number: Faker::Number.between(1, 18),
        par: Faker::Number.between(3, 5),
        yards: Faker::Number.number(3),
        handicap: Faker::Number.between(1, 18),
        score: Faker::Number.between(1, 14),
        number_of_putts: Faker::Number.between(0, 5),
        green_in_regulation: Faker::Boolean.boolean,
        fairway_hit: Faker::Boolean.boolean,
      }
    end
    let(:invalid_attributes) do
      {
        number: Faker::Number.between(1, 18),
        par: Faker::Number.between(3, 5),
        yards: Faker::Number.number(3),
        handicap: Faker::Number.between(1, 18),
        score: Faker::Number.between(1, 14),
        number_of_putts: Faker::Number.between(0, 5),
        green_in_regulation: nil,
        fairway_hit: Faker::Boolean.boolean,
      }
    end

    context "when the request is valid" do
      before { post :create, params: {hole: valid_attributes, format: :json} }

      it "creates a new Hole" do
        expect(json["number"]).to eq(valid_attributes[:number])
        expect(json["par"]).to eq(valid_attributes[:par])
        expect(json["yards"].to_s).to eq(valid_attributes[:yards])
        expect(json["handicap"]).to eq(valid_attributes[:handicap])
        expect(json["score"]).to eq(valid_attributes[:score])
        expect(json["number_of_putts"]).to eq(valid_attributes[:number_of_putts])
        expect(json["green_in_regulation"]).to eq(valid_attributes[:green_in_regulation])
        expect(json["fairway_hit"]).to eq(valid_attributes[:fairway_hit])
      end

      it "returns status code 201" do
        expect(response).to have_http_status(201)
      end
    end

    context "when the request is invalid" do
      before { post :create, params: {hole: invalid_attributes, format: :json} }

      it "creates a new Hole" do
        expect(response.body)
          .to match(/Validation failed: Green in regulation is not included in the list/)
      end

      it "returns status code 422" do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested hole" do
        hole = Hole.create! valid_attributes
        put :update, params: {id: hole.to_param, hole: new_attributes, format: :json}
        hole.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the hole" do
        hole = Hole.create! valid_attributes
        put :update, params: {id: hole.to_param, hole: valid_attributes, format: :json}
        expect(response).to redirect_to(hole)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        hole = Hole.create! valid_attributes
        put :update, params: {id: hole.to_param, hole: invalid_attributes, format: :json}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested hole" do
      hole = Hole.create! valid_attributes
      expect {
        delete :destroy, params: {id: hole.to_param, format: :json}
      }.to change(Hole, :count).by(-1)
    end

    it "redirects to the holes list" do
      hole = Hole.create! valid_attributes
      delete :destroy, params: {id: hole.to_param, format: :json}
      expect(response).to redirect_to(holes_url)
    end
  end

end
