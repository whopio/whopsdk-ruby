# frozen_string_literal: true

module Whop_sdk
  module Types
    # Evidence of customer communication or product usage, uploaded as a dispute attachment. Null if not provided.
    class DisputeLegacyCustomerCommunicationAttachment < Internal::Types::Model
      field :content_type, -> { String }, optional: false, nullable: true

      field :filename, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
