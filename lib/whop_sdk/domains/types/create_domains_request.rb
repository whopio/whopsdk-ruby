# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      class CreateDomainsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :app_id, -> { String }, optional: false, nullable: false

        field :domain, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :replace_existing, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
