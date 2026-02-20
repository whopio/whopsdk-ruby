# typed: strong

module WhopSDK
  module Models
    class DisputeAlertCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::DisputeAlertCreatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # A dispute alert represents an early warning notification from a payment
      # processor about a potential dispute or chargeback.
      sig { returns(WhopSDK::DisputeAlertCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::DisputeAlertCreatedWebhookEvent::Data::OrHash
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
          data: WhopSDK::DisputeAlertCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # A dispute alert represents an early warning notification from a payment
        # processor about a potential dispute or chargeback.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"dispute_alert.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::DisputeAlertCreatedWebhookEvent::Data,
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
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the dispute alert.
        sig { returns(String) }
        attr_accessor :id

        # The type of the dispute alert.
        sig do
          returns(
            WhopSDK::DisputeAlertCreatedWebhookEvent::Data::AlertType::TaggedSymbol
          )
        end
        attr_accessor :alert_type

        # The alerted amount in the specified currency.
        sig { returns(Float) }
        attr_accessor :amount

        # Whether this alert incurs a charge.
        sig { returns(T::Boolean) }
        attr_accessor :charge_for_alert

        # The time the dispute alert was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The three-letter ISO currency code for the alerted amount.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The dispute associated with the dispute alert.
        sig do
          returns(
            T.nilable(WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Dispute)
          )
        end
        attr_reader :dispute

        sig do
          params(
            dispute:
              T.nilable(
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Dispute::OrHash
              )
          ).void
        end
        attr_writer :dispute

        # The payment associated with the dispute alert.
        sig do
          returns(
            T.nilable(WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment)
          )
        end
        attr_reader :payment

        sig do
          params(
            payment:
              T.nilable(
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::OrHash
              )
          ).void
        end
        attr_writer :payment

        # The date of the original transaction.
        sig { returns(T.nilable(Time)) }
        attr_accessor :transaction_date

        # A dispute alert represents an early warning notification from a payment
        # processor about a potential dispute or chargeback.
        sig do
          params(
            id: String,
            alert_type:
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::AlertType::OrSymbol,
            amount: Float,
            charge_for_alert: T::Boolean,
            created_at: Time,
            currency: WhopSDK::Currency::OrSymbol,
            dispute:
              T.nilable(
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Dispute::OrHash
              ),
            payment:
              T.nilable(
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::OrHash
              ),
            transaction_date: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the dispute alert.
          id:,
          # The type of the dispute alert.
          alert_type:,
          # The alerted amount in the specified currency.
          amount:,
          # Whether this alert incurs a charge.
          charge_for_alert:,
          # The time the dispute alert was created.
          created_at:,
          # The three-letter ISO currency code for the alerted amount.
          currency:,
          # The dispute associated with the dispute alert.
          dispute:,
          # The payment associated with the dispute alert.
          payment:,
          # The date of the original transaction.
          transaction_date:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              alert_type:
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::AlertType::TaggedSymbol,
              amount: Float,
              charge_for_alert: T::Boolean,
              created_at: Time,
              currency: WhopSDK::Currency::TaggedSymbol,
              dispute:
                T.nilable(
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Dispute
                ),
              payment:
                T.nilable(
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment
                ),
              transaction_date: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        # The type of the dispute alert.
        module AlertType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::AlertType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISPUTE =
            T.let(
              :dispute,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::AlertType::TaggedSymbol
            )
          DISPUTE_RDR =
            T.let(
              :dispute_rdr,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::AlertType::TaggedSymbol
            )
          FRAUD =
            T.let(
              :fraud,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::AlertType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::AlertType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Dispute < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Dispute,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the dispute.
          sig { returns(String) }
          attr_accessor :id

          # The disputed amount in the specified currency, formatted as a decimal.
          sig { returns(Float) }
          attr_accessor :amount

          # The datetime the dispute was created.
          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at

          # The three-letter ISO currency code for the disputed amount.
          sig { returns(WhopSDK::Currency::TaggedSymbol) }
          attr_accessor :currency

          # A human-readable reason for the dispute.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # The current status of the dispute lifecycle, such as needs_response,
          # under_review, won, or lost.
          sig { returns(WhopSDK::DisputeStatuses::TaggedSymbol) }
          attr_accessor :status

          # The dispute associated with the dispute alert.
          sig do
            params(
              id: String,
              amount: Float,
              created_at: T.nilable(Time),
              currency: WhopSDK::Currency::OrSymbol,
              reason: T.nilable(String),
              status: WhopSDK::DisputeStatuses::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the dispute.
            id:,
            # The disputed amount in the specified currency, formatted as a decimal.
            amount:,
            # The datetime the dispute was created.
            created_at:,
            # The three-letter ISO currency code for the disputed amount.
            currency:,
            # A human-readable reason for the dispute.
            reason:,
            # The current status of the dispute lifecycle, such as needs_response,
            # under_review, won, or lost.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: Float,
                created_at: T.nilable(Time),
                currency: WhopSDK::Currency::TaggedSymbol,
                reason: T.nilable(String),
                status: WhopSDK::DisputeStatuses::TaggedSymbol
              }
            )
          end
          def to_hash
          end
        end

        class Payment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the payment.
          sig { returns(String) }
          attr_accessor :id

          # The reason why a specific payment was billed
          sig { returns(T.nilable(WhopSDK::BillingReasons::TaggedSymbol)) }
          attr_accessor :billing_reason

          # Possible card brands that a payment token can have
          sig { returns(T.nilable(WhopSDK::CardBrands::TaggedSymbol)) }
          attr_accessor :card_brand

          # The last four digits of the card used to make this payment. Null if the payment
          # was not made with a card.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_last4

          # The datetime the payment was created.
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
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Member
              )
            )
          end
          attr_reader :member

          sig do
            params(
              member:
                T.nilable(
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Member::OrHash
                )
            ).void
          end
          attr_writer :member

          # The membership attached to this payment.
          sig do
            returns(
              T.nilable(
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Membership
              )
            )
          end
          attr_reader :membership

          sig do
            params(
              membership:
                T.nilable(
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Membership::OrHash
                )
            ).void
          end
          attr_writer :membership

          # The time at which this payment was successfully collected. Null if the payment
          # has not yet succeeded. As a Unix timestamp.
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
              T.nilable(
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                T.nilable(
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::User::OrHash
                )
            ).void
          end
          attr_writer :user

          # The payment associated with the dispute alert.
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
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Member::OrHash
                ),
              membership:
                T.nilable(
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Membership::OrHash
                ),
              paid_at: T.nilable(Time),
              payment_method_type:
                T.nilable(WhopSDK::PaymentMethodTypes::OrSymbol),
              subtotal: T.nilable(Float),
              total: T.nilable(Float),
              usd_total: T.nilable(Float),
              user:
                T.nilable(
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::User::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the payment.
            id:,
            # The reason why a specific payment was billed
            billing_reason:,
            # Possible card brands that a payment token can have
            card_brand:,
            # The last four digits of the card used to make this payment. Null if the payment
            # was not made with a card.
            card_last4:,
            # The datetime the payment was created.
            created_at:,
            # The available currencies on the platform
            currency:,
            # When an alert came in that this transaction will be disputed
            dispute_alerted_at:,
            # The member attached to this payment.
            member:,
            # The membership attached to this payment.
            membership:,
            # The time at which this payment was successfully collected. Null if the payment
            # has not yet succeeded. As a Unix timestamp.
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
                    WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Member
                  ),
                membership:
                  T.nilable(
                    WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Membership
                  ),
                paid_at: T.nilable(Time),
                payment_method_type:
                  T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol),
                subtotal: T.nilable(Float),
                total: T.nilable(Float),
                usd_total: T.nilable(Float),
                user:
                  T.nilable(
                    WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::User
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
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Member,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The unique identifier for the company member.
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
              # The unique identifier for the company member.
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
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Membership,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The unique identifier for the membership.
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
              # The unique identifier for the membership.
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
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::User,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The unique identifier for the user.
            sig { returns(String) }
            attr_accessor :id

            # The user's email address. Requires the member:email:read permission to access.
            # Null if not authorized.
            sig { returns(T.nilable(String)) }
            attr_accessor :email

            # The user's display name shown on their public profile.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The user's unique username shown on their public profile.
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
              # The unique identifier for the user.
              id:,
              # The user's email address. Requires the member:email:read permission to access.
              # Null if not authorized.
              email:,
              # The user's display name shown on their public profile.
              name:,
              # The user's unique username shown on their public profile.
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
