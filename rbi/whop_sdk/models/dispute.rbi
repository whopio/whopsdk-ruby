# typed: strong

module WhopSDK
  module Models
    class Dispute < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Dispute, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the dispute.
      sig { returns(String) }
      attr_accessor :id

      # An IP access log for the user from Whop.
      sig { returns(T.nilable(String)) }
      attr_accessor :access_activity_log

      # The amount of the dispute (formatted).
      sig { returns(Float) }
      attr_accessor :amount

      # The billing address of the user from their payment details.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_address

      # The cancellation policy for this dispute
      sig { returns(T.nilable(WhopSDK::Dispute::CancellationPolicyAttachment)) }
      attr_reader :cancellation_policy_attachment

      sig do
        params(
          cancellation_policy_attachment:
            T.nilable(WhopSDK::Dispute::CancellationPolicyAttachment::OrHash)
        ).void
      end
      attr_writer :cancellation_policy_attachment

      # A cancellation policy disclosure from the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_policy_disclosure

      # The company the dispute is against.
      sig { returns(T.nilable(WhopSDK::Dispute::Company)) }
      attr_reader :company

      sig { params(company: T.nilable(WhopSDK::Dispute::Company::OrHash)).void }
      attr_writer :company

      # The datetime the dispute was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # The currency of the dispute.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The customer communication for this dispute
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

      # The email of the customer from their payment details. This is submitted in the
      # evidence packet to the payment processor. You can change it before submitting
      # the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email_address

      # The name of the customer from their payment details. This is submitted in the
      # evidence packet to the payment processor. You can change it before submitting
      # the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # Whether or not the dispute data can be edited.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :editable

      # The last date the dispute is allow to be submitted by.
      sig { returns(T.nilable(Time)) }
      attr_accessor :needs_response_by

      # Additional notes the company chooses to submit regarding the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # The payment that got disputed
      sig { returns(T.nilable(WhopSDK::Dispute::Payment)) }
      attr_reader :payment

      sig { params(payment: T.nilable(WhopSDK::Dispute::Payment::OrHash)).void }
      attr_writer :payment

      # The plan that got disputed
      sig { returns(T.nilable(WhopSDK::Dispute::Plan)) }
      attr_reader :plan

      sig { params(plan: T.nilable(WhopSDK::Dispute::Plan::OrHash)).void }
      attr_writer :plan

      # The product that got disputed
      sig { returns(T.nilable(WhopSDK::Dispute::Product)) }
      attr_reader :product

      sig { params(product: T.nilable(WhopSDK::Dispute::Product::OrHash)).void }
      attr_writer :product

      # The description of the product from the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_description

      # The reason for the dispute
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # The refund policy for this dispute
      sig { returns(T.nilable(WhopSDK::Dispute::RefundPolicyAttachment)) }
      attr_reader :refund_policy_attachment

      sig do
        params(
          refund_policy_attachment:
            T.nilable(WhopSDK::Dispute::RefundPolicyAttachment::OrHash)
        ).void
      end
      attr_writer :refund_policy_attachment

      # A refund policy disclosure from the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :refund_policy_disclosure

      # A description on why the refund is being refused by the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :refund_refusal_explanation

      # When the product was delivered by the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :service_date

      # The status of the dispute (mimics stripe's dispute status).
      sig { returns(WhopSDK::DisputeStatuses::TaggedSymbol) }
      attr_accessor :status

      # An attachment that did not fit into the other categories
      sig { returns(T.nilable(WhopSDK::Dispute::UncategorizedAttachment)) }
      attr_reader :uncategorized_attachment

      sig do
        params(
          uncategorized_attachment:
            T.nilable(WhopSDK::Dispute::UncategorizedAttachment::OrHash)
        ).void
      end
      attr_writer :uncategorized_attachment

      # Whether or not the dispute is a Visa Rapid Dispute Resolution.
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
        # An IP access log for the user from Whop.
        access_activity_log:,
        # The amount of the dispute (formatted).
        amount:,
        # The billing address of the user from their payment details.
        billing_address:,
        # The cancellation policy for this dispute
        cancellation_policy_attachment:,
        # A cancellation policy disclosure from the company.
        cancellation_policy_disclosure:,
        # The company the dispute is against.
        company:,
        # The datetime the dispute was created.
        created_at:,
        # The currency of the dispute.
        currency:,
        # The customer communication for this dispute
        customer_communication_attachment:,
        # The email of the customer from their payment details. This is submitted in the
        # evidence packet to the payment processor. You can change it before submitting
        # the dispute.
        customer_email_address:,
        # The name of the customer from their payment details. This is submitted in the
        # evidence packet to the payment processor. You can change it before submitting
        # the dispute.
        customer_name:,
        # Whether or not the dispute data can be edited.
        editable:,
        # The last date the dispute is allow to be submitted by.
        needs_response_by:,
        # Additional notes the company chooses to submit regarding the dispute.
        notes:,
        # The payment that got disputed
        payment:,
        # The plan that got disputed
        plan:,
        # The product that got disputed
        product:,
        # The description of the product from the company.
        product_description:,
        # The reason for the dispute
        reason:,
        # The refund policy for this dispute
        refund_policy_attachment:,
        # A refund policy disclosure from the company.
        refund_policy_disclosure:,
        # A description on why the refund is being refused by the company.
        refund_refusal_explanation:,
        # When the product was delivered by the company.
        service_date:,
        # The status of the dispute (mimics stripe's dispute status).
        status:,
        # An attachment that did not fit into the other categories
        uncategorized_attachment:,
        # Whether or not the dispute is a Visa Rapid Dispute Resolution.
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

        # The ID of the attachment
        sig { returns(String) }
        attr_accessor :id

        # The attachment's content type (e.g., image/jpg, video/mp4)
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The name of the file
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The cancellation policy for this dispute
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the attachment
          id:,
          # The attachment's content type (e.g., image/jpg, video/mp4)
          content_type:,
          # The name of the file
          filename:,
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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

        # The company the dispute is against.
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

        # The ID of the attachment
        sig { returns(String) }
        attr_accessor :id

        # The attachment's content type (e.g., image/jpg, video/mp4)
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The name of the file
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The customer communication for this dispute
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the attachment
          id:,
          # The attachment's content type (e.g., image/jpg, video/mp4)
          content_type:,
          # The name of the file
          filename:,
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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

        # The last 4 digits of the card used to make the payment.
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
        sig { returns(T.nilable(WhopSDK::Dispute::Payment::User)) }
        attr_reader :user

        sig do
          params(user: T.nilable(WhopSDK::Dispute::Payment::User::OrHash)).void
        end
        attr_writer :user

        # The payment that got disputed
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
          # The last 4 digits of the card used to make the payment.
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
            # The unique identifier for the user.
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

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Dispute::Plan, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the plan.
        sig { returns(String) }
        attr_accessor :id

        # The plan that got disputed
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

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The product that got disputed
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the product.
          id:,
          # The title of the product. Use for Whop 4.0.
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

        # The ID of the attachment
        sig { returns(String) }
        attr_accessor :id

        # The attachment's content type (e.g., image/jpg, video/mp4)
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The name of the file
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The refund policy for this dispute
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the attachment
          id:,
          # The attachment's content type (e.g., image/jpg, video/mp4)
          content_type:,
          # The name of the file
          filename:,
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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

        # The ID of the attachment
        sig { returns(String) }
        attr_accessor :id

        # The attachment's content type (e.g., image/jpg, video/mp4)
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The name of the file
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # An attachment that did not fit into the other categories
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the attachment
          id:,
          # The attachment's content type (e.g., image/jpg, video/mp4)
          content_type:,
          # The name of the file
          filename:,
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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
