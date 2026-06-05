# typed: strong

module WhopSDK
  module Models
    class VerificationUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::VerificationUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :verification_id

      # The business address.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :business_address

      sig { params(business_address: T::Hash[Symbol, T.anything]).void }
      attr_writer :business_address

      # The business name.
      sig { returns(T.nilable(String)) }
      attr_reader :business_name

      sig { params(business_name: String).void }
      attr_writer :business_name

      # The business structure.
      sig { returns(T.nilable(String)) }
      attr_reader :business_structure

      sig { params(business_structure: String).void }
      attr_writer :business_structure

      # The country code.
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      # The date of birth.
      sig { returns(T.nilable(String)) }
      attr_reader :date_of_birth

      sig { params(date_of_birth: String).void }
      attr_writer :date_of_birth

      # The first name on the verification.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      # The last name on the verification.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      # The personal address.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :personal_address

      sig { params(personal_address: T::Hash[Symbol, T.anything]).void }
      attr_writer :personal_address

      # RFI responses. Each entry must include id and a value, address, or files
      # payload.
      sig do
        returns(T.nilable(T::Array[WhopSDK::VerificationUpdateParams::Rfi]))
      end
      attr_reader :rfis

      sig do
        params(
          rfis: T::Array[WhopSDK::VerificationUpdateParams::Rfi::OrHash]
        ).void
      end
      attr_writer :rfis

      sig do
        params(
          verification_id: String,
          business_address: T::Hash[Symbol, T.anything],
          business_name: String,
          business_structure: String,
          country: String,
          date_of_birth: String,
          first_name: String,
          last_name: String,
          personal_address: T::Hash[Symbol, T.anything],
          rfis: T::Array[WhopSDK::VerificationUpdateParams::Rfi::OrHash],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        verification_id:,
        # The business address.
        business_address: nil,
        # The business name.
        business_name: nil,
        # The business structure.
        business_structure: nil,
        # The country code.
        country: nil,
        # The date of birth.
        date_of_birth: nil,
        # The first name on the verification.
        first_name: nil,
        # The last name on the verification.
        last_name: nil,
        # The personal address.
        personal_address: nil,
        # RFI responses. Each entry must include id and a value, address, or files
        # payload.
        rfis: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            verification_id: String,
            business_address: T::Hash[Symbol, T.anything],
            business_name: String,
            business_structure: String,
            country: String,
            date_of_birth: String,
            first_name: String,
            last_name: String,
            personal_address: T::Hash[Symbol, T.anything],
            rfis: T::Array[WhopSDK::VerificationUpdateParams::Rfi],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Rfi < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::VerificationUpdateParams::Rfi,
              WhopSDK::Internal::AnyHash
            )
          end

        # The RFI tag (paa\_\*).
        sig { returns(String) }
        attr_accessor :id

        # Address payload for address RFIs.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :address

        sig { params(address: T::Hash[Symbol, T.anything]).void }
        attr_writer :address

        # File upload payload for document RFIs.
        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :files

        sig { params(files: T::Array[T.anything]).void }
        attr_writer :files

        # The value for text/date/phone RFIs.
        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        # Defaults to raw.
        sig do
          returns(
            T.nilable(
              WhopSDK::VerificationUpdateParams::Rfi::ValueType::OrSymbol
            )
          )
        end
        attr_reader :value_type

        sig do
          params(
            value_type:
              WhopSDK::VerificationUpdateParams::Rfi::ValueType::OrSymbol
          ).void
        end
        attr_writer :value_type

        sig do
          params(
            id: String,
            address: T::Hash[Symbol, T.anything],
            files: T::Array[T.anything],
            value: String,
            value_type:
              WhopSDK::VerificationUpdateParams::Rfi::ValueType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The RFI tag (paa\_\*).
          id:,
          # Address payload for address RFIs.
          address: nil,
          # File upload payload for document RFIs.
          files: nil,
          # The value for text/date/phone RFIs.
          value: nil,
          # Defaults to raw.
          value_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              address: T::Hash[Symbol, T.anything],
              files: T::Array[T.anything],
              value: String,
              value_type:
                WhopSDK::VerificationUpdateParams::Rfi::ValueType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Defaults to raw.
        module ValueType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::VerificationUpdateParams::Rfi::ValueType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RAW =
            T.let(
              :raw,
              WhopSDK::VerificationUpdateParams::Rfi::ValueType::TaggedSymbol
            )
          VAULT_TOKEN =
            T.let(
              :vault_token,
              WhopSDK::VerificationUpdateParams::Rfi::ValueType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::VerificationUpdateParams::Rfi::ValueType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
