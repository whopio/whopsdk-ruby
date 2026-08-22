# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class RequestInfoResolutionCenterCasesRequestAttachmentsItem < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
