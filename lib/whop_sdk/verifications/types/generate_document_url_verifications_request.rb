# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class GenerateDocumentURLVerificationsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :document, -> { Whop_sdk::Verifications::Types::GenerateDocumentURLVerificationsRequestDocument }, optional: false, nullable: false
      end
    end
  end
end
