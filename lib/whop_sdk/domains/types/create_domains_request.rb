# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      class CreateDomainsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :domain, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :registration, -> { Whop_sdk::Domains::Types::CreateDomainsRequestRegistration }, optional: true, nullable: false

        field :verification, -> { Whop_sdk::Domains::Types::CreateDomainsRequestVerification }, optional: true, nullable: false

        field :website, -> { Whop_sdk::Domains::Types::CreateDomainsRequestWebsite }, optional: true, nullable: false
      end
    end
  end
end
