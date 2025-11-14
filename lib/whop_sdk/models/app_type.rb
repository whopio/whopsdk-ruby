# frozen_string_literal: true

module WhopSDK
  module Models
    # The type of end-user an app is built for
    module AppType
      extend WhopSDK::Internal::Type::Enum

      B2B_APP = :b2b_app
      B2C_APP = :b2c_app
      COMPANY_APP = :company_app
      COMPONENT = :component

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
