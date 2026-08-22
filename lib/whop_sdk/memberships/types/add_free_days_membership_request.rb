# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class AddFreeDaysMembershipRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :free_days, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
