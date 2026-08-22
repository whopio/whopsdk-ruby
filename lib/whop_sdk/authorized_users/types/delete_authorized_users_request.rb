# frozen_string_literal: true

module Whop_sdk
  module AuthorizedUsers
    module Types
      class DeleteAuthorizedUsersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :company_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
