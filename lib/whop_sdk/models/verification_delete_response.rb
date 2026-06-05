# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#delete
    class VerificationDeleteResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The verification ID, e.g. idpf\_\*
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute kind
      #
      #   @return [Symbol, WhopSDK::Models::VerificationDeleteResponse::Kind]
      required :kind, enum: -> { WhopSDK::Models::VerificationDeleteResponse::Kind }

      # @!attribute rfis
      #
      #   @return [Array<WhopSDK::Models::VerificationDeleteResponse::Rfi>]
      required :rfis, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationDeleteResponse::Rfi] }

      # @!attribute status
      #
      #   @return [Symbol, WhopSDK::Models::VerificationDeleteResponse::Status]
      required :status, enum: -> { WhopSDK::Models::VerificationDeleteResponse::Status }

      # @!attribute updated_at
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute address
      #
      #   @return [Object, nil]
      optional :address, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute business_name
      #
      #   @return [String, nil]
      optional :business_name, String, nil?: true

      # @!attribute business_structure
      #
      #   @return [String, nil]
      optional :business_structure, String, nil?: true

      # @!attribute country
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute date_of_birth
      #
      #   @return [String, nil]
      optional :date_of_birth, String, nil?: true

      # @!attribute first_name
      #
      #   @return [String, nil]
      optional :first_name, String, nil?: true

      # @!attribute last_name
      #
      #   @return [String, nil]
      optional :last_name, String, nil?: true

      # @!attribute session_url
      #
      #   @return [String, nil]
      optional :session_url, String, nil?: true

      # @!method initialize(id:, created_at:, kind:, rfis:, status:, updated_at:, address: nil, business_name: nil, business_structure: nil, country: nil, date_of_birth: nil, first_name: nil, last_name: nil, session_url: nil)
      #   @param id [String] The verification ID, e.g. idpf\_\*
      #
      #   @param created_at [String]
      #
      #   @param kind [Symbol, WhopSDK::Models::VerificationDeleteResponse::Kind]
      #
      #   @param rfis [Array<WhopSDK::Models::VerificationDeleteResponse::Rfi>]
      #
      #   @param status [Symbol, WhopSDK::Models::VerificationDeleteResponse::Status]
      #
      #   @param updated_at [String]
      #
      #   @param address [Object, nil]
      #
      #   @param business_name [String, nil]
      #
      #   @param business_structure [String, nil]
      #
      #   @param country [String, nil]
      #
      #   @param date_of_birth [String, nil]
      #
      #   @param first_name [String, nil]
      #
      #   @param last_name [String, nil]
      #
      #   @param session_url [String, nil]

      # @see WhopSDK::Models::VerificationDeleteResponse#kind
      module Kind
        extend WhopSDK::Internal::Type::Enum

        INDIVIDUAL = :individual
        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Rfi < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String, nil?: true

        # @!attribute status
        #
        #   @return [Symbol, WhopSDK::Models::VerificationDeleteResponse::Rfi::Status, nil]
        optional :status, enum: -> { WhopSDK::Models::VerificationDeleteResponse::Rfi::Status }

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String, nil?: true

        # @!method initialize(id: nil, created_at: nil, description: nil, error_message: nil, status: nil, type: nil)
        #   @param id [String]
        #   @param created_at [String]
        #   @param description [String]
        #   @param error_message [String, nil]
        #   @param status [Symbol, WhopSDK::Models::VerificationDeleteResponse::Rfi::Status]
        #   @param type [String, nil]

        # @see WhopSDK::Models::VerificationDeleteResponse::Rfi#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          OUTSTANDING = :outstanding
          INVALID = :invalid

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::VerificationDeleteResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        NOT_STARTED = :not_started
        PENDING = :pending
        APPROVED = :approved
        REJECTED = :rejected
        ACTION_REQUIRED = :action_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
