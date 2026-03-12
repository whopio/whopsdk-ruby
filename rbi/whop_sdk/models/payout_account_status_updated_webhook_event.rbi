# typed: strong

module WhopSDK
  module Models
    class PayoutAccountStatusUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::PayoutAccountStatusUpdatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # An object representing an account used for payouts.
      sig { returns(WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The company ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      sig do
        params(
          id: String,
          data: WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # An object representing an account used for payouts.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"payout_account.status_updated"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            company_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payout account.
        sig { returns(String) }
        attr_accessor :id

        # The physical address associated with this payout account
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address
            )
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address::OrHash
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
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative
            )
          )
        end
        attr_reader :business_representative

        sig do
          params(
            business_representative:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative::OrHash
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
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification
            )
          )
        end
        attr_reader :latest_verification

        sig do
          params(
            latest_verification:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::OrHash
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
            T.nilable(
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          )
        end
        attr_accessor :status

        # An object representing an account used for payouts.
        sig do
          params(
            id: String,
            address:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address::OrHash
              ),
            business_name: T.nilable(String),
            business_representative:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative::OrHash
              ),
            email: T.nilable(String),
            latest_verification:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification::OrHash
              ),
            phone: T.nilable(String),
            status:
              T.nilable(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::OrSymbol
              )
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
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address
                ),
              business_name: T.nilable(String),
              business_representative:
                T.nilable(
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative
                ),
              email: T.nilable(String),
              latest_verification:
                T.nilable(
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification
                ),
              phone: T.nilable(String),
              status:
                T.nilable(
                  WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        class Address < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Address,
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
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::BusinessRepresentative,
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
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::LatestVerification,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the verification.
          sig { returns(String) }
          attr_accessor :id

          # An error code for a verification attempt.
          sig do
            returns(T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol))
          end
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

        # The granular calculated statuses reflecting payout account KYC and withdrawal
        # readiness.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONNECTED =
            T.let(
              :connected,
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          ACTION_REQUIRED =
            T.let(
              :action_required,
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          PENDING_VERIFICATION =
            T.let(
              :pending_verification,
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          VERIFICATION_FAILED =
            T.let(
              :verification_failed,
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          NOT_STARTED =
            T.let(
              :not_started,
              WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutAccountStatusUpdatedWebhookEvent::Data::Status::TaggedSymbol
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
