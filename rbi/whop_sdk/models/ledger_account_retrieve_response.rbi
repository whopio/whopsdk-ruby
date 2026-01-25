# typed: strong

module WhopSDK
  module Models
    class LedgerAccountRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::LedgerAccountRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the LedgerAccount.
      sig { returns(String) }
      attr_accessor :id

      # The balances associated with the account.
      sig do
        returns(
          T::Array[WhopSDK::Models::LedgerAccountRetrieveResponse::Balance]
        )
      end
      attr_accessor :balances

      # The type of ledger account.
      sig do
        returns(
          WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
        )
      end
      attr_accessor :ledger_type

      # The owner of the ledger account.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Variants
          )
        )
      end
      attr_accessor :owner

      # The different approval statuses an account can have.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        )
      end
      attr_accessor :payments_approval_status

      # The payout account associated with the LedgerAccount, if any.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails
          )
        )
      end
      attr_reader :payout_account_details

      sig do
        params(
          payout_account_details:
            T.nilable(
              WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::OrHash
            )
        ).void
      end
      attr_writer :payout_account_details

      # The fee for transfers, if applicable.
      sig { returns(T.nilable(Float)) }
      attr_accessor :transfer_fee

      # Represents a LedgerAccount.
      sig do
        params(
          id: String,
          balances:
            T::Array[
              WhopSDK::Models::LedgerAccountRetrieveResponse::Balance::OrHash
            ],
          ledger_type:
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::OrSymbol,
          owner:
            T.nilable(
              T.any(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User::OrHash,
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company::OrHash
              )
            ),
          payments_approval_status:
            T.nilable(
              WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::OrSymbol
            ),
          payout_account_details:
            T.nilable(
              WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::OrHash
            ),
          transfer_fee: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the LedgerAccount.
        id:,
        # The balances associated with the account.
        balances:,
        # The type of ledger account.
        ledger_type:,
        # The owner of the ledger account.
        owner:,
        # The different approval statuses an account can have.
        payments_approval_status:,
        # The payout account associated with the LedgerAccount, if any.
        payout_account_details:,
        # The fee for transfers, if applicable.
        transfer_fee:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balances:
              T::Array[WhopSDK::Models::LedgerAccountRetrieveResponse::Balance],
            ledger_type:
              WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol,
            owner:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Variants
              ),
            payments_approval_status:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
              ),
            payout_account_details:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails
              ),
            transfer_fee: T.nilable(Float)
          }
        )
      end
      def to_hash
      end

      class Balance < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::LedgerAccountRetrieveResponse::Balance,
              WhopSDK::Internal::AnyHash
            )
          end

        # The amount of the balance.
        sig { returns(Float) }
        attr_accessor :balance

        # The currency of the balance.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The amount of the balance that is pending.
        sig { returns(Float) }
        attr_accessor :pending_balance

        # The amount of the balance that is reserved.
        sig { returns(Float) }
        attr_accessor :reserve_balance

        # A cached balance for a LedgerAccount in respect to a currency.
        sig do
          params(
            balance: Float,
            currency: WhopSDK::Currency::OrSymbol,
            pending_balance: Float,
            reserve_balance: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount of the balance.
          balance:,
          # The currency of the balance.
          currency:,
          # The amount of the balance that is pending.
          pending_balance:,
          # The amount of the balance that is reserved.
          reserve_balance:
        )
        end

        sig do
          override.returns(
            {
              balance: Float,
              currency: WhopSDK::Currency::TaggedSymbol,
              pending_balance: Float,
              reserve_balance: Float
            }
          )
        end
        def to_hash
        end
      end

      # The type of ledger account.
      module LedgerType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIMARY =
          T.let(
            :primary,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
          )
        POOL =
          T.let(
            :pool,
            WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The owner of the ledger account.
      module Owner
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.nilable(
              T.any(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User,
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company
              )
            )
          end

        class User < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::User,
                WhopSDK::Internal::AnyHash
              )
            end

          # The internal ID of the user.
          sig { returns(String) }
          attr_accessor :id

          # The name of the user from their Whop account.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # The username of the user from their Whop account.
          sig { returns(String) }
          attr_accessor :username

          # An object representing a (sanitized) user of the site.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              username: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The internal ID of the user.
            id:,
            # The name of the user from their Whop account.
            name:,
            # The username of the user from their Whop account.
            username:,
            # The typename of this object
            typename: :User
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                typename: Symbol,
                username: String
              }
            )
          end
          def to_hash
          end
        end

        class Company < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Company,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID (tag) of the company.
          sig { returns(String) }
          attr_accessor :id

          # The slug/route of the company on the Whop site.
          sig { returns(String) }
          attr_accessor :route

          # The title of the company.
          sig { returns(String) }
          attr_accessor :title

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # An object representing a (sanitized) company.
          sig do
            params(
              id: String,
              route: String,
              title: String,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID (tag) of the company.
            id:,
            # The slug/route of the company on the Whop site.
            route:,
            # The title of the company.
            title:,
            # The typename of this object
            typename: :Company
          )
          end

          sig do
            override.returns(
              { id: String, route: String, title: String, typename: Symbol }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::LedgerAccountRetrieveResponse::Owner::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # The different approval statuses an account can have.
      module PaymentsApprovalStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        MONITORING =
          T.let(
            :monitoring,
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class PayoutAccountDetails < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails,
              WhopSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the object
        sig { returns(String) }
        attr_accessor :id

        # The physical address associated with this payout account
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::Address
            )
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::Address::OrHash
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
              WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::BusinessRepresentative
            )
          )
        end
        attr_reader :business_representative

        sig do
          params(
            business_representative:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::BusinessRepresentative::OrHash
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
              WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification
            )
          )
        end
        attr_reader :latest_verification

        sig do
          params(
            latest_verification:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::OrHash
              )
          ).void
        end
        attr_writer :latest_verification

        # The business representative's phone
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # The payout account associated with the LedgerAccount, if any.
        sig do
          params(
            id: String,
            address:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::Address::OrHash
              ),
            business_name: T.nilable(String),
            business_representative:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::BusinessRepresentative::OrHash
              ),
            email: T.nilable(String),
            latest_verification:
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::OrHash
              ),
            phone: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the object
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
          phone:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              address:
                T.nilable(
                  WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::Address
                ),
              business_name: T.nilable(String),
              business_representative:
                T.nilable(
                  WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::BusinessRepresentative
                ),
              email: T.nilable(String),
              latest_verification:
                T.nilable(
                  WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification
                ),
              phone: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Address < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::Address,
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
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::BusinessRepresentative,
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
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification,
                WhopSDK::Internal::AnyHash
              )
            end

          # A unique identifier for the verification.
          sig { returns(String) }
          attr_accessor :id

          # An error code for a verification attempt.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            )
          end
          attr_accessor :last_error_code

          # The last error reason that occurred during the verification.
          sig { returns(T.nilable(String)) }
          attr_accessor :last_error_reason

          # The status of the verification.
          sig do
            returns(
              WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The latest verification for the connected account.
          sig do
            params(
              id: String,
              last_error_code:
                T.nilable(
                  WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::OrSymbol
                ),
              last_error_reason: T.nilable(String),
              status:
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # A unique identifier for the verification.
            id:,
            # An error code for a verification attempt.
            last_error_code:,
            # The last error reason that occurred during the verification.
            last_error_reason:,
            # The status of the verification.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                last_error_code:
                  T.nilable(
                    WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
                  ),
                last_error_reason: T.nilable(String),
                status:
                  WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # An error code for a verification attempt.
          module LastErrorCode
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ABANDONED =
              T.let(
                :abandoned,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            CONSENT_DECLINED =
              T.let(
                :consent_declined,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            COUNTRY_NOT_SUPPORTED =
              T.let(
                :country_not_supported,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            DEVICE_NOT_SUPPORTED =
              T.let(
                :device_not_supported,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            DOCUMENT_EXPIRED =
              T.let(
                :document_expired,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            DOCUMENT_TYPE_NOT_SUPPORTED =
              T.let(
                :document_type_not_supported,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            DOCUMENT_UNVERIFIED_OTHER =
              T.let(
                :document_unverified_other,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            EMAIL_UNVERIFIED_OTHER =
              T.let(
                :email_unverified_other,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            EMAIL_VERIFICATION_DECLINED =
              T.let(
                :email_verification_declined,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            ID_NUMBER_INSUFFICIENT_DOCUMENT_DATA =
              T.let(
                :id_number_insufficient_document_data,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            ID_NUMBER_MISMATCH =
              T.let(
                :id_number_mismatch,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            ID_NUMBER_UNVERIFIED_OTHER =
              T.let(
                :id_number_unverified_other,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            PHONE_UNVERIFIED_OTHER =
              T.let(
                :phone_unverified_other,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            PHONE_VERIFICATION_DECLINED =
              T.let(
                :phone_verification_declined,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            SELFIE_DOCUMENT_MISSING_PHOTO =
              T.let(
                :selfie_document_missing_photo,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            SELFIE_FACE_MISMATCH =
              T.let(
                :selfie_face_mismatch,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            SELFIE_MANIPULATED =
              T.let(
                :selfie_manipulated,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            SELFIE_UNVERIFIED_OTHER =
              T.let(
                :selfie_unverified_other,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )
            UNDER_SUPPORTED_AGE =
              T.let(
                :under_supported_age,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::LastErrorCode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The status of the verification.
          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REQUIRES_INPUT =
              T.let(
                :requires_input,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            CREATED =
              T.let(
                :created,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            STARTED =
              T.let(
                :started,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            SUBMITTED =
              T.let(
                :submitted,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            APPROVED =
              T.let(
                :approved,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            DECLINED =
              T.let(
                :declined,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            RESUBMISSION_REQUESTED =
              T.let(
                :resubmission_requested,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            ABANDONED =
              T.let(
                :abandoned,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )
            REVIEW =
              T.let(
                :review,
                WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::LedgerAccountRetrieveResponse::PayoutAccountDetails::LatestVerification::Status::TaggedSymbol
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
end
