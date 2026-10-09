# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainWebsite < Internal::Types::Model
      field :app_id, -> { String }, optional: false, nullable: false

      field :state, -> { Whop_sdk::Types::DomainWebsiteState }, optional: false, nullable: false
    end
  end
end
