# frozen_string_literal: true

module WhopSDK
  module Models
    class ResolutionCenterCaseCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   A resolution center case is a dispute or support case between a user and a
      #   company, tracking the issue, status, and outcome.
      #
      #   @return [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"resolution_center_case.created"]
      required :type, const: :"resolution_center_case.created"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"resolution_center_case.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data] A resolution center case is a dispute or support case between a user and a compa
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"resolution_center_case.created"] The webhook event type

      # @see WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the resolution.
        #
        #   @return [String]
        required :id, String

        # @!attribute company
        #   The company involved in this resolution case. Null if the company no longer
        #   exists.
        #
        #   @return [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::Company, nil]
        required :company, -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Company }, nil?: true

        # @!attribute created_at
        #   The datetime the resolution was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute customer_appealed
        #   Whether the customer has filed an appeal after the initial resolution decision.
        #
        #   @return [Boolean]
        required :customer_appealed, WhopSDK::Internal::Type::Boolean

        # @!attribute customer_response_actions
        #   The list of actions currently available to the customer.
        #
        #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseCustomerResponse>]
        required :customer_response_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseCustomerResponse] }

        # @!attribute due_date
        #   The deadline by which the next response is required. Null if no deadline is
        #   currently active. As a Unix timestamp.
        #
        #   @return [Time, nil]
        required :due_date, Time, nil?: true

        # @!attribute issue
        #   The category of the dispute.
        #
        #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseIssueType]
        required :issue, enum: -> { WhopSDK::ResolutionCenterCaseIssueType }

        # @!attribute member
        #   The membership record associated with the disputed payment. Null if the
        #   membership no longer exists.
        #
        #   @return [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::Member, nil]
        required :member, -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Member }, nil?: true

        # @!attribute merchant_appealed
        #   Whether the merchant has filed an appeal after the initial resolution decision.
        #
        #   @return [Boolean]
        required :merchant_appealed, WhopSDK::Internal::Type::Boolean

        # @!attribute merchant_response_actions
        #   The list of actions currently available to the merchant.
        #
        #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseMerchantResponse>]
        required :merchant_response_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseMerchantResponse] }

        # @!attribute payment
        #   The payment record that is the subject of this resolution case.
        #
        #   @return [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::Payment]
        required :payment, -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::Payment }

        # @!attribute platform_response_actions
        #   The list of actions currently available to the Whop platform for moderating this
        #   resolution.
        #
        #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCasePlatformResponse>]
        required :platform_response_actions,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCasePlatformResponse] }

        # @!attribute resolution_events
        #   The most recent 50 messages, actions, and status changes that have occurred
        #   during this resolution case.
        #
        #   @return [Array<WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent>]
        required :resolution_events,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent] }

        # @!attribute status
        #   The current status of the resolution case, indicating which party needs to
        #   respond or if the case is closed.
        #
        #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseStatus]
        required :status, enum: -> { WhopSDK::ResolutionCenterCaseStatus }

        # @!attribute updated_at
        #   The datetime the resolution was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute user
        #   The customer (buyer) who filed this resolution case.
        #
        #   @return [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::User]
        required :user, -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::User }

        # @!method initialize(id:, company:, created_at:, customer_appealed:, customer_response_actions:, due_date:, issue:, member:, merchant_appealed:, merchant_response_actions:, payment:, platform_response_actions:, resolution_events:, status:, updated_at:, user:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data} for more
        #   details.
        #
        #   A resolution center case is a dispute or support case between a user and a
        #   company, tracking the issue, status, and outcome.
        #
        #   @param id [String] The unique identifier for the resolution.
        #
        #   @param company [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::Company, nil] The company involved in this resolution case. Null if the company no longer exis
        #
        #   @param created_at [Time] The datetime the resolution was created.
        #
        #   @param customer_appealed [Boolean] Whether the customer has filed an appeal after the initial resolution decision.
        #
        #   @param customer_response_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseCustomerResponse>] The list of actions currently available to the customer.
        #
        #   @param due_date [Time, nil] The deadline by which the next response is required. Null if no deadline is curr
        #
        #   @param issue [Symbol, WhopSDK::Models::ResolutionCenterCaseIssueType] The category of the dispute.
        #
        #   @param member [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::Member, nil] The membership record associated with the disputed payment. Null if the membersh
        #
        #   @param merchant_appealed [Boolean] Whether the merchant has filed an appeal after the initial resolution decision.
        #
        #   @param merchant_response_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseMerchantResponse>] The list of actions currently available to the merchant.
        #
        #   @param payment [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::Payment] The payment record that is the subject of this resolution case.
        #
        #   @param platform_response_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCasePlatformResponse>] The list of actions currently available to the Whop platform for moderating this
        #
        #   @param resolution_events [Array<WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent>] The most recent 50 messages, actions, and status changes that have occurred duri
        #
        #   @param status [Symbol, WhopSDK::Models::ResolutionCenterCaseStatus] The current status of the resolution case, indicating which party needs to respo
        #
        #   @param updated_at [Time] The datetime the resolution was last updated.
        #
        #   @param user [WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::User] The customer (buyer) who filed this resolution case.

        # @see WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data#company
        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the company.
          #
          #   @return [String]
          required :id, String

          # @!attribute title
          #   The display name of the company shown to customers.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, title:)
          #   The company involved in this resolution case. Null if the company no longer
          #   exists.
          #
          #   @param id [String] The unique identifier for the company.
          #
          #   @param title [String] The display name of the company shown to customers.
        end

        # @see WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data#member
        class Member < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the extra public member.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The membership record associated with the disputed payment. Null if the
          #   membership no longer exists.
          #
          #   @param id [String] The unique identifier for the extra public member.
        end

        # @see WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data#payment
        class Payment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the payment.
          #
          #   @return [String]
          required :id, String

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

          # @!attribute paid_at
          #   The time at which this payment was successfully collected. Null if the payment
          #   has not yet succeeded. As a Unix timestamp.
          #
          #   @return [Time, nil]
          required :paid_at, Time, nil?: true

          # @!attribute subtotal
          #   The payment amount before taxes and discounts are applied. In the currency
          #   specified by the currency field.
          #
          #   @return [Float, nil]
          required :subtotal, Float, nil?: true

          # @!attribute total
          #   The total amount charged to the customer for this payment, including taxes and
          #   after any discounts. In the currency specified by the currency field.
          #
          #   @return [Float]
          required :total, Float

          # @!method initialize(id:, created_at:, currency:, paid_at:, subtotal:, total:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::Payment} for
          #   more details.
          #
          #   The payment record that is the subject of this resolution case.
          #
          #   @param id [String] The unique identifier for the payment.
          #
          #   @param created_at [Time] The datetime the payment was created.
          #
          #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
          #
          #   @param paid_at [Time, nil] The time at which this payment was successfully collected. Null if the payment h
          #
          #   @param subtotal [Float, nil] The payment amount before taxes and discounts are applied. In the currency speci
          #
          #   @param total [Float] The total amount charged to the customer for this payment, including taxes and a
        end

        class ResolutionEvent < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the resolution event.
          #
          #   @return [String]
          required :id, String

          # @!attribute action
          #   The type of action recorded in this event.
          #
          #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent::Action]
          required :action,
                   enum: -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent::Action }

          # @!attribute created_at
          #   The datetime the resolution event was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute details
          #   The message body or additional context provided with this resolution event. Null
          #   if no details were included.
          #
          #   @return [String, nil]
          required :details, String, nil?: true

          # @!attribute reporter_type
          #   The party who performed this action.
          #
          #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent::ReporterType]
          required :reporter_type,
                   enum: -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent::ReporterType }

          # @!method initialize(id:, action:, created_at:, details:, reporter_type:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent}
          #   for more details.
          #
          #   A resolution event is a message or action within a resolution case, such as a
          #   response, escalation, or status change.
          #
          #   @param id [String] The unique identifier for the resolution event.
          #
          #   @param action [Symbol, WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent::Action] The type of action recorded in this event.
          #
          #   @param created_at [Time] The datetime the resolution event was created.
          #
          #   @param details [String, nil] The message body or additional context provided with this resolution event. Null
          #
          #   @param reporter_type [Symbol, WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent::ReporterType] The party who performed this action.

          # The type of action recorded in this event.
          #
          # @see WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent#action
          module Action
            extend WhopSDK::Internal::Type::Enum

            CREATED = :created
            RESPONDED = :responded
            ACCEPTED = :accepted
            DENIED = :denied
            APPEALED = :appealed
            WITHDREW = :withdrew
            REQUESTED_MORE_INFO = :requested_more_info
            ESCALATED = :escalated
            DISPUTE_OPENED = :dispute_opened
            DISPUTE_CUSTOMER_WON = :dispute_customer_won
            DISPUTE_MERCHANT_WON = :dispute_merchant_won

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The party who performed this action.
          #
          # @see WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data::ResolutionEvent#reporter_type
          module ReporterType
            extend WhopSDK::Internal::Type::Enum

            MERCHANT = :merchant
            CUSTOMER = :customer
            PLATFORM = :platform
            SYSTEM = :system

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent::Data#user
        class User < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the user.
          #
          #   @return [String]
          required :id, String

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

          # @!method initialize(id:, name:, username:)
          #   The customer (buyer) who filed this resolution case.
          #
          #   @param id [String] The unique identifier for the user.
          #
          #   @param name [String, nil] The user's display name shown on their public profile.
          #
          #   @param username [String] The user's unique username shown on their public profile.
        end
      end
    end
  end
end
