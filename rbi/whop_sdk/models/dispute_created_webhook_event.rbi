# typed: strong

module WhopSDK
  module Models
    class DisputeCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::DisputeCreatedWebhookEvent, WhopSDK::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # An object representing a dispute against a company.
      sig { returns(WhopSDK::DisputeCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::DisputeCreatedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          data: WhopSDK::DisputeCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # An object representing a dispute against a company.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"dispute.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::DisputeCreatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::DisputeCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the dispute.
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
        sig do
          returns(
            T.nilable(
              WhopSDK::DisputeCreatedWebhookEvent::Data::CancellationPolicyAttachment
            )
          )
        end
        attr_reader :cancellation_policy_attachment

        sig do
          params(
            cancellation_policy_attachment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::CancellationPolicyAttachment::OrHash
              )
          ).void
        end
        attr_writer :cancellation_policy_attachment

        # A cancellation policy disclosure from the company.
        sig { returns(T.nilable(String)) }
        attr_accessor :cancellation_policy_disclosure

        # The company the dispute is against.
        sig do
          returns(T.nilable(WhopSDK::DisputeCreatedWebhookEvent::Data::Company))
        end
        attr_reader :company

        sig do
          params(
            company:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Company::OrHash
              )
          ).void
        end
        attr_writer :company

        # When it was made.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # The currency of the dispute.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The customer communication for this dispute
        sig do
          returns(
            T.nilable(
              WhopSDK::DisputeCreatedWebhookEvent::Data::CustomerCommunicationAttachment
            )
          )
        end
        attr_reader :customer_communication_attachment

        sig do
          params(
            customer_communication_attachment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::CustomerCommunicationAttachment::OrHash
              )
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
        sig do
          returns(T.nilable(WhopSDK::DisputeCreatedWebhookEvent::Data::Payment))
        end
        attr_reader :payment

        sig do
          params(
            payment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::OrHash
              )
          ).void
        end
        attr_writer :payment

        # The plan that got disputed
        sig do
          returns(T.nilable(WhopSDK::DisputeCreatedWebhookEvent::Data::Plan))
        end
        attr_reader :plan

        sig do
          params(
            plan:
              T.nilable(WhopSDK::DisputeCreatedWebhookEvent::Data::Plan::OrHash)
          ).void
        end
        attr_writer :plan

        # The product that got disputed
        sig do
          returns(T.nilable(WhopSDK::DisputeCreatedWebhookEvent::Data::Product))
        end
        attr_reader :product

        sig do
          params(
            product:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Product::OrHash
              )
          ).void
        end
        attr_writer :product

        # The description of the product from the company.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_description

        # The reason for the dispute
        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        # The refund policy for this dispute
        sig do
          returns(
            T.nilable(
              WhopSDK::DisputeCreatedWebhookEvent::Data::RefundPolicyAttachment
            )
          )
        end
        attr_reader :refund_policy_attachment

        sig do
          params(
            refund_policy_attachment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::RefundPolicyAttachment::OrHash
              )
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
        sig do
          returns(
            WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # An attachment that did not fit into the other categories
        sig do
          returns(
            T.nilable(
              WhopSDK::DisputeCreatedWebhookEvent::Data::UncategorizedAttachment
            )
          )
        end
        attr_reader :uncategorized_attachment

        sig do
          params(
            uncategorized_attachment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::UncategorizedAttachment::OrHash
              )
          ).void
        end
        attr_writer :uncategorized_attachment

        # Whether or not the dispute is a Visa Rapid Dispute Resolution.
        sig { returns(T::Boolean) }
        attr_accessor :visa_rdr

        # An object representing a dispute against a company.
        sig do
          params(
            id: String,
            access_activity_log: T.nilable(String),
            amount: Float,
            billing_address: T.nilable(String),
            cancellation_policy_attachment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::CancellationPolicyAttachment::OrHash
              ),
            cancellation_policy_disclosure: T.nilable(String),
            company:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Company::OrHash
              ),
            created_at: T.nilable(Time),
            currency: WhopSDK::Currency::OrSymbol,
            customer_communication_attachment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::CustomerCommunicationAttachment::OrHash
              ),
            customer_email_address: T.nilable(String),
            customer_name: T.nilable(String),
            editable: T.nilable(T::Boolean),
            needs_response_by: T.nilable(Time),
            notes: T.nilable(String),
            payment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::OrHash
              ),
            plan:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Plan::OrHash
              ),
            product:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Product::OrHash
              ),
            product_description: T.nilable(String),
            reason: T.nilable(String),
            refund_policy_attachment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::RefundPolicyAttachment::OrHash
              ),
            refund_policy_disclosure: T.nilable(String),
            refund_refusal_explanation: T.nilable(String),
            service_date: T.nilable(String),
            status: WhopSDK::DisputeCreatedWebhookEvent::Data::Status::OrSymbol,
            uncategorized_attachment:
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::UncategorizedAttachment::OrHash
              ),
            visa_rdr: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the dispute.
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
          # When it was made.
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
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::CancellationPolicyAttachment
                ),
              cancellation_policy_disclosure: T.nilable(String),
              company:
                T.nilable(WhopSDK::DisputeCreatedWebhookEvent::Data::Company),
              created_at: T.nilable(Time),
              currency: WhopSDK::Currency::TaggedSymbol,
              customer_communication_attachment:
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::CustomerCommunicationAttachment
                ),
              customer_email_address: T.nilable(String),
              customer_name: T.nilable(String),
              editable: T.nilable(T::Boolean),
              needs_response_by: T.nilable(Time),
              notes: T.nilable(String),
              payment:
                T.nilable(WhopSDK::DisputeCreatedWebhookEvent::Data::Payment),
              plan: T.nilable(WhopSDK::DisputeCreatedWebhookEvent::Data::Plan),
              product:
                T.nilable(WhopSDK::DisputeCreatedWebhookEvent::Data::Product),
              product_description: T.nilable(String),
              reason: T.nilable(String),
              refund_policy_attachment:
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::RefundPolicyAttachment
                ),
              refund_policy_disclosure: T.nilable(String),
              refund_refusal_explanation: T.nilable(String),
              service_date: T.nilable(String),
              status:
                WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol,
              uncategorized_attachment:
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::UncategorizedAttachment
                ),
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
                WhopSDK::DisputeCreatedWebhookEvent::Data::CancellationPolicyAttachment,
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
              T.any(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Company,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of the company
          sig { returns(String) }
          attr_accessor :id

          # The written name of the company.
          sig { returns(String) }
          attr_accessor :title

          # The company the dispute is against.
          sig { params(id: String, title: String).returns(T.attached_class) }
          def self.new(
            # The ID of the company
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
                WhopSDK::DisputeCreatedWebhookEvent::Data::CustomerCommunicationAttachment,
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
              T.any(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Payment,
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
                WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Member
              )
            )
          end
          attr_reader :member

          sig do
            params(
              member:
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Member::OrHash
                )
            ).void
          end
          attr_writer :member

          # The membership attached to this payment.
          sig do
            returns(
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Membership
              )
            )
          end
          attr_reader :membership

          sig do
            params(
              membership:
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Membership::OrHash
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
              T.nilable(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::User::OrHash
                )
            ).void
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
              member:
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Member::OrHash
                ),
              membership:
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Membership::OrHash
                ),
              paid_at: T.nilable(Time),
              payment_method_type:
                T.nilable(WhopSDK::PaymentMethodTypes::OrSymbol),
              subtotal: T.nilable(Float),
              total: T.nilable(Float),
              usd_total: T.nilable(Float),
              user:
                T.nilable(
                  WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::User::OrHash
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
                    WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Member
                  ),
                membership:
                  T.nilable(
                    WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Membership
                  ),
                paid_at: T.nilable(Time),
                payment_method_type:
                  T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol),
                subtotal: T.nilable(Float),
                total: T.nilable(Float),
                usd_total: T.nilable(Float),
                user:
                  T.nilable(
                    WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::User
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
                  WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Member,
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
                  WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::Membership,
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
                  WhopSDK::DisputeCreatedWebhookEvent::Data::Payment::User,
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

        class Plan < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Plan,
                WhopSDK::Internal::AnyHash
              )
            end

          # The internal ID of the plan.
          sig { returns(String) }
          attr_accessor :id

          # The plan that got disputed
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The internal ID of the plan.
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
              T.any(
                WhopSDK::DisputeCreatedWebhookEvent::Data::Product,
                WhopSDK::Internal::AnyHash
              )
            end

          # The internal ID of the public product.
          sig { returns(String) }
          attr_accessor :id

          # The title of the product. Use for Whop 4.0.
          sig { returns(String) }
          attr_accessor :title

          # The product that got disputed
          sig { params(id: String, title: String).returns(T.attached_class) }
          def self.new(
            # The internal ID of the public product.
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
                WhopSDK::DisputeCreatedWebhookEvent::Data::RefundPolicyAttachment,
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

        # The status of the dispute (mimics stripe's dispute status).
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::DisputeCreatedWebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WARNING_NEEDS_RESPONSE =
            T.let(
              :warning_needs_response,
              WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          WARNING_UNDER_REVIEW =
            T.let(
              :warning_under_review,
              WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          WARNING_CLOSED =
            T.let(
              :warning_closed,
              WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          NEEDS_RESPONSE =
            T.let(
              :needs_response,
              WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          UNDER_REVIEW =
            T.let(
              :under_review,
              WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          WON =
            T.let(
              :won,
              WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          LOST =
            T.let(
              :lost,
              WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          CLOSED =
            T.let(
              :closed,
              WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::DisputeCreatedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class UncategorizedAttachment < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DisputeCreatedWebhookEvent::Data::UncategorizedAttachment,
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
end
