# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceLogoURL < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :logo_url, -> { String }, optional: false, nullable: true

      field :object, -> { Whop_sdk::Types::LedgerActivityResourceLogoURLObject }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true
    end
  end
end
