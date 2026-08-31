# typed: strong

module WhopSDK
  module Models
    class ExportFailedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::ExportFailedWebhookEvent, WhopSDK::Internal::AnyHash)
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

      sig { returns(WhopSDK::ExportFailedWebhookEvent::Data) }
      attr_reader :data

      sig { params(data: WhopSDK::ExportFailedWebhookEvent::Data::OrHash).void }
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
          data: WhopSDK::ExportFailedWebhookEvent::Data::OrHash,
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
        type: :"export.failed"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::ExportFailedWebhookEvent::Data,
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
              WhopSDK::ExportFailedWebhookEvent::Data,
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
            WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
          )
        end
        attr_accessor :resource

        # `pending` or `processing` while the file is generated, `completed` when the
        # download is ready, `failed` if it errored, `expired` once the file has been
        # deleted.
        sig do
          returns(WhopSDK::ExportFailedWebhookEvent::Data::Status::TaggedSymbol)
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
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::OrSymbol,
            status: WhopSDK::ExportFailedWebhookEvent::Data::Status::OrSymbol,
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
                WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol,
              status:
                WhopSDK::ExportFailedWebhookEvent::Data::Status::TaggedSymbol,
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
              T.all(Symbol, WhopSDK::ExportFailedWebhookEvent::Data::Resource)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_CAMPAIGNS =
            T.let(
              :ad_campaigns,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          AD_GROUPS =
            T.let(
              :ad_groups,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          ADS =
            T.let(
              :ads,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          APPS =
            T.let(
              :apps,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          AUDIENCES =
            T.let(
              :audiences,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          BOUNTIES =
            T.let(
              :bounties,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          BOUNTY_SUBMISSIONS =
            T.let(
              :bounty_submissions,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CARD_TRANSACTIONS =
            T.let(
              :card_transactions,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CHECKOUT_CONFIGURATIONS =
            T.let(
              :checkout_configurations,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          DISPUTES =
            T.let(
              :disputes,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          EVENTS =
            T.let(
              :events,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          FINANCIAL_ACTIVITY =
            T.let(
              :"financial-activity",
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PAYOUT_METHODS =
            T.let(
              :payout_methods,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PAYOUTS =
            T.let(
              :payouts,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PEOPLE =
            T.let(
              :people,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PLANS =
            T.let(
              :plans,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PRODUCTS =
            T.let(
              :products,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          RESOLUTION_CENTER_CASES =
            T.let(
              :resolution_center_cases,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          SHIPMENTS =
            T.let(
              :shipments,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          SOCIAL_ACCOUNTS =
            T.let(
              :social_accounts,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          TEAM_MEMBERS =
            T.let(
              :team_members,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          TRANSFERS =
            T.let(
              :transfers,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          WEBHOOKS =
            T.let(
              :webhooks,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          MEMBERS =
            T.let(
              :members,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          RECEIPTS =
            T.let(
              :receipts,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          UNCLAIMED_MEMBERSHIPS =
            T.let(
              :unclaimed_memberships,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          MEMBERSHIPS =
            T.let(
              :memberships,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          TRACKING_LINKS =
            T.let(
              :tracking_links,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          PROMO_CODES =
            T.let(
              :promo_codes,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          RESOLUTIONS =
            T.let(
              :resolutions,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          ENTRIES =
            T.let(
              :entries,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          LEADS =
            T.let(
              :leads,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CONTENT_REWARDS_SUBMISSIONS =
            T.let(
              :content_rewards_submissions,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          INVOICES =
            T.let(
              :invoices,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CANCELATION_REASONS =
            T.let(
              :cancelation_reasons,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          CHILD_COMPANIES =
            T.let(
              :child_companies,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          LEDGER_LINES =
            T.let(
              :ledger_lines,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )
          WITHDRAWAL_LINES =
            T.let(
              :withdrawal_lines,
              WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ExportFailedWebhookEvent::Data::Resource::TaggedSymbol
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
              T.all(Symbol, WhopSDK::ExportFailedWebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              WhopSDK::ExportFailedWebhookEvent::Data::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              WhopSDK::ExportFailedWebhookEvent::Data::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              WhopSDK::ExportFailedWebhookEvent::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              WhopSDK::ExportFailedWebhookEvent::Data::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              WhopSDK::ExportFailedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ExportFailedWebhookEvent::Data::Status::TaggedSymbol
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
