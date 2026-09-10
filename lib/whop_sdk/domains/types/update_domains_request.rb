# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      class UpdateDomainsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :app_id, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
