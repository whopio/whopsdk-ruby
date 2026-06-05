# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#list
    class VerificationListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Filter verifications to a specific account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute page
      #   The page number to retrieve.
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute per
      #   The number of resources to return per page.
      #
      #   @return [Integer, nil]
      optional :per, Integer

      # @!attribute profile_type
      #   Filter by profile type.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationListParams::ProfileType, nil]
      optional :profile_type, enum: -> { WhopSDK::VerificationListParams::ProfileType }

      # @!attribute status
      #   Filter by derived verification status.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::VerificationListParams::Status }

      # @!method initialize(account_id: nil, page: nil, per: nil, profile_type: nil, status: nil, request_options: {})
      #   @param account_id [String] Filter verifications to a specific account.
      #
      #   @param page [Integer] The page number to retrieve.
      #
      #   @param per [Integer] The number of resources to return per page.
      #
      #   @param profile_type [Symbol, WhopSDK::Models::VerificationListParams::ProfileType] Filter by profile type.
      #
      #   @param status [Symbol, WhopSDK::Models::VerificationListParams::Status] Filter by derived verification status.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Filter by profile type.
      module ProfileType
        extend WhopSDK::Internal::Type::Enum

        INDIVIDUAL = :individual
        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by derived verification status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        NOT_STARTED = :not_started
        PENDING = :pending
        APPROVED = :approved
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
