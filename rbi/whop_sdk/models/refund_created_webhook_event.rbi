# typed: strong

module WhopSDK
  module Models
    class RefundCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::RefundCreatedWebhookEvent, WhopSDK::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # An object representing a refund made on a payment.
      sig { returns(WhopSDK::RefundCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::RefundCreatedWebhookEvent::Data::OrHash).void
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
          data: WhopSDK::RefundCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # An object representing a refund made on a payment.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"refund.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::RefundCreatedWebhookEvent::Data,
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
              WhopSDK::RefundCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the refund.
        sig { returns(String) }
        attr_accessor :id

        # The amount of the refund. Provided as a number in the specified currency. Eg:
        # 10.43 for $10.43 USD.
        sig { returns(Float) }
        attr_accessor :amount

        # The time the refund was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The currency of the refund.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The payment associated with the refund.
        sig do
          returns(T.nilable(WhopSDK::RefundCreatedWebhookEvent::Data::Payment))
        end
        attr_reader :payment

        sig do
          params(
            payment:
              T.nilable(
                WhopSDK::RefundCreatedWebhookEvent::Data::Payment::OrHash
              )
          ).void
        end
        attr_writer :payment

        # The provider of the refund.
        sig { returns(WhopSDK::PaymentProvider::TaggedSymbol) }
        attr_accessor :provider

        # The time the refund was created by the provider.
        sig { returns(T.nilable(Time)) }
        attr_accessor :provider_created_at

        # The status of the refund reference.
        sig { returns(T.nilable(WhopSDK::RefundReferenceStatus::TaggedSymbol)) }
        attr_accessor :reference_status

        # The type of refund reference that was made available by the payment provider.
        sig { returns(T.nilable(WhopSDK::RefundReferenceType::TaggedSymbol)) }
        attr_accessor :reference_type

        # The value of the reference.
        sig { returns(T.nilable(String)) }
        attr_accessor :reference_value

        # The status of the refund.
        sig { returns(WhopSDK::RefundStatus::TaggedSymbol) }
        attr_accessor :status

        # An object representing a refund made on a payment.
        sig do
          params(
            id: String,
            amount: Float,
            created_at: Time,
            currency: WhopSDK::Currency::OrSymbol,
            payment:
              T.nilable(
                WhopSDK::RefundCreatedWebhookEvent::Data::Payment::OrHash
              ),
            provider: WhopSDK::PaymentProvider::OrSymbol,
            provider_created_at: T.nilable(Time),
            reference_status:
              T.nilable(WhopSDK::RefundReferenceStatus::OrSymbol),
            reference_type: T.nilable(WhopSDK::RefundReferenceType::OrSymbol),
            reference_value: T.nilable(String),
            status: WhopSDK::RefundStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the refund.
          id:,
          # The amount of the refund. Provided as a number in the specified currency. Eg:
          # 10.43 for $10.43 USD.
          amount:,
          # The time the refund was created.
          created_at:,
          # The currency of the refund.
          currency:,
          # The payment associated with the refund.
          payment:,
          # The provider of the refund.
          provider:,
          # The time the refund was created by the provider.
          provider_created_at:,
          # The status of the refund reference.
          reference_status:,
          # The type of refund reference that was made available by the payment provider.
          reference_type:,
          # The value of the reference.
          reference_value:,
          # The status of the refund.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Float,
              created_at: Time,
              currency: WhopSDK::Currency::TaggedSymbol,
              payment:
                T.nilable(WhopSDK::RefundCreatedWebhookEvent::Data::Payment),
              provider: WhopSDK::PaymentProvider::TaggedSymbol,
              provider_created_at: T.nilable(Time),
              reference_status:
                T.nilable(WhopSDK::RefundReferenceStatus::TaggedSymbol),
              reference_type:
                T.nilable(WhopSDK::RefundReferenceType::TaggedSymbol),
              reference_value: T.nilable(String),
              status: WhopSDK::RefundStatus::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Payment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::RefundCreatedWebhookEvent::Data::Payment,
                WhopSDK::Internal::AnyHash
              )
            end

          # The payment ID
          sig { returns(String) }
          attr_accessor :id

          # The reason why a specific payment was billed
          sig { returns(T.nilable(WhopSDK::BillingReasons::TaggedSymbol)) }
          attr_accessor :billing_reason

          # Possible card brands that a payment token can have
          sig { returns(T.nilable(WhopSDK::CardBrands::TaggedSymbol)) }
          attr_accessor :card_brand

          # The last 4 digits of the card used to make the payment.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_last4

          # The datetime the payment was created
          sig { returns(Time) }
          attr_accessor :created_at

          # The available currencies on the platform
          sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
          attr_accessor :currency

          # When an alert came in that this transaction will be disputed
          sig { returns(T.nilable(Time)) }
          attr_accessor :dispute_alerted_at

          # The member attached to this payment.
          sig do
            returns(
              T.nilable(
                WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Member
              )
            )
          end
          attr_reader :member

          sig do
            params(
              member:
                T.nilable(
                  WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Member::OrHash
                )
            ).void
          end
          attr_writer :member

          # The membership attached to this payment.
          sig do
            returns(
              T.nilable(
                WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Membership
              )
            )
          end
          attr_reader :membership

          sig do
            params(
              membership:
                T.nilable(
                  WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Membership::OrHash
                )
            ).void
          end
          attr_writer :membership

          # The datetime the payment was paid
          sig { returns(T.nilable(Time)) }
          attr_accessor :paid_at

          # The different types of payment methods that can be used.
          sig { returns(T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol)) }
          attr_accessor :payment_method_type

          # The subtotal to show to the creator (excluding buyer fees).
          sig { returns(T.nilable(Float)) }
          attr_accessor :subtotal

          # The total to show to the creator (excluding buyer fees).
          sig { returns(T.nilable(Float)) }
          attr_accessor :total

          # The total in USD to show to the creator (excluding buyer fees).
          sig { returns(T.nilable(Float)) }
          attr_accessor :usd_total

          # The user that made this payment.
          sig do
            returns(
              T.nilable(WhopSDK::RefundCreatedWebhookEvent::Data::Payment::User)
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                T.nilable(
                  WhopSDK::RefundCreatedWebhookEvent::Data::Payment::User::OrHash
                )
            ).void
          end
          attr_writer :user

          # The payment associated with the refund.
          sig do
            params(
              id: String,
              billing_reason: T.nilable(WhopSDK::BillingReasons::OrSymbol),
              card_brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
              card_last4: T.nilable(String),
              created_at: Time,
              currency: T.nilable(WhopSDK::Currency::OrSymbol),
              dispute_alerted_at: T.nilable(Time),
              member:
                T.nilable(
                  WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Member::OrHash
                ),
              membership:
                T.nilable(
                  WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Membership::OrHash
                ),
              paid_at: T.nilable(Time),
              payment_method_type:
                T.nilable(WhopSDK::PaymentMethodTypes::OrSymbol),
              subtotal: T.nilable(Float),
              total: T.nilable(Float),
              usd_total: T.nilable(Float),
              user:
                T.nilable(
                  WhopSDK::RefundCreatedWebhookEvent::Data::Payment::User::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The payment ID
            id:,
            # The reason why a specific payment was billed
            billing_reason:,
            # Possible card brands that a payment token can have
            card_brand:,
            # The last 4 digits of the card used to make the payment.
            card_last4:,
            # The datetime the payment was created
            created_at:,
            # The available currencies on the platform
            currency:,
            # When an alert came in that this transaction will be disputed
            dispute_alerted_at:,
            # The member attached to this payment.
            member:,
            # The membership attached to this payment.
            membership:,
            # The datetime the payment was paid
            paid_at:,
            # The different types of payment methods that can be used.
            payment_method_type:,
            # The subtotal to show to the creator (excluding buyer fees).
            subtotal:,
            # The total to show to the creator (excluding buyer fees).
            total:,
            # The total in USD to show to the creator (excluding buyer fees).
            usd_total:,
            # The user that made this payment.
            user:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                billing_reason:
                  T.nilable(WhopSDK::BillingReasons::TaggedSymbol),
                card_brand: T.nilable(WhopSDK::CardBrands::TaggedSymbol),
                card_last4: T.nilable(String),
                created_at: Time,
                currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
                dispute_alerted_at: T.nilable(Time),
                member:
                  T.nilable(
                    WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Member
                  ),
                membership:
                  T.nilable(
                    WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Membership
                  ),
                paid_at: T.nilable(Time),
                payment_method_type:
                  T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol),
                subtotal: T.nilable(Float),
                total: T.nilable(Float),
                usd_total: T.nilable(Float),
                user:
                  T.nilable(
                    WhopSDK::RefundCreatedWebhookEvent::Data::Payment::User
                  )
              }
            )
          end
          def to_hash
          end

          class Member < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Member,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The ID of the member
            sig { returns(String) }
            attr_accessor :id

            # The phone number for the member, if available.
            sig { returns(T.nilable(String)) }
            attr_accessor :phone

            # The member attached to this payment.
            sig do
              params(id: String, phone: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # The ID of the member
              id:,
              # The phone number for the member, if available.
              phone:
            )
            end

            sig { override.returns({ id: String, phone: T.nilable(String) }) }
            def to_hash
            end
          end

          class Membership < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::RefundCreatedWebhookEvent::Data::Payment::Membership,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The internal ID of the membership.
            sig { returns(String) }
            attr_accessor :id

            # The state of the membership.
            sig { returns(WhopSDK::MembershipStatus::TaggedSymbol) }
            attr_accessor :status

            # The membership attached to this payment.
            sig do
              params(
                id: String,
                status: WhopSDK::MembershipStatus::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The internal ID of the membership.
              id:,
              # The state of the membership.
              status:
            )
            end

            sig do
              override.returns(
                { id: String, status: WhopSDK::MembershipStatus::TaggedSymbol }
              )
            end
            def to_hash
            end
          end

          class User < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::RefundCreatedWebhookEvent::Data::Payment::User,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The internal ID of the user.
            sig { returns(String) }
            attr_accessor :id

            # The email of the user
            sig { returns(T.nilable(String)) }
            attr_accessor :email

            # The name of the user from their Whop account.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The username of the user from their Whop account.
            sig { returns(String) }
            attr_accessor :username

            # The user that made this payment.
            sig do
              params(
                id: String,
                email: T.nilable(String),
                name: T.nilable(String),
                username: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The internal ID of the user.
              id:,
              # The email of the user
              email:,
              # The name of the user from their Whop account.
              name:,
              # The username of the user from their Whop account.
              username:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  email: T.nilable(String),
                  name: T.nilable(String),
                  username: String
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
end
