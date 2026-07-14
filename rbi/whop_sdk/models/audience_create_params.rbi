# typed: strong

module WhopSDK
  module Models
    class AudienceCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AudienceCreateParams, WhopSDK::Internal::AnyHash)
        end

      # Account ID, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :account_id

      # Maps supported identity fields to CSV column headers. Map at least one of
      # `email` or `phone`.
      sig { returns(WhopSDK::AudienceCreateParams::ColumnMapping) }
      attr_reader :column_mapping

      sig do
        params(
          column_mapping: WhopSDK::AudienceCreateParams::ColumnMapping::OrHash
        ).void
      end
      attr_writer :column_mapping

      # Direct upload ID from the standard media upload endpoint.
      sig { returns(String) }
      attr_accessor :file_id

      # Audience display name.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          account_id: String,
          column_mapping: WhopSDK::AudienceCreateParams::ColumnMapping::OrHash,
          file_id: String,
          name: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account ID, prefixed `biz_`.
        account_id:,
        # Maps supported identity fields to CSV column headers. Map at least one of
        # `email` or `phone`.
        column_mapping:,
        # Direct upload ID from the standard media upload endpoint.
        file_id:,
        # Audience display name.
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            column_mapping: WhopSDK::AudienceCreateParams::ColumnMapping,
            file_id: String,
            name: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ColumnMapping < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AudienceCreateParams::ColumnMapping,
              WhopSDK::Internal::AnyHash
            )
          end

        # CSV header for ISO 3166-1 alpha-2 country codes, such as `US`.
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # CSV header for email addresses.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # CSV header for first names.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # CSV header for last names.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # CSV header for phone numbers.
        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        # Maps supported identity fields to CSV column headers. Map at least one of
        # `email` or `phone`.
        sig do
          params(
            country: String,
            email: String,
            first_name: String,
            last_name: String,
            phone: String
          ).returns(T.attached_class)
        end
        def self.new(
          # CSV header for ISO 3166-1 alpha-2 country codes, such as `US`.
          country: nil,
          # CSV header for email addresses.
          email: nil,
          # CSV header for first names.
          first_name: nil,
          # CSV header for last names.
          last_name: nil,
          # CSV header for phone numbers.
          phone: nil
        )
        end

        sig do
          override.returns(
            {
              country: String,
              email: String,
              first_name: String,
              last_name: String,
              phone: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
