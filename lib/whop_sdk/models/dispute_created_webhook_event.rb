# frozen_string_literal: true

module WhopSDK
  module Models
    class DisputeCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   An object representing a dispute against a company.
      #
      #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::DisputeCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"dispute.created"]
      required :type, const: :"dispute.created"

      # @!method initialize(id:, data:, timestamp:, api_version: :v1, type: :"dispute.created")
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::DisputeCreatedWebhookEvent::Data] An object representing a dispute against a company.
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"dispute.created"] The webhook event type

      # @see WhopSDK::Models::DisputeCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the dispute.
        #
        #   @return [String]
        required :id, String

        # @!attribute access_activity_log
        #   An IP access log for the user from Whop.
        #
        #   @return [String, nil]
        required :access_activity_log, String, nil?: true

        # @!attribute amount
        #   The amount of the dispute (formatted).
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute billing_address
        #   The billing address of the user from their payment details.
        #
        #   @return [String, nil]
        required :billing_address, String, nil?: true

        # @!attribute cancellation_policy_attachment
        #   The cancellation policy for this dispute
        #
        #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::CancellationPolicyAttachment, nil]
        required :cancellation_policy_attachment,
                 -> { WhopSDK::DisputeCreatedWebhookEvent::Data::CancellationPolicyAttachment },
                 nil?: true

        # @!attribute cancellation_policy_disclosure
        #   A cancellation policy disclosure from the company.
        #
        #   @return [String, nil]
        required :cancellation_policy_disclosure, String, nil?: true

        # @!attribute company
        #   The company the dispute is against.
        #
        #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Company, nil]
        required :company, -> { WhopSDK::DisputeCreatedWebhookEvent::Data::Company }, nil?: true

        # @!attribute created_at
        #   When it was made.
        #
        #   @return [Time, nil]
        required :created_at, Time, nil?: true

        # @!attribute currency
        #   The currency of the dispute.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute customer_communication_attachment
        #   The customer communication for this dispute
        #
        #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::CustomerCommunicationAttachment, nil]
        required :customer_communication_attachment,
                 -> { WhopSDK::DisputeCreatedWebhookEvent::Data::CustomerCommunicationAttachment },
                 nil?: true

        # @!attribute customer_email_address
        #   The email of the customer from their payment details. This is submitted in the
        #   evidence packet to the payment processor. You can change it before submitting
        #   the dispute.
        #
        #   @return [String, nil]
        required :customer_email_address, String, nil?: true

        # @!attribute customer_name
        #   The name of the customer from their payment details. This is submitted in the
        #   evidence packet to the payment processor. You can change it before submitting
        #   the dispute.
        #
        #   @return [String, nil]
        required :customer_name, String, nil?: true

        # @!attribute editable
        #   Whether or not the dispute data can be edited.
        #
        #   @return [Boolean, nil]
        required :editable, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute needs_response_by
        #   The last date the dispute is allow to be submitted by.
        #
        #   @return [Time, nil]
        required :needs_response_by, Time, nil?: true

        # @!attribute notes
        #   Additional notes the company chooses to submit regarding the dispute.
        #
        #   @return [String, nil]
        required :notes, String, nil?: true

        # @!attribute payment
        #   The payment that got disputed
        #
        #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment, nil]
        required :payment, -> { WhopSDK::DisputeCreatedWebhookEvent::Data::Payment }, nil?: true

        # @!attribute plan
        #   The plan that got disputed
        #
        #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Plan, nil]
        required :plan, -> { WhopSDK::DisputeCreatedWebhookEvent::Data::Plan }, nil?: true

        # @!attribute product
        #   The product that got disputed
        #
        #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Product, nil]
        required :product, -> { WhopSDK::DisputeCreatedWebhookEvent::Data::Product }, nil?: true

        # @!attribute product_description
        #   The description of the product from the company.
        #
        #   @return [String, nil]
        required :product_description, String, nil?: true

        # @!attribute reason
        #   The reason for the dispute
        #
        #   @return [String, nil]
        required :reason, String, nil?: true

        # @!attribute refund_policy_attachment
        #   The refund policy for this dispute
        #
        #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::RefundPolicyAttachment, nil]
        required :refund_policy_attachment,
                 -> { WhopSDK::DisputeCreatedWebhookEvent::Data::RefundPolicyAttachment },
                 nil?: true

        # @!attribute refund_policy_disclosure
        #   A refund policy disclosure from the company.
        #
        #   @return [String, nil]
        required :refund_policy_disclosure, String, nil?: true

        # @!attribute refund_refusal_explanation
        #   A description on why the refund is being refused by the company.
        #
        #   @return [String, nil]
        required :refund_refusal_explanation, String, nil?: true

        # @!attribute service_date
        #   When the product was delivered by the company.
        #
        #   @return [String, nil]
        required :service_date, String, nil?: true

        # @!attribute status
        #   The status of the dispute (mimics stripe's dispute status).
        #
        #   @return [Symbol, WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::DisputeCreatedWebhookEvent::Data::Status }

        # @!attribute uncategorized_attachment
        #   An attachment that did not fit into the other categories
        #
        #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::UncategorizedAttachment, nil]
        required :uncategorized_attachment,
                 -> { WhopSDK::DisputeCreatedWebhookEvent::Data::UncategorizedAttachment },
                 nil?: true

        # @!attribute visa_rdr
        #   Whether or not the dispute is a Visa Rapid Dispute Resolution.
        #
        #   @return [Boolean]
        required :visa_rdr, WhopSDK::Internal::Type::Boolean

        # @!method initialize(id:, access_activity_log:, amount:, billing_address:, cancellation_policy_attachment:, cancellation_policy_disclosure:, company:, created_at:, currency:, customer_communication_attachment:, customer_email_address:, customer_name:, editable:, needs_response_by:, notes:, payment:, plan:, product:, product_description:, reason:, refund_policy_attachment:, refund_policy_disclosure:, refund_refusal_explanation:, service_date:, status:, uncategorized_attachment:, visa_rdr:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::DisputeCreatedWebhookEvent::Data} for more details.
        #
        #   An object representing a dispute against a company.
        #
        #   @param id [String] The internal ID of the dispute.
        #
        #   @param access_activity_log [String, nil] An IP access log for the user from Whop.
        #
        #   @param amount [Float] The amount of the dispute (formatted).
        #
        #   @param billing_address [String, nil] The billing address of the user from their payment details.
        #
        #   @param cancellation_policy_attachment [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::CancellationPolicyAttachment, nil] The cancellation policy for this dispute
        #
        #   @param cancellation_policy_disclosure [String, nil] A cancellation policy disclosure from the company.
        #
        #   @param company [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Company, nil] The company the dispute is against.
        #
        #   @param created_at [Time, nil] When it was made.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the dispute.
        #
        #   @param customer_communication_attachment [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::CustomerCommunicationAttachment, nil] The customer communication for this dispute
        #
        #   @param customer_email_address [String, nil] The email of the customer from their payment details. This is submitted in the e
        #
        #   @param customer_name [String, nil] The name of the customer from their payment details. This is submitted in the ev
        #
        #   @param editable [Boolean, nil] Whether or not the dispute data can be edited.
        #
        #   @param needs_response_by [Time, nil] The last date the dispute is allow to be submitted by.
        #
        #   @param notes [String, nil] Additional notes the company chooses to submit regarding the dispute.
        #
        #   @param payment [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment, nil] The payment that got disputed
        #
        #   @param plan [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Plan, nil] The plan that got disputed
        #
        #   @param product [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Product, nil] The product that got disputed
        #
        #   @param product_description [String, nil] The description of the product from the company.
        #
        #   @param reason [String, nil] The reason for the dispute
        #
        #   @param refund_policy_attachment [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::RefundPolicyAttachment, nil] The refund policy for this dispute
        #
        #   @param refund_policy_disclosure [String, nil] A refund policy disclosure from the company.
        #
        #   @param refund_refusal_explanation [String, nil] A description on why the refund is being refused by the company.
        #
        #   @param service_date [String, nil] When the product was delivered by the company.
        #
        #   @param status [Symbol, WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Status] The status of the dispute (mimics stripe's dispute status).
        #
        #   @param uncategorized_attachment [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::UncategorizedAttachment, nil] An attachment that did not fit into the other categories
        #
        #   @param visa_rdr [Boolean] Whether or not the dispute is a Visa Rapid Dispute Resolution.

        # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data#cancellation_policy_attachment
        class CancellationPolicyAttachment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the attachment
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute filename
          #   The name of the file
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute url
          #   This is the URL you use to render optimized attachments on the client. This
          #   should be used for apps.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::DisputeCreatedWebhookEvent::Data::CancellationPolicyAttachment}
          #   for more details.
          #
          #   The cancellation policy for this dispute
          #
          #   @param id [String] The ID of the attachment
          #
          #   @param content_type [String, nil] The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @param filename [String, nil] The name of the file
          #
          #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
        end

        # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data#company
        class Company < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the company
          #
          #   @return [String]
          required :id, String

          # @!attribute title
          #   The written name of the company.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, title:)
          #   The company the dispute is against.
          #
          #   @param id [String] The ID of the company
          #
          #   @param title [String] The written name of the company.
        end

        # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data#customer_communication_attachment
        class CustomerCommunicationAttachment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the attachment
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute filename
          #   The name of the file
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute url
          #   This is the URL you use to render optimized attachments on the client. This
          #   should be used for apps.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::DisputeCreatedWebhookEvent::Data::CustomerCommunicationAttachment}
          #   for more details.
          #
          #   The customer communication for this dispute
          #
          #   @param id [String] The ID of the attachment
          #
          #   @param content_type [String, nil] The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @param filename [String, nil] The name of the file
          #
          #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
        end

        # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data#payment
        class Payment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The payment ID
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
          #   The last 4 digits of the card used to make the payment.
          #
          #   @return [String, nil]
          required :card_last4, String, nil?: true

          # @!attribute created_at
          #   The datetime the payment was created
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
          #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment::Member, nil]
          required :member, -> { WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Member }, nil?: true

          # @!attribute membership
          #   The membership attached to this payment.
          #
          #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment::Membership, nil]
          required :membership,
                   -> {
                     WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Membership
                   },
                   nil?: true

          # @!attribute paid_at
          #   The datetime the payment was paid
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
          #   @return [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment::User, nil]
          required :user, -> { WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::User }, nil?: true

          # @!method initialize(id:, billing_reason:, card_brand:, card_last4:, created_at:, currency:, dispute_alerted_at:, member:, membership:, paid_at:, payment_method_type:, subtotal:, total:, usd_total:, user:)
          #   The payment that got disputed
          #
          #   @param id [String] The payment ID
          #
          #   @param billing_reason [Symbol, WhopSDK::Models::BillingReasons, nil] The reason why a specific payment was billed
          #
          #   @param card_brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
          #
          #   @param card_last4 [String, nil] The last 4 digits of the card used to make the payment.
          #
          #   @param created_at [Time] The datetime the payment was created
          #
          #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
          #
          #   @param dispute_alerted_at [Time, nil] When an alert came in that this transaction will be disputed
          #
          #   @param member [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment::Member, nil] The member attached to this payment.
          #
          #   @param membership [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment::Membership, nil] The membership attached to this payment.
          #
          #   @param paid_at [Time, nil] The datetime the payment was paid
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes, nil] The different types of payment methods that can be used.
          #
          #   @param subtotal [Float, nil] The subtotal to show to the creator (excluding buyer fees).
          #
          #   @param total [Float, nil] The total to show to the creator (excluding buyer fees).
          #
          #   @param usd_total [Float, nil] The total in USD to show to the creator (excluding buyer fees).
          #
          #   @param user [WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment::User, nil] The user that made this payment.

          # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment#member
          class Member < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The ID of the member
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
            #   @param id [String] The ID of the member
            #
            #   @param phone [String, nil] The phone number for the member, if available.
          end

          # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment#membership
          class Membership < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The internal ID of the membership.
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
            #   @param id [String] The internal ID of the membership.
            #
            #   @param status [Symbol, WhopSDK::Models::MembershipStatus] The state of the membership.
          end

          # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data::Payment#user
          class User < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The internal ID of the user.
            #
            #   @return [String]
            required :id, String

            # @!attribute email
            #   The email of the user
            #
            #   @return [String, nil]
            required :email, String, nil?: true

            # @!attribute name
            #   The name of the user from their Whop account.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!attribute username
            #   The username of the user from their Whop account.
            #
            #   @return [String]
            required :username, String

            # @!method initialize(id:, email:, name:, username:)
            #   The user that made this payment.
            #
            #   @param id [String] The internal ID of the user.
            #
            #   @param email [String, nil] The email of the user
            #
            #   @param name [String, nil] The name of the user from their Whop account.
            #
            #   @param username [String] The username of the user from their Whop account.
          end
        end

        # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data#plan
        class Plan < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The internal ID of the plan.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The plan that got disputed
          #
          #   @param id [String] The internal ID of the plan.
        end

        # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data#product
        class Product < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The internal ID of the public product.
          #
          #   @return [String]
          required :id, String

          # @!attribute title
          #   The title of the product. Use for Whop 4.0.
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, title:)
          #   The product that got disputed
          #
          #   @param id [String] The internal ID of the public product.
          #
          #   @param title [String] The title of the product. Use for Whop 4.0.
        end

        # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data#refund_policy_attachment
        class RefundPolicyAttachment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the attachment
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute filename
          #   The name of the file
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute url
          #   This is the URL you use to render optimized attachments on the client. This
          #   should be used for apps.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::DisputeCreatedWebhookEvent::Data::RefundPolicyAttachment} for
          #   more details.
          #
          #   The refund policy for this dispute
          #
          #   @param id [String] The ID of the attachment
          #
          #   @param content_type [String, nil] The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @param filename [String, nil] The name of the file
          #
          #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
        end

        # The status of the dispute (mimics stripe's dispute status).
        #
        # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          WARNING_NEEDS_RESPONSE = :warning_needs_response
          WARNING_UNDER_REVIEW = :warning_under_review
          WARNING_CLOSED = :warning_closed
          NEEDS_RESPONSE = :needs_response
          UNDER_REVIEW = :under_review
          WON = :won
          LOST = :lost
          CLOSED = :closed
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::DisputeCreatedWebhookEvent::Data#uncategorized_attachment
        class UncategorizedAttachment < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the attachment
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute filename
          #   The name of the file
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute url
          #   This is the URL you use to render optimized attachments on the client. This
          #   should be used for apps.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::DisputeCreatedWebhookEvent::Data::UncategorizedAttachment} for
          #   more details.
          #
          #   An attachment that did not fit into the other categories
          #
          #   @param id [String] The ID of the attachment
          #
          #   @param content_type [String, nil] The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @param filename [String, nil] The name of the file
          #
          #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
        end
      end
    end
  end
end
