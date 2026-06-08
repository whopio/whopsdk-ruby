# typed: strong

module WhopSDK
  module Models
    class VerificationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::VerificationCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The account ID to verify.
      sig { returns(String) }
      attr_accessor :account_id

      # Pre-fill address (line1, city, state, postal_code).
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :address

      sig { params(address: T::Hash[Symbol, T.anything]).void }
      attr_writer :address

      # Pre-fill the country.
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      # Pre-fill the date of birth.
      sig { returns(T.nilable(String)) }
      attr_reader :date_of_birth

      sig { params(date_of_birth: String).void }
      attr_writer :date_of_birth

      # Pre-fill the first name.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      # The verification type. Defaults to individual.
      sig do
        returns(T.nilable(WhopSDK::VerificationCreateParams::Kind::OrSymbol))
      end
      attr_reader :kind

      sig do
        params(kind: WhopSDK::VerificationCreateParams::Kind::OrSymbol).void
      end
      attr_writer :kind

      # Pre-fill the last name.
      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      # Pre-fill the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { params(phone: String).void }
      attr_writer :phone

      # Whether to restart an in-flight verification.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :restart

      sig { params(restart: T::Boolean).void }
      attr_writer :restart

      sig do
        params(
          account_id: String,
          address: T::Hash[Symbol, T.anything],
          country: String,
          date_of_birth: String,
          first_name: String,
          kind: WhopSDK::VerificationCreateParams::Kind::OrSymbol,
          last_name: String,
          phone: String,
          restart: T::Boolean,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account ID to verify.
        account_id:,
        # Pre-fill address (line1, city, state, postal_code).
        address: nil,
        # Pre-fill the country.
        country: nil,
        # Pre-fill the date of birth.
        date_of_birth: nil,
        # Pre-fill the first name.
        first_name: nil,
        # The verification type. Defaults to individual.
        kind: nil,
        # Pre-fill the last name.
        last_name: nil,
        # Pre-fill the phone number.
        phone: nil,
        # Whether to restart an in-flight verification.
        restart: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            address: T::Hash[Symbol, T.anything],
            country: String,
            date_of_birth: String,
            first_name: String,
            kind: WhopSDK::VerificationCreateParams::Kind::OrSymbol,
            last_name: String,
            phone: String,
            restart: T::Boolean,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The verification type. Defaults to individual.
      module Kind
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::VerificationCreateParams::Kind)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(
            :individual,
            WhopSDK::VerificationCreateParams::Kind::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            WhopSDK::VerificationCreateParams::Kind::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::VerificationCreateParams::Kind::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
