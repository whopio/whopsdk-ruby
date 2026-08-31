# typed: strong

module WhopSDK
  module Models
    class ExportCompletedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::ExportCompletedWebhookEvent,
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

      sig { returns(WhopSDK::ExportCompletedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::ExportCompletedWebhookEvent::Data::OrHash).void
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
          data: WhopSDK::ExportCompletedWebhookEvent::Data::OrHash,
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
        type: :"export.completed"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::ExportCompletedWebhookEvent::Data,
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
              WhopSDK::ExportCompletedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Export ID, prefixed `exprt_`.
        sig { returns(String) }
        attr_accessor :id

        # When the export was requested, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        # A short-lived link to download the finished file. `null` until `status` is
        # `completed`, and again once the export has expired.
        sig { returns(T.nilable(String)) }
        attr_accessor :download_url

        # When the file is deleted and the export moves to `expired`, as an ISO 8601
        # timestamp. Exports are retained for 30 days.
        sig { returns(String) }
        attr_accessor :expires_at

        # Estimated completion percentage from 0 to 100.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :progress_percent

        # The resource that was exported, e.g. `receipts`, `members`, or `payouts`.
        sig do
          returns(
            WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
          )
        end
        attr_accessor :resource

        # `pending` or `processing` while the file is generated, `completed` when the
        # download is ready, `failed` if it errored, `expired` once the file has been
        # deleted.
        sig do
          returns(
            WhopSDK::ExportCompletedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # When the export last changed, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: String,
            download_url: T.nilable(String),
            expires_at: String,
            progress_percent: T.nilable(Integer),
            resource:
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::OrSymbol,
            status:
              WhopSDK::ExportCompletedWebhookEvent::Data::Status::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Export ID, prefixed `exprt_`.
          id:,
          # When the export was requested, as an ISO 8601 timestamp.
          created_at:,
          # A short-lived link to download the finished file. `null` until `status` is
          # `completed`, and again once the export has expired.
          download_url:,
          # When the file is deleted and the export moves to `expired`, as an ISO 8601
          # timestamp. Exports are retained for 30 days.
          expires_at:,
          # Estimated completion percentage from 0 to 100.
          progress_percent:,
          # The resource that was exported, e.g. `receipts`, `members`, or `payouts`.
          resource:,
          # `pending` or `processing` while the file is generated, `completed` when the
          # download is ready, `failed` if it errored, `expired` once the file has been
          # deleted.
          status:,
          # When the export last changed, as an ISO 8601 timestamp.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              download_url: T.nilable(String),
              expires_at: String,
              progress_percent: T.nilable(Integer),
              resource:
                WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol,
              status:
                WhopSDK::ExportCompletedWebhookEvent::Data::Status::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        # The resource that was exported, e.g. `receipts`, `members`, or `payouts`.
        module Resource
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::ExportCompletedWebhookEvent::Data::Resource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_CAMPAIGNS =
            T.let(
              :ad_campaigns,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          AD_GROUPS =
            T.let(
              :ad_groups,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          ADS =
            T.let(
              :ads,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          APPS =
            T.let(
              :apps,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          AUDIENCES =
            T.let(
              :audiences,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          BOUNTIES =
            T.let(
              :bounties,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          BOUNTY_SUBMISSIONS =
            T.let(
              :bounty_submissions,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CARD_TRANSACTIONS =
            T.let(
              :card_transactions,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CHECKOUT_CONFIGURATIONS =
            T.let(
              :checkout_configurations,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          DISPUTES =
            T.let(
              :disputes,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          EVENTS =
            T.let(
              :events,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          FINANCIAL_ACTIVITY =
            T.let(
              :"financial-activity",
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PAYOUT_METHODS =
            T.let(
              :payout_methods,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PAYOUTS =
            T.let(
              :payouts,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PEOPLE =
            T.let(
              :people,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PLANS =
            T.let(
              :plans,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PRODUCTS =
            T.let(
              :products,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          RESOLUTION_CENTER_CASES =
            T.let(
              :resolution_center_cases,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          SHIPMENTS =
            T.let(
              :shipments,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          SOCIAL_ACCOUNTS =
            T.let(
              :social_accounts,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          TEAM_MEMBERS =
            T.let(
              :team_members,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          TRANSFERS =
            T.let(
              :transfers,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          WEBHOOKS =
            T.let(
              :webhooks,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          MEMBERS =
            T.let(
              :members,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          RECEIPTS =
            T.let(
              :receipts,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          UNCLAIMED_MEMBERSHIPS =
            T.let(
              :unclaimed_memberships,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          MEMBERSHIPS =
            T.let(
              :memberships,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          TRACKING_LINKS =
            T.let(
              :tracking_links,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PROMO_CODES =
            T.let(
              :promo_codes,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          RESOLUTIONS =
            T.let(
              :resolutions,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          ENTRIES =
            T.let(
              :entries,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          LEADS =
            T.let(
              :leads,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CONTENT_REWARDS_SUBMISSIONS =
            T.let(
              :content_rewards_submissions,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          INVOICES =
            T.let(
              :invoices,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CANCELATION_REASONS =
            T.let(
              :cancelation_reasons,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CHILD_COMPANIES =
            T.let(
              :child_companies,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          LEDGER_LINES =
            T.let(
              :ledger_lines,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )
          WITHDRAWAL_LINES =
            T.let(
              :withdrawal_lines,
              WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ExportCompletedWebhookEvent::Data::Resource::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # `pending` or `processing` while the file is generated, `completed` when the
        # download is ready, `failed` if it errored, `expired` once the file has been
        # deleted.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::ExportCompletedWebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              WhopSDK::ExportCompletedWebhookEvent::Data::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              WhopSDK::ExportCompletedWebhookEvent::Data::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              WhopSDK::ExportCompletedWebhookEvent::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              WhopSDK::ExportCompletedWebhookEvent::Data::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              WhopSDK::ExportCompletedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ExportCompletedWebhookEvent::Data::Status::TaggedSymbol
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
