# frozen_string_literal: true

module WhopSDK
  module Resources
    # Verifications
    class Verifications
      # Creates or resumes a verification session for an account.
      #
      # @overload create(account_id:, address: nil, country: nil, date_of_birth: nil, first_name: nil, kind: nil, last_name: nil, phone: nil, restart: nil, request_options: {})
      #
      # @param account_id [String] The account ID to verify.
      #
      # @param address [Hash{Symbol=>Object}] Pre-fill address (line1, city, state, postal_code).
      #
      # @param country [String] Pre-fill the country.
      #
      # @param date_of_birth [String] Pre-fill the date of birth.
      #
      # @param first_name [String] Pre-fill the first name.
      #
      # @param kind [Symbol, WhopSDK::Models::VerificationCreateParams::Kind] The verification type. Defaults to individual.
      #
      # @param last_name [String] Pre-fill the last name.
      #
      # @param phone [String] Pre-fill the phone number.
      #
      # @param restart [Boolean] Whether to restart an in-flight verification.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationCreateResponse]
      #
      # @see WhopSDK::Models::VerificationCreateParams
      def create(params)
        parsed, options = WhopSDK::VerificationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "verifications",
          body: parsed,
          model: WhopSDK::Models::VerificationCreateResponse,
          options: options
        )
      end

      # Retrieves a single identity verification profile by ID, including verification
      # sessions and outstanding RFIs.
      #
      # @overload retrieve(verification_id, request_options: {})
      #
      # @param verification_id [String] The ID of the verification, which will look like idpf\_******\*******
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationRetrieveResponse]
      #
      # @see WhopSDK::Models::VerificationRetrieveParams
      def retrieve(verification_id, params = {})
        @client.request(
          method: :get,
          path: ["verifications/%1$s", verification_id],
          model: WhopSDK::Models::VerificationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::VerificationUpdateParams} for more details.
      #
      # Updates fields on an identity verification profile, or responds to outstanding
      # RFIs.
      #
      # @overload update(verification_id, business_address: nil, business_name: nil, business_structure: nil, country: nil, date_of_birth: nil, first_name: nil, last_name: nil, personal_address: nil, rfis: nil, request_options: {})
      #
      # @param verification_id [String] The ID of the verification, which will look like idpf\_******\*******
      #
      # @param business_address [Hash{Symbol=>Object}] The business address.
      #
      # @param business_name [String] The business name.
      #
      # @param business_structure [String] The business structure.
      #
      # @param country [String] The country code.
      #
      # @param date_of_birth [String] The date of birth.
      #
      # @param first_name [String] The first name on the verification.
      #
      # @param last_name [String] The last name on the verification.
      #
      # @param personal_address [Hash{Symbol=>Object}] The personal address.
      #
      # @param rfis [Array<WhopSDK::Models::VerificationUpdateParams::Rfi>] RFI responses. Each entry must include id and a value, address, or files payload
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationUpdateResponse]
      #
      # @see WhopSDK::Models::VerificationUpdateParams
      def update(verification_id, params = {})
        parsed, options = WhopSDK::VerificationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["verifications/%1$s", verification_id],
          body: parsed,
          model: WhopSDK::Models::VerificationUpdateResponse,
          options: options
        )
      end

      # Soft-deletes an identity verification profile and unlinks it from all accounts.
      #
      # @overload delete(verification_id, request_options: {})
      #
      # @param verification_id [String] The ID of the verification, which will look like idpf\_******\*******
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationDeleteResponse]
      #
      # @see WhopSDK::Models::VerificationDeleteParams
      def delete(verification_id, params = {})
        @client.request(
          method: :delete,
          path: ["verifications/%1$s", verification_id],
          model: WhopSDK::Models::VerificationDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
