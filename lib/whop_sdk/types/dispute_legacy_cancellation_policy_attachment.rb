# frozen_string_literal: true

module Whop_sdk
  module Types
    # The cancellation policy document uploaded as dispute evidence. Null if no cancellation policy has been provided.
    class DisputeLegacyCancellationPolicyAttachment < Internal::Types::Model
      field :content_type, -> { String }, optional: false, nullable: true

      field :filename, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
