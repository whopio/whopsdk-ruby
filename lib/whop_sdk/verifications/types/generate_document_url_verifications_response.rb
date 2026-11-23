# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class GenerateDocumentURLVerificationsResponse < Internal::Types::Model
        field :document, -> { Whop_sdk::Verifications::Types::GenerateDocumentURLVerificationsResponseDocument }, optional: false, nullable: false

        field :expires_at, -> { String }, optional: false, nullable: false

        field :url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
