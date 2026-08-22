# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    module Types
      # The submitted work. Combine `urls`, `file_ids`, and `caption` freely; at least one link or file is required.
      class CreateBountySubmissionsRequestDeliverable < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :file_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :type, -> { Whop_sdk::BountySubmissions::Types::CreateBountySubmissionsRequestDeliverableType }, optional: true, nullable: false

        field :urls, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
