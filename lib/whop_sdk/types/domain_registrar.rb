# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainRegistrar < Internal::Types::Model
      field :iana_id, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
