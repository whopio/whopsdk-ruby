# typed: strong

module WhopSDK
  module Models
    class Dispute < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Dispute, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the dispute.
      sig { returns(String) }
      attr_accessor :id

      # A log of IP-based access activity for the customer on Whop, submitted as
      # evidence in the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :access_activity_log

      # The disputed amount in the specified currency, formatted as a decimal.
      sig { returns(Float) }
      attr_accessor :amount

      # The customer's billing address from their payment details, submitted as evidence
      # in the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_address

      # The cancellation policy document uploaded as dispute evidence. Null if no
      # cancellation policy has been provided.
      sig { returns(T.nilable(WhopSDK::Dispute::CancellationPolicyAttachment)) }
      attr_reader :cancellation_policy_attachment

      sig do
        params(
          cancellation_policy_attachment:
            T.nilable(WhopSDK::Dispute::CancellationPolicyAttachment::OrHash)
        ).void
      end
      attr_writer :cancellation_policy_attachment

      # A text disclosure describing the company's cancellation policy, submitted as
      # dispute evidence.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_policy_disclosure

      # The company that the dispute was filed against.
      sig { returns(T.nilable(WhopSDK::Dispute::Company)) }
      attr_reader :company

      sig { params(company: T.nilable(WhopSDK::Dispute::Company::OrHash)).void }
      attr_writer :company

      # The datetime the dispute was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # The three-letter ISO currency code for the disputed amount.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Evidence of customer communication or product usage, uploaded as a dispute
      # attachment. Null if not provided.
      sig do
        returns(T.nilable(WhopSDK::Dispute::CustomerCommunicationAttachment))
      end
      attr_reader :customer_communication_attachment

      sig do
        params(
          customer_communication_attachment:
            T.nilable(WhopSDK::Dispute::CustomerCommunicationAttachment::OrHash)
        ).void
      end
      attr_writer :customer_communication_attachment

      # The customer's email address from their payment details, included in the
      # evidence packet sent to the payment processor. Editable before submission.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email_address

      # The customer's full name from their payment details, included in the evidence
      # packet sent to the payment processor. Editable before submission.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # Whether the dispute evidence can still be edited and submitted. Returns true
      # only when the dispute status requires a response.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :editable

      # The deadline by which dispute evidence must be submitted. Null if no response
      # deadline is set.
      sig { returns(T.nilable(Time)) }
      attr_accessor :needs_response_by

      # Additional freeform notes submitted by the company as part of the dispute
      # evidence.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # The original payment that was disputed.
      sig { returns(T.nilable(WhopSDK::Dispute::Payment)) }
      attr_reader :payment

      sig { params(payment: T.nilable(WhopSDK::Dispute::Payment::OrHash)).void }
      attr_writer :payment

      # The plan associated with the disputed payment. Null if the dispute is not linked
      # to a specific plan.
      sig { returns(T.nilable(WhopSDK::Dispute::Plan)) }
      attr_reader :plan

      sig { params(plan: T.nilable(WhopSDK::Dispute::Plan::OrHash)).void }
      attr_writer :plan

      # The product associated with the disputed payment. Null if the dispute is not
      # linked to a specific product.
      sig { returns(T.nilable(WhopSDK::Dispute::Product)) }
      attr_reader :product

      sig { params(product: T.nilable(WhopSDK::Dispute::Product::OrHash)).void }
      attr_writer :product

      # A description of the product or service provided, submitted as dispute evidence.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_description

      # A human-readable reason for the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # The refund policy document uploaded as dispute evidence. Null if no refund
      # policy has been provided.
      sig { returns(T.nilable(WhopSDK::Dispute::RefundPolicyAttachment)) }
      attr_reader :refund_policy_attachment

      sig do
        params(
          refund_policy_attachment:
            T.nilable(WhopSDK::Dispute::RefundPolicyAttachment::OrHash)
        ).void
      end
      attr_writer :refund_policy_attachment

      # A text disclosure describing the company's refund policy, submitted as dispute
      # evidence.
      sig { returns(T.nilable(String)) }
      attr_accessor :refund_policy_disclosure

      # An explanation from the company for why a refund was refused, submitted as
      # dispute evidence.
      sig { returns(T.nilable(String)) }
      attr_accessor :refund_refusal_explanation

      # The date when the product or service was delivered to the customer, submitted as
      # dispute evidence.
      sig { returns(T.nilable(String)) }
      attr_accessor :service_date

      # The current status of the dispute lifecycle, such as needs_response,
      # under_review, won, or lost.
      sig { returns(WhopSDK::DisputeStatuses::TaggedSymbol) }
      attr_accessor :status

      # An additional attachment that does not fit into the standard evidence
      # categories. Null if not provided.
      sig { returns(T.nilable(WhopSDK::Dispute::UncategorizedAttachment)) }
      attr_reader :uncategorized_attachment

      sig do
        params(
          uncategorized_attachment:
            T.nilable(WhopSDK::Dispute::UncategorizedAttachment::OrHash)
        ).void
      end
      attr_writer :uncategorized_attachment

      # Whether the dispute was automatically resolved through Visa Rapid Dispute
      # Resolution (RDR).
      sig { returns(T::Boolean) }
      attr_accessor :visa_rdr

      # A dispute is a chargeback or payment challenge filed against a company,
      # including evidence and response status.
      sig do
        params(
          id: String,
          access_activity_log: T.nilable(String),
          amount: Float,
          billing_address: T.nilable(String),
          cancellation_policy_attachment:
            T.nilable(WhopSDK::Dispute::CancellationPolicyAttachment::OrHash),
          cancellation_policy_disclosure: T.nilable(String),
          company: T.nilable(WhopSDK::Dispute::Company::OrHash),
          created_at: T.nilable(Time),
          currency: WhopSDK::Currency::OrSymbol,
          customer_communication_attachment:
            T.nilable(
              WhopSDK::Dispute::CustomerCommunicationAttachment::OrHash
            ),
          customer_email_address: T.nilable(String),
          customer_name: T.nilable(String),
          editable: T.nilable(T::Boolean),
          needs_response_by: T.nilable(Time),
          notes: T.nilable(String),
          payment: T.nilable(WhopSDK::Dispute::Payment::OrHash),
          plan: T.nilable(WhopSDK::Dispute::Plan::OrHash),
          product: T.nilable(WhopSDK::Dispute::Product::OrHash),
          product_description: T.nilable(String),
          reason: T.nilable(String),
          refund_policy_attachment:
            T.nilable(WhopSDK::Dispute::RefundPolicyAttachment::OrHash),
          refund_policy_disclosure: T.nilable(String),
          refund_refusal_explanation: T.nilable(String),
          service_date: T.nilable(String),
          status: WhopSDK::DisputeStatuses::OrSymbol,
          uncategorized_attachment:
            T.nilable(WhopSDK::Dispute::UncategorizedAttachment::OrHash),
          visa_rdr: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the dispute.
        id:,
        # A log of IP-based access activity for the customer on Whop, submitted as
        # evidence in the dispute.
        access_activity_log:,
        # The disputed amount in the specified currency, formatted as a decimal.
        amount:,
        # The customer's billing address from their payment details, submitted as evidence
        # in the dispute.
        billing_address:,
        # The cancellation policy document uploaded as dispute evidence. Null if no
        # cancellation policy has been provided.
        cancellation_policy_attachment:,
        # A text disclosure describing the company's cancellation policy, submitted as
        # dispute evidence.
        cancellation_policy_disclosure:,
        # The company that the dispute was filed against.
        company:,
        # The datetime the dispute was created.
        created_at:,
        # The three-letter ISO currency code for the disputed amount.
        currency:,
        # Evidence of customer communication or product usage, uploaded as a dispute
        # attachment. Null if not provided.
        customer_communication_attachment:,
        # The customer's email address from their payment details, included in the
        # evidence packet sent to the payment processor. Editable before submission.
        customer_email_address:,
        # The customer's full name from their payment details, included in the evidence
        # packet sent to the payment processor. Editable before submission.
        customer_name:,
        # Whether the dispute evidence can still be edited and submitted. Returns true
        # only when the dispute status requires a response.
        editable:,
        # The deadline by which dispute evidence must be submitted. Null if no response
        # deadline is set.
        needs_response_by:,
        # Additional freeform notes submitted by the company as part of the dispute
        # evidence.
        notes:,
        # The original payment that was disputed.
        payment:,
        # The plan associated with the disputed payment. Null if the dispute is not linked
        # to a specific plan.
        plan:,
        # The product associated with the disputed payment. Null if the dispute is not
        # linked to a specific product.
        product:,
        # A description of the product or service provided, submitted as dispute evidence.
        product_description:,
        # A human-readable reason for the dispute.
        reason:,
        # The refund policy document uploaded as dispute evidence. Null if no refund
        # policy has been provided.
        refund_policy_attachment:,
        # A text disclosure describing the company's refund policy, submitted as dispute
        # evidence.
        refund_policy_disclosure:,
        # An explanation from the company for why a refund was refused, submitted as
        # dispute evidence.
        refund_refusal_explanation:,
        # The date when the product or service was delivered to the customer, submitted as
        # dispute evidence.
        service_date:,
        # The current status of the dispute lifecycle, such as needs_response,
        # under_review, won, or lost.
        status:,
        # An additional attachment that does not fit into the standard evidence
        # categories. Null if not provided.
        uncategorized_attachment:,
        # Whether the dispute was automatically resolved through Visa Rapid Dispute
        # Resolution (RDR).
        visa_rdr:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            access_activity_log: T.nilable(String),
            amount: Float,
            billing_address: T.nilable(String),
            cancellation_policy_attachment:
              T.nilable(WhopSDK::Dispute::CancellationPolicyAttachment),
            cancellation_policy_disclosure: T.nilable(String),
            company: T.nilable(WhopSDK::Dispute::Company),
            created_at: T.nilable(Time),
            currency: WhopSDK::Currency::TaggedSymbol,
            customer_communication_attachment:
              T.nilable(WhopSDK::Dispute::CustomerCommunicationAttachment),
            customer_email_address: T.nilable(String),
            customer_name: T.nilable(String),
            editable: T.nilable(T::Boolean),
            needs_response_by: T.nilable(Time),
            notes: T.nilable(String),
            payment: T.nilable(WhopSDK::Dispute::Payment),
            plan: T.nilable(WhopSDK::Dispute::Plan),
            product: T.nilable(WhopSDK::Dispute::Product),
            product_description: T.nilable(String),
            reason: T.nilable(String),
            refund_policy_attachment:
              T.nilable(WhopSDK::Dispute::RefundPolicyAttachment),
            refund_policy_disclosure: T.nilable(String),
            refund_refusal_explanation: T.nilable(String),
            service_date: T.nilable(String),
            status: WhopSDK::DisputeStatuses::TaggedSymbol,
            uncategorized_attachment:
              T.nilable(WhopSDK::Dispute::UncategorizedAttachment),
            visa_rdr: T::Boolean
          }
        )
      end
      def to_hash
      end

      class CancellationPolicyAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Dispute::CancellationPolicyAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The original filename of the uploaded attachment, including its file extension.
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The cancellation policy document uploaded as dispute evidence. Null if no
        # cancellation policy has been provided.
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          content_type:,
          # The original filename of the uploaded attachment, including its file extension.
          filename:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content_type: T.nilable(String),
              filename: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Dispute::Company, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The written name of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company that the dispute was filed against.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company.
          id:,
          # The written name of the company.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class CustomerCommunicationAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Dispute::CustomerCommunicationAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The original filename of the uploaded attachment, including its file extension.
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # Evidence of customer communication or product usage, uploaded as a dispute
        # attachment. Null if not provided.
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          content_type:,
          # The original filename of the uploaded attachment, including its file extension.
          filename:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content_type: T.nilable(String),
              filename: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Payment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Dispute::Payment, WhopSDK::Internal::AnyHash)
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
        sig { returns(T.nilable(WhopSDK::Dispute::Payment::Member)) }
        attr_reader :member

        sig do
          params(
            member: T.nilable(WhopSDK::Dispute::Payment::Member::OrHash)
          ).void
        end
        attr_writer :member

        # The membership attached to this payment.
        sig { returns(T.nilable(WhopSDK::Dispute::Payment::Membership)) }
        attr_reader :membership

        sig do
          params(
            membership: T.nilable(WhopSDK::Dispute::Payment::Membership::OrHash)
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
        sig { returns(T.nilable(WhopSDK::Dispute::Payment::User)) }
        attr_reader :user

        sig do
          params(user: T.nilable(WhopSDK::Dispute::Payment::User::OrHash)).void
        end
        attr_writer :user

        # The original payment that was disputed.
        sig do
          params(
            id: String,
            billing_reason: T.nilable(WhopSDK::BillingReasons::OrSymbol),
            card_brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
            card_last4: T.nilable(String),
            created_at: Time,
            currency: T.nilable(WhopSDK::Currency::OrSymbol),
            dispute_alerted_at: T.nilable(Time),
            member: T.nilable(WhopSDK::Dispute::Payment::Member::OrHash),
            membership:
              T.nilable(WhopSDK::Dispute::Payment::Membership::OrHash),
            paid_at: T.nilable(Time),
            payment_method_type:
              T.nilable(WhopSDK::PaymentMethodTypes::OrSymbol),
            subtotal: T.nilable(Float),
            total: T.nilable(Float),
            usd_total: T.nilable(Float),
            user: T.nilable(WhopSDK::Dispute::Payment::User::OrHash)
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
              billing_reason: T.nilable(WhopSDK::BillingReasons::TaggedSymbol),
              card_brand: T.nilable(WhopSDK::CardBrands::TaggedSymbol),
              card_last4: T.nilable(String),
              created_at: Time,
              currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
              dispute_alerted_at: T.nilable(Time),
              member: T.nilable(WhopSDK::Dispute::Payment::Member),
              membership: T.nilable(WhopSDK::Dispute::Payment::Membership),
              paid_at: T.nilable(Time),
              payment_method_type:
                T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol),
              subtotal: T.nilable(Float),
              total: T.nilable(Float),
              usd_total: T.nilable(Float),
              user: T.nilable(WhopSDK::Dispute::Payment::User)
            }
          )
        end
        def to_hash
        end

        class Member < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Dispute::Payment::Member,
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
                WhopSDK::Dispute::Payment::Membership,
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
              T.any(WhopSDK::Dispute::Payment::User, WhopSDK::Internal::AnyHash)
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

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Dispute::Plan, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the plan.
        sig { returns(String) }
        attr_accessor :id

        # The plan associated with the disputed payment. Null if the dispute is not linked
        # to a specific plan.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the plan.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Dispute::Product, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The product associated with the disputed payment. Null if the dispute is not
        # linked to a specific product.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the product.
          id:,
          # The display name of the product shown to customers on the product page and in
          # search results.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class RefundPolicyAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Dispute::RefundPolicyAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The original filename of the uploaded attachment, including its file extension.
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The refund policy document uploaded as dispute evidence. Null if no refund
        # policy has been provided.
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          content_type:,
          # The original filename of the uploaded attachment, including its file extension.
          filename:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content_type: T.nilable(String),
              filename: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class UncategorizedAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Dispute::UncategorizedAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The original filename of the uploaded attachment, including its file extension.
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # An additional attachment that does not fit into the standard evidence
        # categories. Null if not provided.
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          content_type:,
          # The original filename of the uploaded attachment, including its file extension.
          filename:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content_type: T.nilable(String),
              filename: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
