# frozen_string_literal: true

module WhopSDK
  module Models
    class DisputeAlertCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute data
      #   A dispute alert represents an early warning notification from a payment
      #   processor about a potential dispute or chargeback.
      #
      #   @return [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"dispute_alert.created"]
      required :type, const: :"dispute_alert.created"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"dispute_alert.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DisputeAlertCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data] A dispute alert represents an early warning notification from a payment processo
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"dispute_alert.created"] The webhook event type

      # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the dispute alert.
        #
        #   @return [String]
        required :id, String

        # @!attribute alert_type
        #   The type of the dispute alert.
        #
        #   @return [Symbol, WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::AlertType]
        required :alert_type, enum: -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data::AlertType }

        # @!attribute amount
        #   The alerted amount in the specified currency.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute charge_for_alert
        #   Whether this alert incurs a charge.
        #
        #   @return [Boolean]
        required :charge_for_alert, WhopSDK::Internal::Type::Boolean

        # @!attribute created_at
        #   The time the dispute alert was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   The three-letter ISO currency code for the alerted amount.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute dispute
        #   The dispute associated with the dispute alert.
        #
        #   @return [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Dispute, nil]
        required :dispute, -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Dispute }, nil?: true

        # @!attribute payment
        #   The payment associated with the dispute alert.
        #
        #   @return [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment, nil]
        required :payment, -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment }, nil?: true

        # @!attribute transaction_date
        #   The date of the original transaction.
        #
        #   @return [Time, nil]
        required :transaction_date, Time, nil?: true

        # @!method initialize(id:, alert_type:, amount:, charge_for_alert:, created_at:, currency:, dispute:, payment:, transaction_date:)
        #   A dispute alert represents an early warning notification from a payment
        #   processor about a potential dispute or chargeback.
        #
        #   @param id [String] The unique identifier of the dispute alert.
        #
        #   @param alert_type [Symbol, WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::AlertType] The type of the dispute alert.
        #
        #   @param amount [Float] The alerted amount in the specified currency.
        #
        #   @param charge_for_alert [Boolean] Whether this alert incurs a charge.
        #
        #   @param created_at [Time] The time the dispute alert was created.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the alerted amount.
        #
        #   @param dispute [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Dispute, nil] The dispute associated with the dispute alert.
        #
        #   @param payment [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment, nil] The payment associated with the dispute alert.
        #
        #   @param transaction_date [Time, nil] The date of the original transaction.

        # The type of the dispute alert.
        #
        # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data#alert_type
        module AlertType
          extend WhopSDK::Internal::Type::Enum

          DISPUTE = :dispute
          DISPUTE_RDR = :dispute_rdr
          FRAUD = :fraud

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data#dispute
        class Dispute < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the dispute.
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   The disputed amount in the specified currency, formatted as a decimal.
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute created_at
          #   The datetime the dispute was created.
          #
          #   @return [Time, nil]
          required :created_at, Time, nil?: true

          # @!attribute currency
          #   The three-letter ISO currency code for the disputed amount.
          #
          #   @return [Symbol, WhopSDK::Models::Currency]
          required :currency, enum: -> { WhopSDK::Currency }

          # @!attribute reason
          #   A human-readable reason for the dispute.
          #
          #   @return [String, nil]
          required :reason, String, nil?: true

          # @!attribute status
          #   The current status of the dispute lifecycle, such as needs_response,
          #   under_review, won, or lost.
          #
          #   @return [Symbol, WhopSDK::Models::DisputeStatuses]
          required :status, enum: -> { WhopSDK::DisputeStatuses }

          # @!method initialize(id:, amount:, created_at:, currency:, reason:, status:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Dispute} for more
          #   details.
          #
          #   The dispute associated with the dispute alert.
          #
          #   @param id [String] The unique identifier for the dispute.
          #
          #   @param amount [Float] The disputed amount in the specified currency, formatted as a decimal.
          #
          #   @param created_at [Time, nil] The datetime the dispute was created.
          #
          #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the disputed amount.
          #
          #   @param reason [String, nil] A human-readable reason for the dispute.
          #
          #   @param status [Symbol, WhopSDK::Models::DisputeStatuses] The current status of the dispute lifecycle, such as needs_response, under_revie
        end

        # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data#payment
        class Payment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the payment.
          #
          #   @return [String]
          required :id, String

          # @!attribute billing_reason
          #   The reason why a specific payment was billed
          #
          #   @return [Symbol, WhopSDK::Models::BillingReasons, nil]
          required :billing_reason, enum: -> { WhopSDK::BillingReasons }, nil?: true

          # @!attribute card_brand
          #   Possible card brands that a payment token can have
          #
          #   @return [Symbol, WhopSDK::Models::CardBrands, nil]
          required :card_brand, enum: -> { WhopSDK::CardBrands }, nil?: true

          # @!attribute card_last4
          #   The last four digits of the card used to make this payment. Null if the payment
          #   was not made with a card.
          #
          #   @return [String, nil]
          required :card_last4, String, nil?: true

          # @!attribute created_at
          #   The datetime the payment was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute currency
          #   The available currencies on the platform
          #
          #   @return [Symbol, WhopSDK::Models::Currency, nil]
          required :currency, enum: -> { WhopSDK::Currency }, nil?: true

          # @!attribute dispute_alerted_at
          #   When an alert came in that this transaction will be disputed
          #
          #   @return [Time, nil]
          required :dispute_alerted_at, Time, nil?: true

          # @!attribute member
          #   The member attached to this payment.
          #
          #   @return [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment::Member, nil]
          required :member, -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Member }, nil?: true

          # @!attribute membership
          #   The membership attached to this payment.
          #
          #   @return [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment::Membership, nil]
          required :membership,
                   -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::Membership },
                   nil?: true

          # @!attribute paid_at
          #   The time at which this payment was successfully collected. Null if the payment
          #   has not yet succeeded. As a Unix timestamp.
          #
          #   @return [Time, nil]
          required :paid_at, Time, nil?: true

          # @!attribute payment_method_type
          #   The different types of payment methods that can be used.
          #
          #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes, nil]
          required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }, nil?: true

          # @!attribute subtotal
          #   The subtotal to show to the creator (excluding buyer fees).
          #
          #   @return [Float, nil]
          required :subtotal, Float, nil?: true

          # @!attribute total
          #   The total to show to the creator (excluding buyer fees).
          #
          #   @return [Float, nil]
          required :total, Float, nil?: true

          # @!attribute usd_total
          #   The total in USD to show to the creator (excluding buyer fees).
          #
          #   @return [Float, nil]
          required :usd_total, Float, nil?: true

          # @!attribute user
          #   The user that made this payment.
          #
          #   @return [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment::User, nil]
          required :user, -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Payment::User }, nil?: true

          # @!method initialize(id:, billing_reason:, card_brand:, card_last4:, created_at:, currency:, dispute_alerted_at:, member:, membership:, paid_at:, payment_method_type:, subtotal:, total:, usd_total:, user:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment} for more
          #   details.
          #
          #   The payment associated with the dispute alert.
          #
          #   @param id [String] The unique identifier for the payment.
          #
          #   @param billing_reason [Symbol, WhopSDK::Models::BillingReasons, nil] The reason why a specific payment was billed
          #
          #   @param card_brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
          #
          #   @param card_last4 [String, nil] The last four digits of the card used to make this payment. Null if the payment
          #
          #   @param created_at [Time] The datetime the payment was created.
          #
          #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
          #
          #   @param dispute_alerted_at [Time, nil] When an alert came in that this transaction will be disputed
          #
          #   @param member [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment::Member, nil] The member attached to this payment.
          #
          #   @param membership [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment::Membership, nil] The membership attached to this payment.
          #
          #   @param paid_at [Time, nil] The time at which this payment was successfully collected. Null if the payment h
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes, nil] The different types of payment methods that can be used.
          #
          #   @param subtotal [Float, nil] The subtotal to show to the creator (excluding buyer fees).
          #
          #   @param total [Float, nil] The total to show to the creator (excluding buyer fees).
          #
          #   @param usd_total [Float, nil] The total in USD to show to the creator (excluding buyer fees).
          #
          #   @param user [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment::User, nil] The user that made this payment.

          # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment#member
          class Member < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The unique identifier for the company member.
            #
            #   @return [String]
            required :id, String

            # @!attribute phone
            #   The phone number for the member, if available.
            #
            #   @return [String, nil]
            required :phone, String, nil?: true

            # @!method initialize(id:, phone:)
            #   The member attached to this payment.
            #
            #   @param id [String] The unique identifier for the company member.
            #
            #   @param phone [String, nil] The phone number for the member, if available.
          end

          # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment#membership
          class Membership < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The unique identifier for the membership.
            #
            #   @return [String]
            required :id, String

            # @!attribute status
            #   The state of the membership.
            #
            #   @return [Symbol, WhopSDK::Models::MembershipStatus]
            required :status, enum: -> { WhopSDK::MembershipStatus }

            # @!method initialize(id:, status:)
            #   The membership attached to this payment.
            #
            #   @param id [String] The unique identifier for the membership.
            #
            #   @param status [Symbol, WhopSDK::Models::MembershipStatus] The state of the membership.
          end

          # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment#user
          class User < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The unique identifier for the user.
            #
            #   @return [String]
            required :id, String

            # @!attribute email
            #   The user's email address. Requires the member:email:read permission to access.
            #   Null if not authorized.
            #
            #   @return [String, nil]
            required :email, String, nil?: true

            # @!attribute name
            #   The user's display name shown on their public profile.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!attribute username
            #   The user's unique username shown on their public profile.
            #
            #   @return [String]
            required :username, String

            # @!method initialize(id:, email:, name:, username:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Payment::User} for more
            #   details.
            #
            #   The user that made this payment.
            #
            #   @param id [String] The unique identifier for the user.
            #
            #   @param email [String, nil] The user's email address. Requires the member:email:read permission to access. N
            #
            #   @param name [String, nil] The user's display name shown on their public profile.
            #
            #   @param username [String] The user's unique username shown on their public profile.
          end
        end
      end
    end
  end
end
