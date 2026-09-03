# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company for the member.
    class MemberLegacyCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
