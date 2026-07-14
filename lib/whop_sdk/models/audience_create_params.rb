# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Audiences#create
    class AudienceCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Account ID, prefixed `biz_`.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute column_mapping
      #   Maps supported identity fields to CSV column headers. Map at least one of
      #   `email` or `phone`.
      #
      #   @return [WhopSDK::Models::AudienceCreateParams::ColumnMapping]
      required :column_mapping, -> { WhopSDK::AudienceCreateParams::ColumnMapping }

      # @!attribute file_id
      #   Direct upload ID from the standard media upload endpoint.
      #
      #   @return [String]
      required :file_id, String

      # @!attribute name
      #   Audience display name.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(account_id:, column_mapping:, file_id:, name:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AudienceCreateParams} for more details.
      #
      #   @param account_id [String] Account ID, prefixed `biz_`.
      #
      #   @param column_mapping [WhopSDK::Models::AudienceCreateParams::ColumnMapping] Maps supported identity fields to CSV column headers. Map at least one of `email
      #
      #   @param file_id [String] Direct upload ID from the standard media upload endpoint.
      #
      #   @param name [String] Audience display name.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class ColumnMapping < WhopSDK::Internal::Type::BaseModel
        # @!attribute country
        #   CSV header for ISO 3166-1 alpha-2 country codes, such as `US`.
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute email
        #   CSV header for email addresses.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #   CSV header for first names.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute last_name
        #   CSV header for last names.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute phone
        #   CSV header for phone numbers.
        #
        #   @return [String, nil]
        optional :phone, String

        # @!method initialize(country: nil, email: nil, first_name: nil, last_name: nil, phone: nil)
        #   Maps supported identity fields to CSV column headers. Map at least one of
        #   `email` or `phone`.
        #
        #   @param country [String] CSV header for ISO 3166-1 alpha-2 country codes, such as `US`.
        #
        #   @param email [String] CSV header for email addresses.
        #
        #   @param first_name [String] CSV header for first names.
        #
        #   @param last_name [String] CSV header for last names.
        #
        #   @param phone [String] CSV header for phone numbers.
      end
    end
  end
end
