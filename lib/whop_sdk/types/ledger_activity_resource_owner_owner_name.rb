# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceOwnerOwnerName < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :object, -> { Whop_sdk::Types::LedgerActivityResourceOwnerOwnerNameObject }, optional: false, nullable: false

      field :profile_picture_url, -> { String }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: true
    end
  end
end
