# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#create
    class VerificationCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The identity profile ID, e.g. idpf\_\*
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute kind
      #
      #   @return [Symbol, WhopSDK::Models::VerificationCreateResponse::Kind]
      required :kind, enum: -> { WhopSDK::Models::VerificationCreateResponse::Kind }

      # @!attribute session_url
      #
      #   @return [String, nil]
      required :session_url, String, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, WhopSDK::Models::VerificationCreateResponse::Status]
      required :status, enum: -> { WhopSDK::Models::VerificationCreateResponse::Status }

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

      # @!attribute rfis
      #
      #   @return [Array<WhopSDK::Models::VerificationCreateResponse::Rfi>, nil]
      optional :rfis, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationCreateResponse::Rfi] }

      # @!method initialize(id:, created_at:, kind:, session_url:, status:, updated_at:, address: nil, business_name: nil, business_structure: nil, country: nil, date_of_birth: nil, first_name: nil, last_name: nil, rfis: nil)
      #   @param id [String] The identity profile ID, e.g. idpf\_\*
      #
      #   @param created_at [String]
      #
      #   @param kind [Symbol, WhopSDK::Models::VerificationCreateResponse::Kind]
      #
      #   @param session_url [String, nil]
      #
      #   @param status [Symbol, WhopSDK::Models::VerificationCreateResponse::Status]
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
      #   @param rfis [Array<WhopSDK::Models::VerificationCreateResponse::Rfi>]

      # @see WhopSDK::Models::VerificationCreateResponse#kind
      module Kind
        extend WhopSDK::Internal::Type::Enum

        INDIVIDUAL = :individual
        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::VerificationCreateResponse#status
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
        #   @return [Symbol, WhopSDK::Models::VerificationCreateResponse::Rfi::Status, nil]
        optional :status, enum: -> { WhopSDK::Models::VerificationCreateResponse::Rfi::Status }

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String, nil?: true

        # @!method initialize(id: nil, created_at: nil, description: nil, error_message: nil, status: nil, type: nil)
        #   @param id [String]
        #   @param created_at [String]
        #   @param description [String]
        #   @param error_message [String, nil]
        #   @param status [Symbol, WhopSDK::Models::VerificationCreateResponse::Rfi::Status]
        #   @param type [String, nil]

        # @see WhopSDK::Models::VerificationCreateResponse::Rfi#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          OUTSTANDING = :outstanding
          INVALID = :invalid

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
