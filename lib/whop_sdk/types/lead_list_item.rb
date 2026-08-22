# frozen_string_literal: true

module Whop_sdk
  module Types
    # A prospective customer who has expressed interest in a company or product but has not yet purchased.
    class LeadListItem < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :member, -> { Whop_sdk::Types::LeadListItemMember }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :product, -> { Whop_sdk::Types::LeadListItemProduct }, optional: false, nullable: true

      field :referrer, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::LeadListItemUser }, optional: false, nullable: false
    end
  end
end
