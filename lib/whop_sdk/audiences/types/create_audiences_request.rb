# frozen_string_literal: true

module Whop_sdk
  module Audiences
    module Types
      class CreateAudiencesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :audience_type, -> { Whop_sdk::Audiences::Types::CreateAudiencesRequestAudienceType }, optional: true, nullable: false

        field :auto_refresh, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :column_mapping, -> { Whop_sdk::Audiences::Types::CreateAudiencesRequestColumnMapping }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :file_id, -> { String }, optional: true, nullable: false

        field :filters, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :percentage, -> { Integer }, optional: true, nullable: false

        field :source_audience_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
