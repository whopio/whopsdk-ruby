# frozen_string_literal: true

module Whop_sdk
  module Audiences
    module Types
      class ListAudiencesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :audience_id, -> { String }, optional: true, nullable: false

        field :audience_type, -> { Whop_sdk::Audiences::Types::ListAudiencesRequestAudienceType }, optional: true, nullable: false

        field :source_type, -> { Whop_sdk::Audiences::Types::ListAudiencesRequestSourceType }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
