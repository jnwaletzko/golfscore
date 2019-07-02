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
  # This should return the minimal set of attributes required to create a valid
  # Hole. As you add validations to Hole, be sure to
  # adjust the attributes here as well.
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
      number: Faker::Number.between(18, 100),
      par: Faker::Number.between(3, 5),
      yards: Faker::Number.number(3),
      handicap: Faker::Number.between(1, 18),
      score: Faker::Number.between(1, 14),
      number_of_putts: Faker::Number.between(0, 5),
      green_in_regulation: nil,
      fairway_hit: Faker::Boolean.boolean,
      bad: true,
    }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HolesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  fdescribe "GET #index" do
    it "returns a success response" do
      Hole.create! valid_attributes
      get :index, params: {format: :json}, session: valid_session
      expect(json_response).to be_present
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      hole = Hole.create! valid_attributes
      get :show, params: {id: hole.to_param, format: :json}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Hole" do
        expect {
          post :create, params: {hole: valid_attributes, format: :json}, session: valid_session
        }.to change(Hole, :count).by(1)
      end

      it "return the created hole" do
        post :create, params: {hole: valid_attributes, format: :json}, session: valid_session
        expect(response).to be(Hole.last.id)
      end
    end

    context "with invalid params" do
      xit "returns an error response" do
        post :create, params: {hole: invalid_attributes, format: :json}, session: valid_session
        expect(response).to be_invalid
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
        put :update, params: {id: hole.to_param, hole: new_attributes, format: :json}, session: valid_session
        hole.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the hole" do
        hole = Hole.create! valid_attributes
        put :update, params: {id: hole.to_param, hole: valid_attributes, format: :json}, session: valid_session
        expect(response).to redirect_to(hole)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        hole = Hole.create! valid_attributes
        put :update, params: {id: hole.to_param, hole: invalid_attributes, format: :json}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested hole" do
      hole = Hole.create! valid_attributes
      expect {
        delete :destroy, params: {id: hole.to_param, format: :json}, session: valid_session
      }.to change(Hole, :count).by(-1)
    end

    it "redirects to the holes list" do
      hole = Hole.create! valid_attributes
      delete :destroy, params: {id: hole.to_param, format: :json}, session: valid_session
      expect(response).to redirect_to(holes_url)
    end
  end

end
