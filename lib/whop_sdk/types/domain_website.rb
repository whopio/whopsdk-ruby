# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainWebsite < Internal::Types::Model
      field :app, -> { Whop_sdk::Types::DomainWebsiteApp }, optional: false, nullable: true

      field :state, -> { Whop_sdk::Types::DomainWebsiteState }, optional: false, nullable: false
    end
  end
end
