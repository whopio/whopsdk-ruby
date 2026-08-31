# typed: strong

module WhopSDK
  module Models
    class BountyCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::BountyCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Bounty ID, prefixed `bnty_`.
      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          T::Array[
            WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType::TaggedSymbol
          ]
        )
      end
      attr_accessor :accepted_deliverable_types

      # Submissions accepted so far.
      sig { returns(Integer) }
      attr_accessor :accepted_submissions_count

      # Number of submissions that can be accepted (winner slots).
      sig { returns(Integer) }
      attr_accessor :accepted_submissions_limit

      # How many winner slots one worker can win. Defaults to `1`. Wins plus proofs
      # awaiting review never exceed this number, and a worker runs one attempt at a
      # time. Cannot exceed `accepted_submissions_limit`.
      sig { returns(Integer) }
      attr_accessor :accepted_submissions_per_user_limit

      sig do
        returns(
          T::Array[
            WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed
          ]
        )
      end
      attr_accessor :active_proof_livestream_feeds

      # What a referrer earns per accepted submission when the worker arrived through
      # their affiliate link, in whole currency units, at the standard platform fee
      # rate. Taken out of the worker's post-fee reward rather than added on top. `0`
      # when the bounty pays no affiliate share, including bounties tied to no account,
      # which cannot record a referral.
      sig { returns(Float) }
      attr_accessor :affiliate_share_amount

      sig { returns(T::Array[String]) }
      attr_accessor :allowed_country_codes

      # Submissions delivered and waiting on review. A subset of
      # `unresolved_submissions_count`, which also counts attempts still in progress.
      sig { returns(Integer) }
      attr_accessor :awaiting_review_submissions_count

      # Total gross budget committed to the bounty: `gross_reward_amount` times
      # `accepted_submissions_limit`.
      sig { returns(Float) }
      attr_accessor :budget_amount

      # What the poster wants the work to achieve, declared once at create. `null` for
      # bounties created before the taxonomy rolled out.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
          )
        )
      end
      attr_accessor :business_goal_type

      # When cancellation was requested, as an ISO 8601 timestamp. On a `closed` bounty
      # this means the cancel is pending: submissions are stopped and the bounty cancels
      # once in-flight submissions resolve. On a `canceled` bounty it records when the
      # cancellation was requested. `null` when no cancellation was ever requested.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancel_requested_at

      # The technical contract footage must be recorded against. Present only on
      # `data_capture` bounties; `null` for every other goal type.
      sig do
        returns(T.nilable(WhopSDK::Models::BountyCreateResponse::CaptureSpec))
      end
      attr_reader :capture_spec

      sig do
        params(
          capture_spec:
            T.nilable(
              WhopSDK::Models::BountyCreateResponse::CaptureSpec::OrHash
            )
        ).void
      end
      attr_writer :capture_spec

      # When the bounty was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
      sig do
        returns(WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol)
      end
      attr_accessor :currency

      # Submissions reviewed and turned down.
      sig { returns(Integer) }
      attr_accessor :denied_submissions_count

      # Full task instructions shown to workers.
      sig { returns(String) }
      attr_accessor :description

      # Experience the bounty's discussion thread lives in, prefixed `exp_`. Read this —
      # not `experience_id` — to open the thread: a platform-wide bounty has no hosting
      # experience of its own but its discussion still lives in one.
      sig { returns(T.nilable(String)) }
      attr_accessor :discussion_experience_id

      # Forum feed containing the bounty's discussion thread. `null` for a bounty with
      # no forum post.
      sig { returns(T.nilable(String)) }
      attr_accessor :discussion_feed_id

      # Forum post anchoring the bounty's discussion thread. Read together with
      # `discussion_experience_id` to address the thread. `null` for a bounty with no
      # forum post.
      sig { returns(T.nilable(String)) }
      attr_accessor :discussion_post_id

      # Experience the bounty is hosted in, prefixed `exp_`. `null` for platform-wide
      # bounties; may belong to a different account than the funder.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_id

      # Account whose balance funds the bounty pool, or `null` when a user funds it
      # personally. May differ from the account hosting `experience_id`.
      sig do
        returns(
          T.nilable(WhopSDK::Models::BountyCreateResponse::FundingAccount)
        )
      end
      attr_reader :funding_account

      sig do
        params(
          funding_account:
            T.nilable(
              WhopSDK::Models::BountyCreateResponse::FundingAccount::OrHash
            )
        ).void
      end
      attr_writer :funding_account

      # Gross amount paid out from the bounty pool across accepted submissions — worker
      # payouts, platform fees, and affiliate shares together. Tips and reviewer rewards
      # are excluded.
      sig { returns(Float) }
      attr_accessor :gross_paid_out_amount

      # Gross bounty-pool amount allocated per accepted submission, in whole currency
      # units.
      sig { returns(Float) }
      attr_accessor :gross_reward_amount

      # Account hosting the bounty's forum — the one whose `route` and `experience_id`
      # address its discussion thread, and where its submissions dashboard lives. `null`
      # for a platform-wide bounty with no host. May differ from `funding_account`.
      sig do
        returns(
          T.nilable(WhopSDK::Models::BountyCreateResponse::HostingAccount)
        )
      end
      attr_reader :hosting_account

      sig do
        params(
          hosting_account:
            T.nilable(
              WhopSDK::Models::BountyCreateResponse::HostingAccount::OrHash
            )
        ).void
      end
      attr_writer :hosting_account

      # Total verified footage a submission must accumulate before it can be submitted,
      # in seconds. Always a whole number of hours. Present only on `data_capture`
      # bounties — it is what `net_reward_amount` pays for, so rate displays divide by
      # it. `null` for every other goal type.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :min_total_verified_duration_seconds

      # What a worker is quoted per accepted submission after the platform fee, in whole
      # currency units. The exact post-fee figure, at the standard platform fee rate — a
      # worker who locked a different rate, or who arrived through an affiliate link, is
      # paid a different amount.
      sig { returns(Float) }
      attr_accessor :net_reward_amount

      # User who posted the bounty — the account owner when created with an account API
      # key.
      sig { returns(WhopSDK::Models::BountyCreateResponse::Poster) }
      attr_reader :poster

      sig do
        params(
          poster: WhopSDK::Models::BountyCreateResponse::Poster::OrHash
        ).void
      end
      attr_writer :poster

      # How often the schedule creates a new bounty. Each occurrence is a separate
      # bounty; the original is not republished.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::BountyCreateResponse::ScheduledFrequency::TaggedSymbol
          )
        )
      end
      attr_accessor :scheduled_frequency

      # When a scheduled bounty will publish, as an ISO 8601 timestamp. `null` once
      # published, for bounties that were never scheduled, and for terminally failed
      # drafts parked for manual rescheduling.
      sig { returns(T.nilable(String)) }
      attr_accessor :scheduled_publish_at

      # Unfilled winner capacity: `accepted_submissions_limit` minus
      # `accepted_submissions_count`, clamped to zero. Not on its own a signal that the
      # bounty accepts new claims — read `status` for that: only an `open` bounty takes
      # new submissions.
      sig { returns(Integer) }
      attr_accessor :spots_remaining

      # Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
      # poster and the account's authorized managers; `open` bounties accept new
      # submissions; `closed` bounties are live but no longer accept new submissions;
      # `completed` bounties paid out every winner slot; `canceled` bounties ended
      # before filling their slots.
      sig do
        returns(WhopSDK::Models::BountyCreateResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      # When new submissions stopped being accepted, as an ISO 8601 timestamp. Set when
      # a cancellation is requested on a bounty with work in flight, so in-flight
      # submissions can resolve before the bounty cancels. `null` when submissions were
      # never stopped — including completed bounties that simply filled every winner
      # slot.
      sig { returns(T.nilable(String)) }
      attr_accessor :submissions_closed_at

      # Short name of the task shown to workers.
      sig { returns(String) }
      attr_accessor :title

      # Submissions still awaiting an outcome: in progress or pending review.
      sig { returns(Integer) }
      attr_accessor :unresolved_submissions_count

      # When the bounty was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # How many winner slots the authenticated user has already won on this bounty.
      # Read against `accepted_submissions_per_user_limit` to show a worker their
      # remaining allowance. `0` when the request has no authenticated user.
      sig { returns(Integer) }
      attr_accessor :viewer_accepted_submissions_count

      sig do
        params(
          id: String,
          accepted_deliverable_types:
            T::Array[
              WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType::OrSymbol
            ],
          accepted_submissions_count: Integer,
          accepted_submissions_limit: Integer,
          accepted_submissions_per_user_limit: Integer,
          active_proof_livestream_feeds:
            T::Array[
              WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::OrHash
            ],
          affiliate_share_amount: Float,
          allowed_country_codes: T::Array[String],
          awaiting_review_submissions_count: Integer,
          budget_amount: Float,
          business_goal_type:
            T.nilable(
              WhopSDK::Models::BountyCreateResponse::BusinessGoalType::OrSymbol
            ),
          cancel_requested_at: T.nilable(String),
          capture_spec:
            T.nilable(
              WhopSDK::Models::BountyCreateResponse::CaptureSpec::OrHash
            ),
          created_at: String,
          currency: WhopSDK::Models::BountyCreateResponse::Currency::OrSymbol,
          denied_submissions_count: Integer,
          description: String,
          discussion_experience_id: T.nilable(String),
          discussion_feed_id: T.nilable(String),
          discussion_post_id: T.nilable(String),
          experience_id: T.nilable(String),
          funding_account:
            T.nilable(
              WhopSDK::Models::BountyCreateResponse::FundingAccount::OrHash
            ),
          gross_paid_out_amount: Float,
          gross_reward_amount: Float,
          hosting_account:
            T.nilable(
              WhopSDK::Models::BountyCreateResponse::HostingAccount::OrHash
            ),
          min_total_verified_duration_seconds: T.nilable(Integer),
          net_reward_amount: Float,
          poster: WhopSDK::Models::BountyCreateResponse::Poster::OrHash,
          scheduled_frequency:
            T.nilable(
              WhopSDK::Models::BountyCreateResponse::ScheduledFrequency::OrSymbol
            ),
          scheduled_publish_at: T.nilable(String),
          spots_remaining: Integer,
          status: WhopSDK::Models::BountyCreateResponse::Status::OrSymbol,
          submissions_closed_at: T.nilable(String),
          title: String,
          unresolved_submissions_count: Integer,
          updated_at: String,
          viewer_accepted_submissions_count: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Bounty ID, prefixed `bnty_`.
        id:,
        accepted_deliverable_types:,
        # Submissions accepted so far.
        accepted_submissions_count:,
        # Number of submissions that can be accepted (winner slots).
        accepted_submissions_limit:,
        # How many winner slots one worker can win. Defaults to `1`. Wins plus proofs
        # awaiting review never exceed this number, and a worker runs one attempt at a
        # time. Cannot exceed `accepted_submissions_limit`.
        accepted_submissions_per_user_limit:,
        active_proof_livestream_feeds:,
        # What a referrer earns per accepted submission when the worker arrived through
        # their affiliate link, in whole currency units, at the standard platform fee
        # rate. Taken out of the worker's post-fee reward rather than added on top. `0`
        # when the bounty pays no affiliate share, including bounties tied to no account,
        # which cannot record a referral.
        affiliate_share_amount:,
        allowed_country_codes:,
        # Submissions delivered and waiting on review. A subset of
        # `unresolved_submissions_count`, which also counts attempts still in progress.
        awaiting_review_submissions_count:,
        # Total gross budget committed to the bounty: `gross_reward_amount` times
        # `accepted_submissions_limit`.
        budget_amount:,
        # What the poster wants the work to achieve, declared once at create. `null` for
        # bounties created before the taxonomy rolled out.
        business_goal_type:,
        # When cancellation was requested, as an ISO 8601 timestamp. On a `closed` bounty
        # this means the cancel is pending: submissions are stopped and the bounty cancels
        # once in-flight submissions resolve. On a `canceled` bounty it records when the
        # cancellation was requested. `null` when no cancellation was ever requested.
        cancel_requested_at:,
        # The technical contract footage must be recorded against. Present only on
        # `data_capture` bounties; `null` for every other goal type.
        capture_spec:,
        # When the bounty was created, as an ISO 8601 timestamp.
        created_at:,
        # Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
        currency:,
        # Submissions reviewed and turned down.
        denied_submissions_count:,
        # Full task instructions shown to workers.
        description:,
        # Experience the bounty's discussion thread lives in, prefixed `exp_`. Read this —
        # not `experience_id` — to open the thread: a platform-wide bounty has no hosting
        # experience of its own but its discussion still lives in one.
        discussion_experience_id:,
        # Forum feed containing the bounty's discussion thread. `null` for a bounty with
        # no forum post.
        discussion_feed_id:,
        # Forum post anchoring the bounty's discussion thread. Read together with
        # `discussion_experience_id` to address the thread. `null` for a bounty with no
        # forum post.
        discussion_post_id:,
        # Experience the bounty is hosted in, prefixed `exp_`. `null` for platform-wide
        # bounties; may belong to a different account than the funder.
        experience_id:,
        # Account whose balance funds the bounty pool, or `null` when a user funds it
        # personally. May differ from the account hosting `experience_id`.
        funding_account:,
        # Gross amount paid out from the bounty pool across accepted submissions — worker
        # payouts, platform fees, and affiliate shares together. Tips and reviewer rewards
        # are excluded.
        gross_paid_out_amount:,
        # Gross bounty-pool amount allocated per accepted submission, in whole currency
        # units.
        gross_reward_amount:,
        # Account hosting the bounty's forum — the one whose `route` and `experience_id`
        # address its discussion thread, and where its submissions dashboard lives. `null`
        # for a platform-wide bounty with no host. May differ from `funding_account`.
        hosting_account:,
        # Total verified footage a submission must accumulate before it can be submitted,
        # in seconds. Always a whole number of hours. Present only on `data_capture`
        # bounties — it is what `net_reward_amount` pays for, so rate displays divide by
        # it. `null` for every other goal type.
        min_total_verified_duration_seconds:,
        # What a worker is quoted per accepted submission after the platform fee, in whole
        # currency units. The exact post-fee figure, at the standard platform fee rate — a
        # worker who locked a different rate, or who arrived through an affiliate link, is
        # paid a different amount.
        net_reward_amount:,
        # User who posted the bounty — the account owner when created with an account API
        # key.
        poster:,
        # How often the schedule creates a new bounty. Each occurrence is a separate
        # bounty; the original is not republished.
        scheduled_frequency:,
        # When a scheduled bounty will publish, as an ISO 8601 timestamp. `null` once
        # published, for bounties that were never scheduled, and for terminally failed
        # drafts parked for manual rescheduling.
        scheduled_publish_at:,
        # Unfilled winner capacity: `accepted_submissions_limit` minus
        # `accepted_submissions_count`, clamped to zero. Not on its own a signal that the
        # bounty accepts new claims — read `status` for that: only an `open` bounty takes
        # new submissions.
        spots_remaining:,
        # Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
        # poster and the account's authorized managers; `open` bounties accept new
        # submissions; `closed` bounties are live but no longer accept new submissions;
        # `completed` bounties paid out every winner slot; `canceled` bounties ended
        # before filling their slots.
        status:,
        # When new submissions stopped being accepted, as an ISO 8601 timestamp. Set when
        # a cancellation is requested on a bounty with work in flight, so in-flight
        # submissions can resolve before the bounty cancels. `null` when submissions were
        # never stopped — including completed bounties that simply filled every winner
        # slot.
        submissions_closed_at:,
        # Short name of the task shown to workers.
        title:,
        # Submissions still awaiting an outcome: in progress or pending review.
        unresolved_submissions_count:,
        # When the bounty was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # How many winner slots the authenticated user has already won on this bounty.
        # Read against `accepted_submissions_per_user_limit` to show a worker their
        # remaining allowance. `0` when the request has no authenticated user.
        viewer_accepted_submissions_count:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            accepted_deliverable_types:
              T::Array[
                WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType::TaggedSymbol
              ],
            accepted_submissions_count: Integer,
            accepted_submissions_limit: Integer,
            accepted_submissions_per_user_limit: Integer,
            active_proof_livestream_feeds:
              T::Array[
                WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed
              ],
            affiliate_share_amount: Float,
            allowed_country_codes: T::Array[String],
            awaiting_review_submissions_count: Integer,
            budget_amount: Float,
            business_goal_type:
              T.nilable(
                WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
              ),
            cancel_requested_at: T.nilable(String),
            capture_spec:
              T.nilable(WhopSDK::Models::BountyCreateResponse::CaptureSpec),
            created_at: String,
            currency:
              WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol,
            denied_submissions_count: Integer,
            description: String,
            discussion_experience_id: T.nilable(String),
            discussion_feed_id: T.nilable(String),
            discussion_post_id: T.nilable(String),
            experience_id: T.nilable(String),
            funding_account:
              T.nilable(WhopSDK::Models::BountyCreateResponse::FundingAccount),
            gross_paid_out_amount: Float,
            gross_reward_amount: Float,
            hosting_account:
              T.nilable(WhopSDK::Models::BountyCreateResponse::HostingAccount),
            min_total_verified_duration_seconds: T.nilable(Integer),
            net_reward_amount: Float,
            poster: WhopSDK::Models::BountyCreateResponse::Poster,
            scheduled_frequency:
              T.nilable(
                WhopSDK::Models::BountyCreateResponse::ScheduledFrequency::TaggedSymbol
              ),
            scheduled_publish_at: T.nilable(String),
            spots_remaining: Integer,
            status: WhopSDK::Models::BountyCreateResponse::Status::TaggedSymbol,
            submissions_closed_at: T.nilable(String),
            title: String,
            unresolved_submissions_count: Integer,
            updated_at: String,
            viewer_accepted_submissions_count: Integer
          }
        )
      end
      def to_hash
      end

      # The deliverable shapes this bounty accepts. Every bounty accepts any combination
      # of `content_url` (posted links) and `media` (uploaded files), except
      # `data_capture` bounties, whose proof is clips recorded in the Whop app that
      # accumulate on the attempt.
      module AcceptedDeliverableType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONTENT_URL =
          T.let(
            :content_url,
            WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType::TaggedSymbol
          )
        MEDIA =
          T.let(
            :media,
            WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType::TaggedSymbol
          )
        DATA_CAPTURE =
          T.let(
            :data_capture,
            WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class ActiveProofLivestreamFeed < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed,
              WhopSDK::Internal::AnyHash
            )
          end

        # Livestream feed ID.
        sig { returns(String) }
        attr_accessor :id

        # User hosting the proof livestream — the worker streaming their attempt. `null`
        # if the host account no longer exists.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host
            )
          )
        end
        attr_reader :host

        sig do
          params(
            host:
              T.nilable(
                WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::OrHash
              )
          ).void
        end
        attr_writer :host

        # Display title for the proof livestream.
        sig { returns(String) }
        attr_accessor :title

        # Proof livestreams live on this bounty right now, newest first — workers
        # streaming their attempts. Empty when nothing is live.
        sig do
          params(
            id: String,
            host:
              T.nilable(
                WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::OrHash
              ),
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Livestream feed ID.
          id:,
          # User hosting the proof livestream — the worker streaming their attempt. `null`
          # if the host account no longer exists.
          host:,
          # Display title for the proof livestream.
          title:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              host:
                T.nilable(
                  WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host
                ),
              title: String
            }
          )
        end
        def to_hash
        end

        class Host < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID, prefixed `user_`.
          sig { returns(String) }
          attr_accessor :id

          # Display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          sig do
            returns(
              WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::ProfilePicture
            )
          end
          attr_reader :profile_picture

          sig do
            params(
              profile_picture:
                WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::ProfilePicture::OrHash
            ).void
          end
          attr_writer :profile_picture

          # Public username.
          sig { returns(String) }
          attr_accessor :username

          # User hosting the proof livestream — the worker streaming their attempt. `null`
          # if the host account no longer exists.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              profile_picture:
                WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::ProfilePicture::OrHash,
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID, prefixed `user_`.
            id:,
            # Display name.
            name:,
            # Avatar wrapper; its `url` is always present, using a generated placeholder when
            # the user set no picture.
            profile_picture:,
            # Public username.
            username:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::ProfilePicture,
                username: String
              }
            )
          end
          def to_hash
          end

          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed::Host::ProfilePicture,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Avatar image URL. Always present — a generated placeholder when the user set no
            # picture.
            sig { returns(String) }
            attr_accessor :url

            # Avatar wrapper; its `url` is always present, using a generated placeholder when
            # the user set no picture.
            sig { params(url: String).returns(T.attached_class) }
            def self.new(
              # Avatar image URL. Always present — a generated placeholder when the user set no
              # picture.
              url:
            )
            end

            sig { override.returns({ url: String }) }
            def to_hash
            end
          end
        end
      end

      # What the poster wants the work to achieve, declared once at create. `null` for
      # bounties created before the taxonomy rolled out.
      module BusinessGoalType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::BountyCreateResponse::BusinessGoalType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIPPING =
          T.let(
            :clipping,
            WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
          )
        POST_ENGAGEMENT =
          T.let(
            :post_engagement,
            WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
          )
        OWNED_ACCOUNT_GROWTH =
          T.let(
            :owned_account_growth,
            WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
          )
        UGC_CONTENT =
          T.let(
            :ugc_content,
            WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
          )
        LOCAL_ACTIVATION =
          T.let(
            :local_activation,
            WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
          )
        DATA_CAPTURE =
          T.let(
            :data_capture,
            WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyCreateResponse::BusinessGoalType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class CaptureSpec < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::BountyCreateResponse::CaptureSpec,
              WhopSDK::Internal::AnyHash
            )
          end

        # The naming convention for uploaded files, built from the required metadata
        # fields.
        sig { returns(String) }
        attr_accessor :filename_pattern

        # Inertial measurement unit (IMU) recording requirements.
        sig { returns(WhopSDK::Models::BountyCreateResponse::CaptureSpec::Imu) }
        attr_reader :imu

        sig do
          params(
            imu: WhopSDK::Models::BountyCreateResponse::CaptureSpec::Imu::OrHash
          ).void
        end
        attr_writer :imu

        # Schema version the client must stamp on the capture manifest it uploads.
        sig { returns(Integer) }
        attr_accessor :manifest_schema_version

        # Minimum length of a single clip, in seconds.
        sig { returns(Integer) }
        attr_accessor :min_clip_duration_seconds

        # Total verified footage a submission must accumulate across all its clips before
        # it can be submitted, in seconds. Always a whole number of hours.
        sig { returns(Integer) }
        attr_accessor :min_total_verified_duration_seconds

        sig { returns(T::Array[String]) }
        attr_accessor :required_metadata_fields

        # Whether each clip must be one uninterrupted recording rather than stitched
        # segments.
        sig { returns(T::Boolean) }
        attr_accessor :single_continuous_take

        # Video recording requirements.
        sig do
          returns(WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video)
        end
        attr_reader :video

        sig do
          params(
            video:
              WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::OrHash
          ).void
        end
        attr_writer :video

        # The technical contract footage must be recorded against. Present only on
        # `data_capture` bounties; `null` for every other goal type.
        sig do
          params(
            filename_pattern: String,
            imu:
              WhopSDK::Models::BountyCreateResponse::CaptureSpec::Imu::OrHash,
            manifest_schema_version: Integer,
            min_clip_duration_seconds: Integer,
            min_total_verified_duration_seconds: Integer,
            required_metadata_fields: T::Array[String],
            single_continuous_take: T::Boolean,
            video:
              WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The naming convention for uploaded files, built from the required metadata
          # fields.
          filename_pattern:,
          # Inertial measurement unit (IMU) recording requirements.
          imu:,
          # Schema version the client must stamp on the capture manifest it uploads.
          manifest_schema_version:,
          # Minimum length of a single clip, in seconds.
          min_clip_duration_seconds:,
          # Total verified footage a submission must accumulate across all its clips before
          # it can be submitted, in seconds. Always a whole number of hours.
          min_total_verified_duration_seconds:,
          required_metadata_fields:,
          # Whether each clip must be one uninterrupted recording rather than stitched
          # segments.
          single_continuous_take:,
          # Video recording requirements.
          video:
        )
        end

        sig do
          override.returns(
            {
              filename_pattern: String,
              imu: WhopSDK::Models::BountyCreateResponse::CaptureSpec::Imu,
              manifest_schema_version: Integer,
              min_clip_duration_seconds: Integer,
              min_total_verified_duration_seconds: Integer,
              required_metadata_fields: T::Array[String],
              single_continuous_take: T::Boolean,
              video: WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video
            }
          )
        end
        def to_hash
        end

        class Imu < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::BountyCreateResponse::CaptureSpec::Imu,
                WhopSDK::Internal::AnyHash
              )
            end

          # Units for the device-motion channels, as a compact key=unit string.
          sig { returns(String) }
          attr_accessor :device_motion_units

          # Units for the magnetometer channel.
          sig { returns(String) }
          attr_accessor :magnetometer_units

          # Minimum sustained IMU sample rate in hertz for a clip to pass validation.
          sig { returns(Float) }
          attr_accessor :min_rate_hz

          # Target IMU sample rate in hertz.
          sig { returns(Integer) }
          attr_accessor :target_rate_hz

          # Minimum IMU sample rate in hertz tolerated during the warmup window.
          sig { returns(Float) }
          attr_accessor :warmup_min_rate_hz

          # Startup window, in nanoseconds, during which the relaxed warmup rate applies.
          sig { returns(Integer) }
          attr_accessor :warmup_ns

          # Inertial measurement unit (IMU) recording requirements.
          sig do
            params(
              device_motion_units: String,
              magnetometer_units: String,
              min_rate_hz: Float,
              target_rate_hz: Integer,
              warmup_min_rate_hz: Float,
              warmup_ns: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Units for the device-motion channels, as a compact key=unit string.
            device_motion_units:,
            # Units for the magnetometer channel.
            magnetometer_units:,
            # Minimum sustained IMU sample rate in hertz for a clip to pass validation.
            min_rate_hz:,
            # Target IMU sample rate in hertz.
            target_rate_hz:,
            # Minimum IMU sample rate in hertz tolerated during the warmup window.
            warmup_min_rate_hz:,
            # Startup window, in nanoseconds, during which the relaxed warmup rate applies.
            warmup_ns:
          )
          end

          sig do
            override.returns(
              {
                device_motion_units: String,
                magnetometer_units: String,
                min_rate_hz: Float,
                target_rate_hz: Integer,
                warmup_min_rate_hz: Float,
                warmup_ns: Integer
              }
            )
          end
          def to_hash
          end
        end

        class Video < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video,
                WhopSDK::Internal::AnyHash
              )
            end

          # Maximum acceptable average bitrate, in megabits per second.
          sig { returns(Integer) }
          attr_accessor :bitrate_ceiling_mbps

          # Minimum acceptable average bitrate, in megabits per second.
          sig { returns(Integer) }
          attr_accessor :bitrate_floor_mbps

          # Recommended average bitrate to encode at, in megabits per second.
          sig { returns(Integer) }
          attr_accessor :bitrate_target_mbps

          # Which physical lens to record with.
          sig { returns(String) }
          attr_accessor :camera_lens

          sig { returns(T::Array[String]) }
          attr_accessor :codecs

          # Whether the client must also write the camera make and model into the video
          # container's metadata. When `false`, the capture manifest and export CSV are the
          # metadata carrier.
          sig { returns(T::Boolean) }
          attr_accessor :embed_camera_metadata

          # Target capture frame rate.
          sig { returns(Integer) }
          attr_accessor :fps

          # Longest stall between consecutive frames a clip may contain before the client
          # rejects it, in milliseconds. Every frame is timestamped in the frame log, so a
          # stall stays alignable downstream — this bounds how broken a capture may be, not
          # how evenly it must be paced.
          sig { returns(Integer) }
          attr_accessor :frame_gap_tolerance_ms

          # Required frame height in pixels — recorded footage must match exactly.
          sig { returns(Integer) }
          attr_accessor :height

          # Minimum acceptable horizontal field of view, in degrees.
          sig { returns(Integer) }
          attr_accessor :min_fov_degrees

          # Device orientation to record in.
          sig { returns(String) }
          attr_accessor :orientation

          # Preferred horizontal field of view, in degrees.
          sig { returns(Integer) }
          attr_accessor :preferred_fov_degrees

          # How the client must configure video stabilization: `off` disables EIS so raw
          # motion is preserved for pose extraction, `on` requires it, `any` leaves the
          # device default.
          sig do
            returns(
              WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode::TaggedSymbol
            )
          end
          attr_accessor :stabilization_mode

          # Whether hardware/software stabilization must be enabled. True exactly when
          # stabilization_mode is `on`.
          sig { returns(T::Boolean) }
          attr_accessor :stabilization_required

          # Required frame width in pixels — recorded footage must match exactly.
          sig { returns(Integer) }
          attr_accessor :width

          # Video recording requirements.
          sig do
            params(
              bitrate_ceiling_mbps: Integer,
              bitrate_floor_mbps: Integer,
              bitrate_target_mbps: Integer,
              camera_lens: String,
              codecs: T::Array[String],
              embed_camera_metadata: T::Boolean,
              fps: Integer,
              frame_gap_tolerance_ms: Integer,
              height: Integer,
              min_fov_degrees: Integer,
              orientation: String,
              preferred_fov_degrees: Integer,
              stabilization_mode:
                WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode::OrSymbol,
              stabilization_required: T::Boolean,
              width: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Maximum acceptable average bitrate, in megabits per second.
            bitrate_ceiling_mbps:,
            # Minimum acceptable average bitrate, in megabits per second.
            bitrate_floor_mbps:,
            # Recommended average bitrate to encode at, in megabits per second.
            bitrate_target_mbps:,
            # Which physical lens to record with.
            camera_lens:,
            codecs:,
            # Whether the client must also write the camera make and model into the video
            # container's metadata. When `false`, the capture manifest and export CSV are the
            # metadata carrier.
            embed_camera_metadata:,
            # Target capture frame rate.
            fps:,
            # Longest stall between consecutive frames a clip may contain before the client
            # rejects it, in milliseconds. Every frame is timestamped in the frame log, so a
            # stall stays alignable downstream — this bounds how broken a capture may be, not
            # how evenly it must be paced.
            frame_gap_tolerance_ms:,
            # Required frame height in pixels — recorded footage must match exactly.
            height:,
            # Minimum acceptable horizontal field of view, in degrees.
            min_fov_degrees:,
            # Device orientation to record in.
            orientation:,
            # Preferred horizontal field of view, in degrees.
            preferred_fov_degrees:,
            # How the client must configure video stabilization: `off` disables EIS so raw
            # motion is preserved for pose extraction, `on` requires it, `any` leaves the
            # device default.
            stabilization_mode:,
            # Whether hardware/software stabilization must be enabled. True exactly when
            # stabilization_mode is `on`.
            stabilization_required:,
            # Required frame width in pixels — recorded footage must match exactly.
            width:
          )
          end

          sig do
            override.returns(
              {
                bitrate_ceiling_mbps: Integer,
                bitrate_floor_mbps: Integer,
                bitrate_target_mbps: Integer,
                camera_lens: String,
                codecs: T::Array[String],
                embed_camera_metadata: T::Boolean,
                fps: Integer,
                frame_gap_tolerance_ms: Integer,
                height: Integer,
                min_fov_degrees: Integer,
                orientation: String,
                preferred_fov_degrees: Integer,
                stabilization_mode:
                  WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode::TaggedSymbol,
                stabilization_required: T::Boolean,
                width: Integer
              }
            )
          end
          def to_hash
          end

          # How the client must configure video stabilization: `off` disables EIS so raw
          # motion is preserved for pose extraction, `on` requires it, `any` leaves the
          # device default.
          module StabilizationMode
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF =
              T.let(
                :off,
                WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode::TaggedSymbol
              )
            ON =
              T.let(
                :on,
                WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode::TaggedSymbol
              )
            ANY =
              T.let(
                :any,
                WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::BountyCreateResponse::CaptureSpec::Video::StabilizationMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # Currency for all amounts on the bounty, as a lowercase ISO 4217 code.
      module Currency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::BountyCreateResponse::Currency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USD =
          T.let(
            :usd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        SGD =
          T.let(
            :sgd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        INR =
          T.let(
            :inr,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        AUD =
          T.let(
            :aud,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        BRL =
          T.let(
            :brl,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        CAD =
          T.let(
            :cad,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        DKK =
          T.let(
            :dkk,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        EUR =
          T.let(
            :eur,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        NOK =
          T.let(
            :nok,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        GBP =
          T.let(
            :gbp,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        SEK =
          T.let(
            :sek,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        CHF =
          T.let(
            :chf,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        HKD =
          T.let(
            :hkd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        HUF =
          T.let(
            :huf,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        JPY =
          T.let(
            :jpy,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        MXN =
          T.let(
            :mxn,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        MYR =
          T.let(
            :myr,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        PLN =
          T.let(
            :pln,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        CZK =
          T.let(
            :czk,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        NZD =
          T.let(
            :nzd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        AED =
          T.let(
            :aed,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        COP =
          T.let(
            :cop,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        RON =
          T.let(
            :ron,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        THB =
          T.let(
            :thb,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        BGN =
          T.let(
            :bgn,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        IDR =
          T.let(
            :idr,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        DOP =
          T.let(
            :dop,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        PHP =
          T.let(
            :php,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        TRY =
          T.let(
            :try,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        KRW =
          T.let(
            :krw,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        TWD =
          T.let(
            :twd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        VND =
          T.let(
            :vnd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        PKR =
          T.let(
            :pkr,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        CLP =
          T.let(
            :clp,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        UYU =
          T.let(
            :uyu,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        ARS =
          T.let(
            :ars,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        ZAR =
          T.let(
            :zar,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        DZD =
          T.let(
            :dzd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        TND =
          T.let(
            :tnd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        MAD =
          T.let(
            :mad,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        KES =
          T.let(
            :kes,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        KWD =
          T.let(
            :kwd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        JOD =
          T.let(
            :jod,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        ALL =
          T.let(
            :all,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        XCD =
          T.let(
            :xcd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        AMD =
          T.let(
            :amd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        BSD =
          T.let(
            :bsd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        BHD =
          T.let(
            :bhd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        BOB =
          T.let(
            :bob,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        BAM =
          T.let(
            :bam,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        KHR =
          T.let(
            :khr,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        CRC =
          T.let(
            :crc,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        XOF =
          T.let(
            :xof,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        EGP =
          T.let(
            :egp,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        ETB =
          T.let(
            :etb,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        GMD =
          T.let(
            :gmd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        GHS =
          T.let(
            :ghs,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        GTQ =
          T.let(
            :gtq,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        GYD =
          T.let(
            :gyd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        ILS =
          T.let(
            :ils,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        JMD =
          T.let(
            :jmd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        MOP =
          T.let(
            :mop,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        MGA =
          T.let(
            :mga,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        MUR =
          T.let(
            :mur,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        MDL =
          T.let(
            :mdl,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        MNT =
          T.let(
            :mnt,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        NAD =
          T.let(
            :nad,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        NGN =
          T.let(
            :ngn,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        MKD =
          T.let(
            :mkd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        OMR =
          T.let(
            :omr,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        PYG =
          T.let(
            :pyg,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        PEN =
          T.let(
            :pen,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        QAR =
          T.let(
            :qar,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        RWF =
          T.let(
            :rwf,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        SAR =
          T.let(
            :sar,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        RSD =
          T.let(
            :rsd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        LKR =
          T.let(
            :lkr,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        TZS =
          T.let(
            :tzs,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        TTD =
          T.let(
            :ttd,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        UZS =
          T.let(
            :uzs,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        RUB =
          T.let(
            :rub,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        CNY =
          T.let(
            :cny,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        KZT =
          T.let(
            :kzt,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )
        AWG =
          T.let(
            :awg,
            WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyCreateResponse::Currency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class FundingAccount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::BountyCreateResponse::FundingAccount,
              WhopSDK::Internal::AnyHash
            )
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        # Account display name.
        sig { returns(String) }
        attr_accessor :title

        # Account whose balance funds the bounty pool, or `null` when a user funds it
        # personally. May differ from the account hosting `experience_id`.
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

      class HostingAccount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::BountyCreateResponse::HostingAccount,
              WhopSDK::Internal::AnyHash
            )
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        # Account logo image URL. `null` when the account has not set one.
        sig { returns(T.nilable(String)) }
        attr_accessor :logo_url

        # Account public route identifier — the `whop.com/{route}` storefront path.
        sig { returns(String) }
        attr_accessor :route

        # Account display name.
        sig { returns(String) }
        attr_accessor :title

        # Account hosting the bounty's forum — the one whose `route` and `experience_id`
        # address its discussion thread, and where its submissions dashboard lives. `null`
        # for a platform-wide bounty with no host. May differ from `funding_account`.
        sig do
          params(
            id: String,
            logo_url: T.nilable(String),
            route: String,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Account ID, prefixed `biz_`.
          id:,
          # Account logo image URL. `null` when the account has not set one.
          logo_url:,
          # Account public route identifier — the `whop.com/{route}` storefront path.
          route:,
          # Account display name.
          title:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              logo_url: T.nilable(String),
              route: String,
              title: String
            }
          )
        end
        def to_hash
        end
      end

      class Poster < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::BountyCreateResponse::Poster,
              WhopSDK::Internal::AnyHash
            )
          end

        # User ID, prefixed `user_`.
        sig { returns(String) }
        attr_accessor :id

        # Display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Avatar wrapper; its `url` is always present, using a generated placeholder when
        # the user set no picture.
        sig do
          returns(WhopSDK::Models::BountyCreateResponse::Poster::ProfilePicture)
        end
        attr_reader :profile_picture

        sig do
          params(
            profile_picture:
              WhopSDK::Models::BountyCreateResponse::Poster::ProfilePicture::OrHash
          ).void
        end
        attr_writer :profile_picture

        # Public username.
        sig { returns(String) }
        attr_accessor :username

        # User who posted the bounty — the account owner when created with an account API
        # key.
        sig do
          params(
            id: String,
            name: T.nilable(String),
            profile_picture:
              WhopSDK::Models::BountyCreateResponse::Poster::ProfilePicture::OrHash,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # User ID, prefixed `user_`.
          id:,
          # Display name.
          name:,
          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          profile_picture:,
          # Public username.
          username:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: T.nilable(String),
              profile_picture:
                WhopSDK::Models::BountyCreateResponse::Poster::ProfilePicture,
              username: String
            }
          )
        end
        def to_hash
        end

        class ProfilePicture < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::BountyCreateResponse::Poster::ProfilePicture,
                WhopSDK::Internal::AnyHash
              )
            end

          # Avatar image URL. Always present — a generated placeholder when the user set no
          # picture.
          sig { returns(String) }
          attr_accessor :url

          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          sig { params(url: String).returns(T.attached_class) }
          def self.new(
            # Avatar image URL. Always present — a generated placeholder when the user set no
            # picture.
            url:
          )
          end

          sig { override.returns({ url: String }) }
          def to_hash
          end
        end
      end

      # How often the schedule creates a new bounty. Each occurrence is a separate
      # bounty; the original is not republished.
      module ScheduledFrequency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::BountyCreateResponse::ScheduledFrequency
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONCE =
          T.let(
            :once,
            WhopSDK::Models::BountyCreateResponse::ScheduledFrequency::TaggedSymbol
          )
        HOURLY =
          T.let(
            :hourly,
            WhopSDK::Models::BountyCreateResponse::ScheduledFrequency::TaggedSymbol
          )
        DAILY =
          T.let(
            :daily,
            WhopSDK::Models::BountyCreateResponse::ScheduledFrequency::TaggedSymbol
          )
        WEEKLY =
          T.let(
            :weekly,
            WhopSDK::Models::BountyCreateResponse::ScheduledFrequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            WhopSDK::Models::BountyCreateResponse::ScheduledFrequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyCreateResponse::ScheduledFrequency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Lifecycle state. `scheduled` bounties are unpublished drafts, visible to their
      # poster and the account's authorized managers; `open` bounties accept new
      # submissions; `closed` bounties are live but no longer accept new submissions;
      # `completed` bounties paid out every winner slot; `canceled` bounties ended
      # before filling their slots.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::BountyCreateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SCHEDULED =
          T.let(
            :scheduled,
            WhopSDK::Models::BountyCreateResponse::Status::TaggedSymbol
          )
        OPEN =
          T.let(
            :open,
            WhopSDK::Models::BountyCreateResponse::Status::TaggedSymbol
          )
        CLOSED =
          T.let(
            :closed,
            WhopSDK::Models::BountyCreateResponse::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            WhopSDK::Models::BountyCreateResponse::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            WhopSDK::Models::BountyCreateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyCreateResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
