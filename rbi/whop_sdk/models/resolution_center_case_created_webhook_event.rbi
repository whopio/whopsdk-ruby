# typed: strong

module WhopSDK
  module Models
    class ResolutionCenterCaseCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::ResolutionCenterCaseCreatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      sig { returns(WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"resolution_center_case.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Resolution center case ID, prefixed `reso_`.
        sig { returns(String) }
        attr_accessor :id

        # The account the case was filed against.
        sig do
          returns(
            T.nilable(
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Account
            )
          )
        end
        attr_reader :account

        sig do
          params(
            account:
              T.nilable(
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Account::OrHash
              )
          ).void
        end
        attr_writer :account

        # The amount in question, in whole units of `currency`.
        sig { returns(Float) }
        attr_accessor :amount

        sig do
          returns(
            T::Array[
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::TaggedSymbol
            ]
          )
        end
        attr_accessor :available_actions

        # The customer who opened the case.
        sig do
          returns(WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Buyer)
        end
        attr_reader :buyer

        sig do
          params(
            buyer:
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Buyer::OrHash
          ).void
        end
        attr_writer :buyer

        # When the case was opened, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        # Three-letter ISO currency code of the amount.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # Whether the customer has appealed a decision on this case.
        sig { returns(T::Boolean) }
        attr_accessor :customer_appealed

        # Whether Whop is involved — either reviewing the case, or waiting on the side
        # named by `status` for something it asked for while reviewing.
        sig { returns(T::Boolean) }
        attr_accessor :escalated

        # Who prevailed on the claim. `null` until the case closes. Read `refund` for
        # whether any money actually moved.
        sig do
          returns(
            T.nilable(
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Outcome::TaggedSymbol
            )
          )
        end
        attr_accessor :outcome

        # The payment the case was opened against.
        sig do
          returns(
            WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Payment
          )
        end
        attr_reader :payment

        sig do
          params(
            payment:
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Payment::OrHash
          ).void
        end
        attr_writer :payment

        # The plan the payment was made on, prefixed `plan_`.
        sig { returns(T.nilable(String)) }
        attr_accessor :plan_id

        # The product the payment was for, prefixed `prod_`.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_id

        # What the customer says went wrong. Shares the `/disputes` vocabulary, so a case
        # that later becomes a chargeback reports the same complaint.
        sig do
          returns(
            WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason::TaggedSymbol
          )
        end
        attr_accessor :reason

        # Whether money moved and off whose balance: `none`, `merchant`, or `platform`
        # (Whop refunded the customer and the merchant kept the funds). Independent of
        # `outcome` — a case the merchant won can still carry a platform refund. `null`
        # while the case is open, and on older closed cases that predate this being
        # recorded.
        sig do
          returns(
            T.nilable(
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Refund::TaggedSymbol
            )
          )
        end
        attr_accessor :refund

        # When the next response is due, as an ISO 8601 timestamp.
        sig { returns(T.nilable(String)) }
        attr_accessor :response_due_at

        # Who the case is waiting on. `awaiting_merchant` and `awaiting_customer` name the
        # side that owes a response, `under_review` means Whop is deciding, and `closed`
        # means it is settled — read `outcome` for how.
        sig do
          returns(
            WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # When the case was last changed, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            account:
              T.nilable(
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Account::OrHash
              ),
            amount: Float,
            available_actions:
              T::Array[
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::OrSymbol
              ],
            buyer:
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Buyer::OrHash,
            created_at: String,
            currency: T.nilable(String),
            customer_appealed: T::Boolean,
            escalated: T::Boolean,
            outcome:
              T.nilable(
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Outcome::OrSymbol
              ),
            payment:
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Payment::OrHash,
            plan_id: T.nilable(String),
            product_id: T.nilable(String),
            reason:
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason::OrSymbol,
            refund:
              T.nilable(
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Refund::OrSymbol
              ),
            response_due_at: T.nilable(String),
            status:
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Status::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Resolution center case ID, prefixed `reso_`.
          id:,
          # The account the case was filed against.
          account:,
          # The amount in question, in whole units of `currency`.
          amount:,
          available_actions:,
          # The customer who opened the case.
          buyer:,
          # When the case was opened, as an ISO 8601 timestamp.
          created_at:,
          # Three-letter ISO currency code of the amount.
          currency:,
          # Whether the customer has appealed a decision on this case.
          customer_appealed:,
          # Whether Whop is involved — either reviewing the case, or waiting on the side
          # named by `status` for something it asked for while reviewing.
          escalated:,
          # Who prevailed on the claim. `null` until the case closes. Read `refund` for
          # whether any money actually moved.
          outcome:,
          # The payment the case was opened against.
          payment:,
          # The plan the payment was made on, prefixed `plan_`.
          plan_id:,
          # The product the payment was for, prefixed `prod_`.
          product_id:,
          # What the customer says went wrong. Shares the `/disputes` vocabulary, so a case
          # that later becomes a chargeback reports the same complaint.
          reason:,
          # Whether money moved and off whose balance: `none`, `merchant`, or `platform`
          # (Whop refunded the customer and the merchant kept the funds). Independent of
          # `outcome` — a case the merchant won can still carry a platform refund. `null`
          # while the case is open, and on older closed cases that predate this being
          # recorded.
          refund:,
          # When the next response is due, as an ISO 8601 timestamp.
          response_due_at:,
          # Who the case is waiting on. `awaiting_merchant` and `awaiting_customer` name the
          # side that owes a response, `under_review` means Whop is deciding, and `closed`
          # means it is settled — read `outcome` for how.
          status:,
          # When the case was last changed, as an ISO 8601 timestamp.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account:
                T.nilable(
                  WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Account
                ),
              amount: Float,
              available_actions:
                T::Array[
                  WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::TaggedSymbol
                ],
              buyer:
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Buyer,
              created_at: String,
              currency: T.nilable(String),
              customer_appealed: T::Boolean,
              escalated: T::Boolean,
              outcome:
                T.nilable(
                  WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Outcome::TaggedSymbol
                ),
              payment:
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Payment,
              plan_id: T.nilable(String),
              product_id: T.nilable(String),
              reason:
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason::TaggedSymbol,
              refund:
                T.nilable(
                  WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Refund::TaggedSymbol
                ),
              response_due_at: T.nilable(String),
              status:
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Status::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class Account < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Account,
                WhopSDK::Internal::AnyHash
              )
            end

          # Account ID, prefixed `biz_`.
          sig { returns(String) }
          attr_accessor :id

          # Account display name.
          sig { returns(String) }
          attr_accessor :title

          # The account the case was filed against.
          sig { params(id: String, title: String).returns(T.attached_class) }
          def self.new(
            # Account ID, prefixed `biz_`.
            id:,
            # Account display name.
            title:
          )
          end

          sig { override.returns({ id: String, title: String }) }
          def to_hash
          end
        end

        # What you can do to this case right now, named for the endpoint that does it.
        # Resolved for the calling credential, so a merchant and a customer reading the
        # same case see their own options.
        module AvailableAction
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCEPT =
            T.let(
              :accept,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::TaggedSymbol
            )
          DENY =
            T.let(
              :deny,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::TaggedSymbol
            )
          REQUEST_INFO =
            T.let(
              :request_info,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::TaggedSymbol
            )
          REPLY =
            T.let(
              :reply,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::TaggedSymbol
            )
          APPEAL =
            T.let(
              :appeal,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::TaggedSymbol
            )
          WITHDRAW =
            T.let(
              :withdraw,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::AvailableAction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Buyer < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Buyer,
                WhopSDK::Internal::AnyHash
              )
            end

          # The customer's email address. Requires the `member:email:read` scope; `null`
          # without it.
          sig { returns(T.nilable(String)) }
          attr_accessor :email

          # The customer's member row on the account, prefixed `mem_`.
          sig { returns(T.nilable(String)) }
          attr_accessor :member_id

          # The customer's display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The customer's user ID, prefixed `user_`.
          sig { returns(T.nilable(String)) }
          attr_accessor :user_id

          # The customer's Whop username.
          sig { returns(T.nilable(String)) }
          attr_accessor :username

          # The customer who opened the case.
          sig do
            params(
              email: T.nilable(String),
              member_id: T.nilable(String),
              name: T.nilable(String),
              user_id: T.nilable(String),
              username: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The customer's email address. Requires the `member:email:read` scope; `null`
            # without it.
            email:,
            # The customer's member row on the account, prefixed `mem_`.
            member_id:,
            # The customer's display name.
            name:,
            # The customer's user ID, prefixed `user_`.
            user_id:,
            # The customer's Whop username.
            username:
          )
          end

          sig do
            override.returns(
              {
                email: T.nilable(String),
                member_id: T.nilable(String),
                name: T.nilable(String),
                user_id: T.nilable(String),
                username: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        # Who prevailed on the claim. `null` until the case closes. Read `refund` for
        # whether any money actually moved.
        module Outcome
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Outcome
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER_WON =
            T.let(
              :customer_won,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Outcome::TaggedSymbol
            )
          MERCHANT_WON =
            T.let(
              :merchant_won,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Outcome::TaggedSymbol
            )
          WITHDRAWN =
            T.let(
              :withdrawn,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Outcome::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Outcome::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Payment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Payment,
                WhopSDK::Internal::AnyHash
              )
            end

          # Payment ID, prefixed `pay_`.
          sig { returns(String) }
          attr_accessor :id

          # Card brand, when the customer paid by card.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_brand

          # Last four digits of the card, when the customer paid by card.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_last4

          # When the payment was made, as an ISO 8601 timestamp.
          sig { returns(String) }
          attr_accessor :created_at

          # How the customer paid, such as `card` or `paypal`.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method_type

          # The payment the case was opened against.
          sig do
            params(
              id: String,
              card_brand: T.nilable(String),
              card_last4: T.nilable(String),
              created_at: String,
              payment_method_type: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Payment ID, prefixed `pay_`.
            id:,
            # Card brand, when the customer paid by card.
            card_brand:,
            # Last four digits of the card, when the customer paid by card.
            card_last4:,
            # When the payment was made, as an ISO 8601 timestamp.
            created_at:,
            # How the customer paid, such as `card` or `paypal`.
            payment_method_type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                card_brand: T.nilable(String),
                card_last4: T.nilable(String),
                created_at: String,
                payment_method_type: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        # What the customer says went wrong. Shares the `/disputes` vocabulary, so a case
        # that later becomes a chargeback reports the same complaint.
        module Reason
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FRAUDULENT =
            T.let(
              :fraudulent,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason::TaggedSymbol
            )
          PRODUCT_NOT_RECEIVED =
            T.let(
              :product_not_received,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason::TaggedSymbol
            )
          NOT_AS_DESCRIBED =
            T.let(
              :not_as_described,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason::TaggedSymbol
            )
          PRODUCT_UNACCEPTABLE =
            T.let(
              :product_unacceptable,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason::TaggedSymbol
            )
          SUBSCRIPTION_CANCELED =
            T.let(
              :subscription_canceled,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Reason::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether money moved and off whose balance: `none`, `merchant`, or `platform`
        # (Whop refunded the customer and the merchant kept the funds). Independent of
        # `outcome` — a case the merchant won can still carry a platform refund. `null`
        # while the case is open, and on older closed cases that predate this being
        # recorded.
        module Refund
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Refund
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Refund::TaggedSymbol
            )
          MERCHANT =
            T.let(
              :merchant,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Refund::TaggedSymbol
            )
          PLATFORM =
            T.let(
              :platform,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Refund::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Refund::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Who the case is waiting on. `awaiting_merchant` and `awaiting_customer` name the
        # side that owes a response, `under_review` means Whop is deciding, and `closed`
        # means it is settled — read `outcome` for how.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWAITING_MERCHANT =
            T.let(
              :awaiting_merchant,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          AWAITING_CUSTOMER =
            T.let(
              :awaiting_customer,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          UNDER_REVIEW =
            T.let(
              :under_review,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          CLOSED =
            T.let(
              :closed,
              WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Status::TaggedSymbol
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
