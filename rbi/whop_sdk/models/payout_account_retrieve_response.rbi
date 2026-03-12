# typed: strong

module WhopSDK
  module Models
    class PayoutAccountRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PayoutAccountRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the payout account.
      sig { returns(String) }
      attr_accessor :id

      # The physical address associated with this payout account
      sig do
        returns(
          T.nilable(WhopSDK::Models::PayoutAccountRetrieveResponse::Address)
        )
      end
      attr_reader :address

      sig do
        params(
          address:
            T.nilable(
              WhopSDK::Models::PayoutAccountRetrieveResponse::Address::OrHash
            )
        ).void
      end
      attr_writer :address

      # The company's legal name
      sig { returns(T.nilable(String)) }
      attr_accessor :business_name

      # The business representative for this payout account
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::PayoutAccountRetrieveResponse::BusinessRepresentative
          )
        )
      end
      attr_reader :business_representative

      sig do
        params(
          business_representative:
            T.nilable(
              WhopSDK::Models::PayoutAccountRetrieveResponse::BusinessRepresentative::OrHash
            )
        ).void
      end
      attr_writer :business_representative

      # The email address of the representative
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The latest verification for the connected account.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::PayoutAccountRetrieveResponse::LatestVerification
          )
        )
      end
      attr_reader :latest_verification

      sig do
        params(
          latest_verification:
            T.nilable(
              WhopSDK::Models::PayoutAccountRetrieveResponse::LatestVerification::OrHash
            )
        ).void
      end
      attr_writer :latest_verification

      # The business representative's phone
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # The granular calculated statuses reflecting payout account KYC and withdrawal
      # readiness.
      sig do
        returns(
          T.nilable(WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol)
        )
      end
      attr_accessor :status

      # An object representing an account used for payouts.
      sig do
        params(
          id: String,
          address:
            T.nilable(
              WhopSDK::Models::PayoutAccountRetrieveResponse::Address::OrHash
            ),
          business_name: T.nilable(String),
          business_representative:
            T.nilable(
              WhopSDK::Models::PayoutAccountRetrieveResponse::BusinessRepresentative::OrHash
            ),
          email: T.nilable(String),
          latest_verification:
            T.nilable(
              WhopSDK::Models::PayoutAccountRetrieveResponse::LatestVerification::OrHash
            ),
          phone: T.nilable(String),
          status: T.nilable(WhopSDK::PayoutAccountCalculatedStatuses::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the payout account.
        id:,
        # The physical address associated with this payout account
        address:,
        # The company's legal name
        business_name:,
        # The business representative for this payout account
        business_representative:,
        # The email address of the representative
        email:,
        # The latest verification for the connected account.
        latest_verification:,
        # The business representative's phone
        phone:,
        # The granular calculated statuses reflecting payout account KYC and withdrawal
        # readiness.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address:
              T.nilable(
                WhopSDK::Models::PayoutAccountRetrieveResponse::Address
              ),
            business_name: T.nilable(String),
            business_representative:
              T.nilable(
                WhopSDK::Models::PayoutAccountRetrieveResponse::BusinessRepresentative
              ),
            email: T.nilable(String),
            latest_verification:
              T.nilable(
                WhopSDK::Models::PayoutAccountRetrieveResponse::LatestVerification
              ),
            phone: T.nilable(String),
            status:
              T.nilable(WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      class Address < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PayoutAccountRetrieveResponse::Address,
              WhopSDK::Internal::AnyHash
            )
          end

        # The city of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # The country of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # The line 1 of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # The line 2 of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # The state of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # The physical address associated with this payout account
        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The city of the address.
          city:,
          # The country of the address.
          country:,
          # The line 1 of the address.
          line1:,
          # The line 2 of the address.
          line2:,
          # The postal code of the address.
          postal_code:,
          # The state of the address.
          state:
        )
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class BusinessRepresentative < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PayoutAccountRetrieveResponse::BusinessRepresentative,
              WhopSDK::Internal::AnyHash
            )
          end

        # The date of birth of the business representative in ISO 8601 format
        # (YYYY-MM-DD).
        sig { returns(T.nilable(String)) }
        attr_accessor :date_of_birth

        # The first name of the business representative.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # The last name of the business representative.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The middle name of the business representative.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        # The business representative for this payout account
        sig do
          params(
            date_of_birth: T.nilable(String),
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            middle_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The date of birth of the business representative in ISO 8601 format
          # (YYYY-MM-DD).
          date_of_birth:,
          # The first name of the business representative.
          first_name:,
          # The last name of the business representative.
          last_name:,
          # The middle name of the business representative.
          middle_name:
        )
        end

        sig do
          override.returns(
            {
              date_of_birth: T.nilable(String),
              first_name: T.nilable(String),
              last_name: T.nilable(String),
              middle_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class LatestVerification < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PayoutAccountRetrieveResponse::LatestVerification,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the verification.
        sig { returns(String) }
        attr_accessor :id

        # An error code for a verification attempt.
        sig { returns(T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol)) }
        attr_accessor :last_error_code

        # A human-readable explanation of the most recent verification error. Null if no
        # error has occurred.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_error_reason

        # The current status of this verification session.
        sig { returns(WhopSDK::VerificationStatus::TaggedSymbol) }
        attr_accessor :status

        # The latest verification for the connected account.
        sig do
          params(
            id: String,
            last_error_code:
              T.nilable(WhopSDK::VerificationErrorCode::OrSymbol),
            last_error_reason: T.nilable(String),
            status: WhopSDK::VerificationStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the verification.
          id:,
          # An error code for a verification attempt.
          last_error_code:,
          # A human-readable explanation of the most recent verification error. Null if no
          # error has occurred.
          last_error_reason:,
          # The current status of this verification session.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              last_error_code:
                T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol),
              last_error_reason: T.nilable(String),
              status: WhopSDK::VerificationStatus::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
