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

RSpec.describe V1::HolesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/v1/holes").to route_to("v1/holes#index", format: :json)
    end

    it "routes to #new" do
      expect(get: "/v1/holes/new").to route_to("v1/holes#new", format: :json)
    end

    it "routes to #show" do
      expect(get: "/v1/holes/1").to route_to("v1/holes#show", id: "1", format: :json)
    end

    it "routes to #edit" do
      expect(get: "/v1/holes/1/edit").to route_to("v1/holes#edit", id: "1", format: :json)
    end

    it "routes to #create" do
      expect(post: "/v1/holes").to route_to("v1/holes#create", format: :json)
    end

    it "routes to #update via PUT" do
      expect(put: "/v1/holes/1").to route_to("v1/holes#update", id: "1", format: :json)
    end

    it "routes to #update via PATCH" do
      expect(patch: "/v1/holes/1").to route_to("v1/holes#update", id: "1", format: :json)
    end

    it "routes to #destroy" do
      expect(delete: "/v1/holes/1").to route_to("v1/holes#destroy", id: "1", format: :json)
    end
  end
end
