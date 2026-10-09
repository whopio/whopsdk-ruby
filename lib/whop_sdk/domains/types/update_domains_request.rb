# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      class UpdateDomainsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :registration, -> { Whop_sdk::Domains::Types::UpdateDomainsRequestRegistration }, optional: true, nullable: false

        field :verification, -> { Whop_sdk::Domains::Types::UpdateDomainsRequestVerification }, optional: true, nullable: false

        field :website, -> { Whop_sdk::Domains::Types::UpdateDomainsRequestWebsite }, optional: true, nullable: false
      end
    end
  end
end
