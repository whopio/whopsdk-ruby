# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Disputes#retrieve
    class Dispute < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the dispute.
      #
      #   @return [String]
      required :id, String

      # @!attribute access_activity_log
      #   A log of IP-based access activity for the customer on Whop, submitted as
      #   evidence in the dispute.
      #
      #   @return [String, nil]
      required :access_activity_log, String, nil?: true

      # @!attribute amount
      #   The disputed amount in the specified currency, formatted as a decimal.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute billing_address
      #   The customer's billing address from their payment details, submitted as evidence
      #   in the dispute.
      #
      #   @return [String, nil]
      required :billing_address, String, nil?: true

      # @!attribute cancellation_policy_attachment
      #   The cancellation policy document uploaded as dispute evidence. Null if no
      #   cancellation policy has been provided.
      #
      #   @return [WhopSDK::Models::Dispute::CancellationPolicyAttachment, nil]
      required :cancellation_policy_attachment,
               -> { WhopSDK::Dispute::CancellationPolicyAttachment },
               nil?: true

      # @!attribute cancellation_policy_disclosure
      #   A text disclosure describing the company's cancellation policy, submitted as
      #   dispute evidence.
      #
      #   @return [String, nil]
      required :cancellation_policy_disclosure, String, nil?: true

      # @!attribute company
      #   The company that the dispute was filed against.
      #
      #   @return [WhopSDK::Models::Dispute::Company, nil]
      required :company, -> { WhopSDK::Dispute::Company }, nil?: true

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

      # @!attribute customer_communication_attachment
      #   Evidence of customer communication or product usage, uploaded as a dispute
      #   attachment. Null if not provided.
      #
      #   @return [WhopSDK::Models::Dispute::CustomerCommunicationAttachment, nil]
      required :customer_communication_attachment,
               -> { WhopSDK::Dispute::CustomerCommunicationAttachment },
               nil?: true

      # @!attribute customer_email_address
      #   The customer's email address from their payment details, included in the
      #   evidence packet sent to the payment processor. Editable before submission.
      #
      #   @return [String, nil]
      required :customer_email_address, String, nil?: true

      # @!attribute customer_name
      #   The customer's full name from their payment details, included in the evidence
      #   packet sent to the payment processor. Editable before submission.
      #
      #   @return [String, nil]
      required :customer_name, String, nil?: true

      # @!attribute editable
      #   Whether the dispute evidence can still be edited and submitted. Returns true
      #   only when the dispute status requires a response.
      #
      #   @return [Boolean, nil]
      required :editable, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute needs_response_by
      #   The deadline by which dispute evidence must be submitted. Null if no response
      #   deadline is set.
      #
      #   @return [Time, nil]
      required :needs_response_by, Time, nil?: true

      # @!attribute notes
      #   Additional freeform notes submitted by the company as part of the dispute
      #   evidence.
      #
      #   @return [String, nil]
      required :notes, String, nil?: true

      # @!attribute payment
      #   The original payment that was disputed.
      #
      #   @return [WhopSDK::Models::Dispute::Payment, nil]
      required :payment, -> { WhopSDK::Dispute::Payment }, nil?: true

      # @!attribute plan
      #   The plan associated with the disputed payment. Null if the dispute is not linked
      #   to a specific plan.
      #
      #   @return [WhopSDK::Models::Dispute::Plan, nil]
      required :plan, -> { WhopSDK::Dispute::Plan }, nil?: true

      # @!attribute product
      #   The product associated with the disputed payment. Null if the dispute is not
      #   linked to a specific product.
      #
      #   @return [WhopSDK::Models::Dispute::Product, nil]
      required :product, -> { WhopSDK::Dispute::Product }, nil?: true

      # @!attribute product_description
      #   A description of the product or service provided, submitted as dispute evidence.
      #
      #   @return [String, nil]
      required :product_description, String, nil?: true

      # @!attribute reason
      #   A human-readable reason for the dispute.
      #
      #   @return [String, nil]
      required :reason, String, nil?: true

      # @!attribute refund_policy_attachment
      #   The refund policy document uploaded as dispute evidence. Null if no refund
      #   policy has been provided.
      #
      #   @return [WhopSDK::Models::Dispute::RefundPolicyAttachment, nil]
      required :refund_policy_attachment, -> { WhopSDK::Dispute::RefundPolicyAttachment }, nil?: true

      # @!attribute refund_policy_disclosure
      #   A text disclosure describing the company's refund policy, submitted as dispute
      #   evidence.
      #
      #   @return [String, nil]
      required :refund_policy_disclosure, String, nil?: true

      # @!attribute refund_refusal_explanation
      #   An explanation from the company for why a refund was refused, submitted as
      #   dispute evidence.
      #
      #   @return [String, nil]
      required :refund_refusal_explanation, String, nil?: true

      # @!attribute service_date
      #   The date when the product or service was delivered to the customer, submitted as
      #   dispute evidence.
      #
      #   @return [String, nil]
      required :service_date, String, nil?: true

      # @!attribute status
      #   The current status of the dispute lifecycle, such as needs_response,
      #   under_review, won, or lost.
      #
      #   @return [Symbol, WhopSDK::Models::DisputeStatuses]
      required :status, enum: -> { WhopSDK::DisputeStatuses }

      # @!attribute uncategorized_attachment
      #   An additional attachment that does not fit into the standard evidence
      #   categories. Null if not provided.
      #
      #   @return [WhopSDK::Models::Dispute::UncategorizedAttachment, nil]
      required :uncategorized_attachment, -> { WhopSDK::Dispute::UncategorizedAttachment }, nil?: true

      # @!attribute visa_rdr
      #   Whether the dispute was automatically resolved through Visa Rapid Dispute
      #   Resolution (RDR).
      #
      #   @return [Boolean]
      required :visa_rdr, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, access_activity_log:, amount:, billing_address:, cancellation_policy_attachment:, cancellation_policy_disclosure:, company:, created_at:, currency:, customer_communication_attachment:, customer_email_address:, customer_name:, editable:, needs_response_by:, notes:, payment:, plan:, product:, product_description:, reason:, refund_policy_attachment:, refund_policy_disclosure:, refund_refusal_explanation:, service_date:, status:, uncategorized_attachment:, visa_rdr:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Dispute}
      #   for more details.
      #
      #   A dispute is a chargeback or payment challenge filed against a company,
      #   including evidence and response status.
      #
      #   @param id [String] The unique identifier for the dispute.
      #
      #   @param access_activity_log [String, nil] A log of IP-based access activity for the customer on Whop, submitted as evidenc
      #
      #   @param amount [Float] The disputed amount in the specified currency, formatted as a decimal.
      #
      #   @param billing_address [String, nil] The customer's billing address from their payment details, submitted as evidence
      #
      #   @param cancellation_policy_attachment [WhopSDK::Models::Dispute::CancellationPolicyAttachment, nil] The cancellation policy document uploaded as dispute evidence. Null if no cancel
      #
      #   @param cancellation_policy_disclosure [String, nil] A text disclosure describing the company's cancellation policy, submitted as dis
      #
      #   @param company [WhopSDK::Models::Dispute::Company, nil] The company that the dispute was filed against.
      #
      #   @param created_at [Time, nil] The datetime the dispute was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the disputed amount.
      #
      #   @param customer_communication_attachment [WhopSDK::Models::Dispute::CustomerCommunicationAttachment, nil] Evidence of customer communication or product usage, uploaded as a dispute attac
      #
      #   @param customer_email_address [String, nil] The customer's email address from their payment details, included in the evidenc
      #
      #   @param customer_name [String, nil] The customer's full name from their payment details, included in the evidence pa
      #
      #   @param editable [Boolean, nil] Whether the dispute evidence can still be edited and submitted. Returns true onl
      #
      #   @param needs_response_by [Time, nil] The deadline by which dispute evidence must be submitted. Null if no response de
      #
      #   @param notes [String, nil] Additional freeform notes submitted by the company as part of the dispute eviden
      #
      #   @param payment [WhopSDK::Models::Dispute::Payment, nil] The original payment that was disputed.
      #
      #   @param plan [WhopSDK::Models::Dispute::Plan, nil] The plan associated with the disputed payment. Null if the dispute is not linked
      #
      #   @param product [WhopSDK::Models::Dispute::Product, nil] The product associated with the disputed payment. Null if the dispute is not lin
      #
      #   @param product_description [String, nil] A description of the product or service provided, submitted as dispute evidence.
      #
      #   @param reason [String, nil] A human-readable reason for the dispute.
      #
      #   @param refund_policy_attachment [WhopSDK::Models::Dispute::RefundPolicyAttachment, nil] The refund policy document uploaded as dispute evidence. Null if no refund polic
      #
      #   @param refund_policy_disclosure [String, nil] A text disclosure describing the company's refund policy, submitted as dispute e
      #
      #   @param refund_refusal_explanation [String, nil] An explanation from the company for why a refund was refused, submitted as dispu
      #
      #   @param service_date [String, nil] The date when the product or service was delivered to the customer, submitted as
      #
      #   @param status [Symbol, WhopSDK::Models::DisputeStatuses] The current status of the dispute lifecycle, such as needs_response, under_revie
      #
      #   @param uncategorized_attachment [WhopSDK::Models::Dispute::UncategorizedAttachment, nil] An additional attachment that does not fit into the standard evidence categories
      #
      #   @param visa_rdr [Boolean] Whether the dispute was automatically resolved through Visa Rapid Dispute Resolu

      # @see WhopSDK::Models::Dispute#cancellation_policy_attachment
      class CancellationPolicyAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The original filename of the uploaded attachment, including its file extension.
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::CancellationPolicyAttachment} for more details.
        #
        #   The cancellation policy document uploaded as dispute evidence. Null if no
        #   cancellation policy has been provided.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @param filename [String, nil] The original filename of the uploaded attachment, including its file extension.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # @see WhopSDK::Models::Dispute#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The written name of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company that the dispute was filed against.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The written name of the company.
      end

      # @see WhopSDK::Models::Dispute#customer_communication_attachment
      class CustomerCommunicationAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The original filename of the uploaded attachment, including its file extension.
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::CustomerCommunicationAttachment} for more details.
        #
        #   Evidence of customer communication or product usage, uploaded as a dispute
        #   attachment. Null if not provided.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @param filename [String, nil] The original filename of the uploaded attachment, including its file extension.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # @see WhopSDK::Models::Dispute#payment
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
        #   @return [WhopSDK::Models::Dispute::Payment::Member, nil]
        required :member, -> { WhopSDK::Dispute::Payment::Member }, nil?: true

        # @!attribute membership
        #   The membership attached to this payment.
        #
        #   @return [WhopSDK::Models::Dispute::Payment::Membership, nil]
        required :membership, -> { WhopSDK::Dispute::Payment::Membership }, nil?: true

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
        #   @return [WhopSDK::Models::Dispute::Payment::User, nil]
        required :user, -> { WhopSDK::Dispute::Payment::User }, nil?: true

        # @!method initialize(id:, billing_reason:, card_brand:, card_last4:, created_at:, currency:, dispute_alerted_at:, member:, membership:, paid_at:, payment_method_type:, subtotal:, total:, usd_total:, user:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::Payment} for more details.
        #
        #   The original payment that was disputed.
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
        #   @param member [WhopSDK::Models::Dispute::Payment::Member, nil] The member attached to this payment.
        #
        #   @param membership [WhopSDK::Models::Dispute::Payment::Membership, nil] The membership attached to this payment.
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
        #   @param user [WhopSDK::Models::Dispute::Payment::User, nil] The user that made this payment.

        # @see WhopSDK::Models::Dispute::Payment#member
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

        # @see WhopSDK::Models::Dispute::Payment#membership
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

        # @see WhopSDK::Models::Dispute::Payment#user
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
          #   {WhopSDK::Models::Dispute::Payment::User} for more details.
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

      # @see WhopSDK::Models::Dispute#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The plan associated with the disputed payment. Null if the dispute is not linked
        #   to a specific plan.
        #
        #   @param id [String] The unique identifier for the plan.
      end

      # @see WhopSDK::Models::Dispute#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::Product} for more details.
        #
        #   The product associated with the disputed payment. Null if the dispute is not
        #   linked to a specific product.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # @see WhopSDK::Models::Dispute#refund_policy_attachment
      class RefundPolicyAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The original filename of the uploaded attachment, including its file extension.
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::RefundPolicyAttachment} for more details.
        #
        #   The refund policy document uploaded as dispute evidence. Null if no refund
        #   policy has been provided.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @param filename [String, nil] The original filename of the uploaded attachment, including its file extension.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # @see WhopSDK::Models::Dispute#uncategorized_attachment
      class UncategorizedAttachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The original filename of the uploaded attachment, including its file extension.
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Dispute::UncategorizedAttachment} for more details.
        #
        #   An additional attachment that does not fit into the standard evidence
        #   categories. Null if not provided.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @param filename [String, nil] The original filename of the uploaded attachment, including its file extension.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end
    end
  end
end
