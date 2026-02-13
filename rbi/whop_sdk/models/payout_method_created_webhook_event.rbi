# typed: strong

module WhopSDK
  module Models
    class PayoutMethodCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::PayoutMethodCreatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # A configured payout destination where a user receives earned funds, such as a
      # bank account or digital wallet.
      sig { returns(WhopSDK::PayoutMethodCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::PayoutMethodCreatedWebhookEvent::Data::OrHash
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
          data: WhopSDK::PayoutMethodCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # A configured payout destination where a user receives earned funds, such as a
        # bank account or digital wallet.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"payout_method.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::PayoutMethodCreatedWebhookEvent::Data,
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
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payout token.
        sig { returns(String) }
        attr_accessor :id

        # A masked identifier for the payout destination, such as the last four digits of
        # a bank account or an email address. Null if no reference is available.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_reference

        # The company associated with this payout destination. Null if not linked to a
        # specific company.
        sig do
          returns(
            T.nilable(WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Company)
          )
        end
        attr_reader :company

        sig do
          params(
            company:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Company::OrHash
              )
          ).void
        end
        attr_writer :company

        # The datetime the payout token was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The three-letter ISO currency code that payouts are delivered in for this
        # destination.
        sig { returns(String) }
        attr_accessor :currency

        # The payout destination configuration linked to this token. Null if not yet
        # configured.
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination
            )
          )
        end
        attr_reader :destination

        sig do
          params(
            destination:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::OrHash
              )
          ).void
        end
        attr_writer :destination

        # The name of the bank or financial institution receiving payouts. Null if not
        # applicable or not provided.
        sig { returns(T.nilable(String)) }
        attr_accessor :institution_name

        # Whether this is the default payout destination for the associated payout
        # account.
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # A user-defined label to help identify this payout destination. Not sent to the
        # provider. Null if no nickname has been set.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname

        # A configured payout destination where a user receives earned funds, such as a
        # bank account or digital wallet.
        sig do
          params(
            id: String,
            account_reference: T.nilable(String),
            company:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Company::OrHash
              ),
            created_at: Time,
            currency: String,
            destination:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::OrHash
              ),
            institution_name: T.nilable(String),
            is_default: T::Boolean,
            nickname: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the payout token.
          id:,
          # A masked identifier for the payout destination, such as the last four digits of
          # a bank account or an email address. Null if no reference is available.
          account_reference:,
          # The company associated with this payout destination. Null if not linked to a
          # specific company.
          company:,
          # The datetime the payout token was created.
          created_at:,
          # The three-letter ISO currency code that payouts are delivered in for this
          # destination.
          currency:,
          # The payout destination configuration linked to this token. Null if not yet
          # configured.
          destination:,
          # The name of the bank or financial institution receiving payouts. Null if not
          # applicable or not provided.
          institution_name:,
          # Whether this is the default payout destination for the associated payout
          # account.
          is_default:,
          # A user-defined label to help identify this payout destination. Not sent to the
          # provider. Null if no nickname has been set.
          nickname:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account_reference: T.nilable(String),
              company:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Company
                ),
              created_at: Time,
              currency: String,
              destination:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination
                ),
              institution_name: T.nilable(String),
              is_default: T::Boolean,
              nickname: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Company < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Company,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the company.
          sig { returns(String) }
          attr_accessor :id

          # The company associated with this payout destination. Null if not linked to a
          # specific company.
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The unique identifier for the company.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class Destination < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination,
                WhopSDK::Internal::AnyHash
              )
            end

          # The category of the payout destination
          sig { returns(WhopSDK::PayoutDestinationCategory::TaggedSymbol) }
          attr_accessor :category

          # The country code of the payout destination
          sig { returns(String) }
          attr_accessor :country_code

          # The name of the payer associated with the payout destination
          sig { returns(String) }
          attr_accessor :name

          # The payout destination configuration linked to this token. Null if not yet
          # configured.
          sig do
            params(
              category: WhopSDK::PayoutDestinationCategory::OrSymbol,
              country_code: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The category of the payout destination
            category:,
            # The country code of the payout destination
            country_code:,
            # The name of the payer associated with the payout destination
            name:
          )
          end

          sig do
            override.returns(
              {
                category: WhopSDK::PayoutDestinationCategory::TaggedSymbol,
                country_code: String,
                name: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
