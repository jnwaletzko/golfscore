# typed: false
# == Schema Information
#
# Table name: holes
#
#  id                  :integer          not null, primary key
#  number              :integer          not null
#  par                 :integer          not null
#  yardage             :integer
#  handicap            :integer
#  strokes             :integer          not null
#  number_of_putts     :integer          not null
#  green_in_regulation :boolean          not null
#  fairway_hit         :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require "rails_helper"

RSpec.describe V1::HolesController, type: :request do
  let!(:holes) { create_list(:hole, 10) }
  let(:hole_id) { holes.first.id }
  let(:tee) { create(:tee) }

  let(:valid_attributes) do
    {
      number: Faker::Number.between(from: 1, to: 18),
      par: Faker::Number.between(from: 3, to: 5),
      yardage: Faker::Number.number(digits: 3).to_s,
      handicap: Faker::Number.between(from: 1, to: 18),
      tee_id: tee.id
    }
  end
  let(:invalid_attributes) do
    {
      number: Faker::Number.between(from: 1, to: 18),
      par: Faker::Number.between(from: 3, to: 5),
      yardage: nil,
      handicap: Faker::Number.between(from: 1, to: 18),
      tee_id: tee.id
    }
  end

  describe "GET #index" do
    before { get "/v1/holes" }

    it "returns holes" do
      expect(response).to have_http_status(200)
      expect(json.size).to eq(10)
      expect(json).to match_json_schema("holes/index")
    end
  end

  describe "GET #show" do
    before { get "/v1/holes/#{hole_id}" }

    context "when the record exists" do
      it "returns the hole" do
        expect(response).to have_http_status(200)
        expect(json).to match_json_schema("hole")
      end
    end

    context "when the record does not exist" do
      let(:hole_id) { 100 }

      it "returns status code 404 and a not found message" do
        expect(response).to have_http_status(404)
        expect(response.body).to match(/Couldn't find Hole/)
      end
    end
  end

  describe "POST #create" do
    context "when the request is valid" do
      before { post "/v1/holes", params: {hole: valid_attributes} }

      it "creates a new Hole" do
        expect(json.fetch("id")).to be_present
        expect(json).to match_json_schema("hole")
        expect(response).to have_http_status(201)
      end
    end

    context "when the request is invalid" do
      before { post "/v1/holes", params: {hole: invalid_attributes} }

      it "raises a validation error and returns a 422" do
        expect(response.body)
          .to match(/Validation failed: Yardage can't be blank, Yardage is not a number/)
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      before do
        put "/v1/holes/#{hole_id}", params: {hole: valid_attributes}
      end

      it "updates the requested hole" do
        expect(json.fetch("id")).to be(hole_id)
        expect(json).to match_json_schema("hole")
        expect(response).to have_http_status(200)
      end
    end

    context "with invalid params" do
      before do
        put "/v1/holes/#{hole_id}", params: {hole: invalid_attributes}
      end

      it "returns a success response (i.e. to display the 'edit' template)" do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested hole" do
      expect { delete "/v1/holes/#{hole_id}" }.to change(Hole, :count).by(-1)
    end

    it "redirects to the holes list" do
      delete "/v1/holes/#{hole_id}"
      expect(response).to have_http_status(200)
    end
  end
end
