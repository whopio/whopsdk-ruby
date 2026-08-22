# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class CreateVerificationsRequestBody < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :kind

        member -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyIndividual }, key: "INDIVIDUAL"

        member -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyBusiness }, key: "BUSINESS"
      end
    end
  end
end
