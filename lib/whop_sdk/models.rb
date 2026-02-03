# frozen_string_literal: true

module WhopSDK
  [WhopSDK::Internal::Type::BaseModel, *WhopSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, WhopSDK::Internal::AnyHash) } }
  end

  WhopSDK::Internal::Util.walk_namespaces(WhopSDK::Models).each do |mod|
    case mod
    in WhopSDK::Internal::Type::Enum | WhopSDK::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  WhopSDK::Internal::Util.walk_namespaces(WhopSDK::Models)
                         .lazy
                         .grep(WhopSDK::Internal::Type::Union)
                         .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccessLevel = WhopSDK::Models::AccessLevel

  AccessPassType = WhopSDK::Models::AccessPassType

  AccessTokenCreateParams = WhopSDK::Models::AccessTokenCreateParams

  AccountLinkCreateParams = WhopSDK::Models::AccountLinkCreateParams

  AIChat = WhopSDK::Models::AIChat

  AIChatCreateParams = WhopSDK::Models::AIChatCreateParams

  AIChatDeleteParams = WhopSDK::Models::AIChatDeleteParams

  AIChatListParams = WhopSDK::Models::AIChatListParams

  AIChatRetrieveParams = WhopSDK::Models::AIChatRetrieveParams

  AIChatUpdateParams = WhopSDK::Models::AIChatUpdateParams

  APIVersion = WhopSDK::Models::APIVersion

  App = WhopSDK::Models::App

  AppBuild = WhopSDK::Models::AppBuild

  AppBuildCreateParams = WhopSDK::Models::AppBuildCreateParams

  AppBuildListParams = WhopSDK::Models::AppBuildListParams

  AppBuildPlatforms = WhopSDK::Models::AppBuildPlatforms

  AppBuildPromoteParams = WhopSDK::Models::AppBuildPromoteParams

  AppBuildRetrieveParams = WhopSDK::Models::AppBuildRetrieveParams

  AppBuildStatuses = WhopSDK::Models::AppBuildStatuses

  AppCreateParams = WhopSDK::Models::AppCreateParams

  AppListParams = WhopSDK::Models::AppListParams

  AppRetrieveParams = WhopSDK::Models::AppRetrieveParams

  AppStatuses = WhopSDK::Models::AppStatuses

  AppType = WhopSDK::Models::AppType

  AppUpdateParams = WhopSDK::Models::AppUpdateParams

  AppViewType = WhopSDK::Models::AppViewType

  AssessmentQuestionTypes = WhopSDK::Models::AssessmentQuestionTypes

  AuthorizedUserListParams = WhopSDK::Models::AuthorizedUserListParams

  AuthorizedUserRetrieveParams = WhopSDK::Models::AuthorizedUserRetrieveParams

  AuthorizedUserRoles = WhopSDK::Models::AuthorizedUserRoles

  BillingReasons = WhopSDK::Models::BillingReasons

  BotTokenTransactionTypes = WhopSDK::Models::BotTokenTransactionTypes

  BusinessTypes = WhopSDK::Models::BusinessTypes

  CancelOptions = WhopSDK::Models::CancelOptions

  CardBrands = WhopSDK::Models::CardBrands

  ChatChannel = WhopSDK::Models::ChatChannel

  ChatChannelListParams = WhopSDK::Models::ChatChannelListParams

  ChatChannelRetrieveParams = WhopSDK::Models::ChatChannelRetrieveParams

  ChatChannelUpdateParams = WhopSDK::Models::ChatChannelUpdateParams

  CheckoutConfiguration = WhopSDK::Models::CheckoutConfiguration

  CheckoutConfigurationCreateParams = WhopSDK::Models::CheckoutConfigurationCreateParams

  CheckoutConfigurationListParams = WhopSDK::Models::CheckoutConfigurationListParams

  CheckoutConfigurationRetrieveParams = WhopSDK::Models::CheckoutConfigurationRetrieveParams

  CheckoutModes = WhopSDK::Models::CheckoutModes

  CollectionMethod = WhopSDK::Models::CollectionMethod

  Company = WhopSDK::Models::Company

  CompanyCreateParams = WhopSDK::Models::CompanyCreateParams

  CompanyListParams = WhopSDK::Models::CompanyListParams

  CompanyRetrieveParams = WhopSDK::Models::CompanyRetrieveParams

  CompanyTokenTransaction = WhopSDK::Models::CompanyTokenTransaction

  CompanyTokenTransactionCreateParams = WhopSDK::Models::CompanyTokenTransactionCreateParams

  CompanyTokenTransactionListParams = WhopSDK::Models::CompanyTokenTransactionListParams

  CompanyTokenTransactionRetrieveParams = WhopSDK::Models::CompanyTokenTransactionRetrieveParams

  CompanyUpdateParams = WhopSDK::Models::CompanyUpdateParams

  Course = WhopSDK::Models::Course

  CourseChapter = WhopSDK::Models::CourseChapter

  CourseChapterCreateParams = WhopSDK::Models::CourseChapterCreateParams

  CourseChapterDeleteParams = WhopSDK::Models::CourseChapterDeleteParams

  CourseChapterListParams = WhopSDK::Models::CourseChapterListParams

  CourseChapterRetrieveParams = WhopSDK::Models::CourseChapterRetrieveParams

  CourseChapterUpdateParams = WhopSDK::Models::CourseChapterUpdateParams

  CourseCreateParams = WhopSDK::Models::CourseCreateParams

  CourseDeleteParams = WhopSDK::Models::CourseDeleteParams

  CourseLessonCreateParams = WhopSDK::Models::CourseLessonCreateParams

  CourseLessonDeleteParams = WhopSDK::Models::CourseLessonDeleteParams

  CourseLessonInteraction = WhopSDK::Models::CourseLessonInteraction

  CourseLessonInteractionCompletedWebhookEvent =
    WhopSDK::Models::CourseLessonInteractionCompletedWebhookEvent

  CourseLessonInteractionListItem = WhopSDK::Models::CourseLessonInteractionListItem

  CourseLessonInteractionListParams = WhopSDK::Models::CourseLessonInteractionListParams

  CourseLessonInteractionRetrieveParams = WhopSDK::Models::CourseLessonInteractionRetrieveParams

  CourseLessonListParams = WhopSDK::Models::CourseLessonListParams

  CourseLessonMarkAsCompletedParams = WhopSDK::Models::CourseLessonMarkAsCompletedParams

  CourseLessonRetrieveParams = WhopSDK::Models::CourseLessonRetrieveParams

  CourseLessonStartParams = WhopSDK::Models::CourseLessonStartParams

  CourseLessonSubmitAssessmentParams = WhopSDK::Models::CourseLessonSubmitAssessmentParams

  CourseLessonUpdateParams = WhopSDK::Models::CourseLessonUpdateParams

  CourseListParams = WhopSDK::Models::CourseListParams

  CourseRetrieveParams = WhopSDK::Models::CourseRetrieveParams

  CourseStudentListParams = WhopSDK::Models::CourseStudentListParams

  CourseStudentRetrieveParams = WhopSDK::Models::CourseStudentRetrieveParams

  CourseUpdateParams = WhopSDK::Models::CourseUpdateParams

  CourseVisibilities = WhopSDK::Models::CourseVisibilities

  Currency = WhopSDK::Models::Currency

  CustomCta = WhopSDK::Models::CustomCta

  Direction = WhopSDK::Models::Direction

  Dispute = WhopSDK::Models::Dispute

  DisputeCreatedWebhookEvent = WhopSDK::Models::DisputeCreatedWebhookEvent

  DisputeListParams = WhopSDK::Models::DisputeListParams

  DisputeRetrieveParams = WhopSDK::Models::DisputeRetrieveParams

  DisputeStatuses = WhopSDK::Models::DisputeStatuses

  DisputeSubmitEvidenceParams = WhopSDK::Models::DisputeSubmitEvidenceParams

  DisputeUpdatedWebhookEvent = WhopSDK::Models::DisputeUpdatedWebhookEvent

  DisputeUpdateEvidenceParams = WhopSDK::Models::DisputeUpdateEvidenceParams

  DmChannel = WhopSDK::Models::DmChannel

  DmChannelCreateParams = WhopSDK::Models::DmChannelCreateParams

  DmChannelDeleteParams = WhopSDK::Models::DmChannelDeleteParams

  DmChannelListParams = WhopSDK::Models::DmChannelListParams

  DmChannelRetrieveParams = WhopSDK::Models::DmChannelRetrieveParams

  DmChannelUpdateParams = WhopSDK::Models::DmChannelUpdateParams

  DmFeedMemberNotificationPreferences = WhopSDK::Models::DmFeedMemberNotificationPreferences

  DmFeedMemberStatuses = WhopSDK::Models::DmFeedMemberStatuses

  DmMember = WhopSDK::Models::DmMember

  DmMemberCreateParams = WhopSDK::Models::DmMemberCreateParams

  DmMemberDeleteParams = WhopSDK::Models::DmMemberDeleteParams

  DmMemberListParams = WhopSDK::Models::DmMemberListParams

  DmMemberRetrieveParams = WhopSDK::Models::DmMemberRetrieveParams

  DmMemberUpdateParams = WhopSDK::Models::DmMemberUpdateParams

  DmsPostTypes = WhopSDK::Models::DmsPostTypes

  EmailNotificationPreferences = WhopSDK::Models::EmailNotificationPreferences

  EmbedType = WhopSDK::Models::EmbedType

  Entry = WhopSDK::Models::Entry

  EntryApprovedWebhookEvent = WhopSDK::Models::EntryApprovedWebhookEvent

  EntryApproveParams = WhopSDK::Models::EntryApproveParams

  EntryCreatedWebhookEvent = WhopSDK::Models::EntryCreatedWebhookEvent

  EntryDeletedWebhookEvent = WhopSDK::Models::EntryDeletedWebhookEvent

  EntryDeniedWebhookEvent = WhopSDK::Models::EntryDeniedWebhookEvent

  EntryDenyParams = WhopSDK::Models::EntryDenyParams

  EntryListParams = WhopSDK::Models::EntryListParams

  EntryRetrieveParams = WhopSDK::Models::EntryRetrieveParams

  EntryStatus = WhopSDK::Models::EntryStatus

  Experience = WhopSDK::Models::Experience

  ExperienceAttachParams = WhopSDK::Models::ExperienceAttachParams

  ExperienceCreateParams = WhopSDK::Models::ExperienceCreateParams

  ExperienceDeleteParams = WhopSDK::Models::ExperienceDeleteParams

  ExperienceDetachParams = WhopSDK::Models::ExperienceDetachParams

  ExperienceDuplicateParams = WhopSDK::Models::ExperienceDuplicateParams

  ExperienceListParams = WhopSDK::Models::ExperienceListParams

  ExperienceRetrieveParams = WhopSDK::Models::ExperienceRetrieveParams

  ExperienceUpdateParams = WhopSDK::Models::ExperienceUpdateParams

  FeeMarkupCreateParams = WhopSDK::Models::FeeMarkupCreateParams

  FeeMarkupDeleteParams = WhopSDK::Models::FeeMarkupDeleteParams

  FeeMarkupListParams = WhopSDK::Models::FeeMarkupListParams

  FeeMarkupType = WhopSDK::Models::FeeMarkupType

  FileCreateParams = WhopSDK::Models::FileCreateParams

  FileRetrieveParams = WhopSDK::Models::FileRetrieveParams

  Forum = WhopSDK::Models::Forum

  ForumListParams = WhopSDK::Models::ForumListParams

  ForumPost = WhopSDK::Models::ForumPost

  ForumPostCreateParams = WhopSDK::Models::ForumPostCreateParams

  ForumPostListParams = WhopSDK::Models::ForumPostListParams

  ForumPostRetrieveParams = WhopSDK::Models::ForumPostRetrieveParams

  ForumPostUpdateParams = WhopSDK::Models::ForumPostUpdateParams

  ForumPostVisibilityType = WhopSDK::Models::ForumPostVisibilityType

  ForumRetrieveParams = WhopSDK::Models::ForumRetrieveParams

  ForumUpdateParams = WhopSDK::Models::ForumUpdateParams

  FriendlyReceiptStatus = WhopSDK::Models::FriendlyReceiptStatus

  GlobalAffiliateStatus = WhopSDK::Models::GlobalAffiliateStatus

  IndustryTypes = WhopSDK::Models::IndustryTypes

  Invoice = WhopSDK::Models::Invoice

  InvoiceCreatedWebhookEvent = WhopSDK::Models::InvoiceCreatedWebhookEvent

  InvoiceCreateParams = WhopSDK::Models::InvoiceCreateParams

  InvoiceListItem = WhopSDK::Models::InvoiceListItem

  InvoiceListParams = WhopSDK::Models::InvoiceListParams

  InvoicePaidWebhookEvent = WhopSDK::Models::InvoicePaidWebhookEvent

  InvoicePastDueWebhookEvent = WhopSDK::Models::InvoicePastDueWebhookEvent

  InvoiceRetrieveParams = WhopSDK::Models::InvoiceRetrieveParams

  InvoiceStatus = WhopSDK::Models::InvoiceStatus

  InvoiceVoidedWebhookEvent = WhopSDK::Models::InvoiceVoidedWebhookEvent

  InvoiceVoidParams = WhopSDK::Models::InvoiceVoidParams

  Languages = WhopSDK::Models::Languages

  Lead = WhopSDK::Models::Lead

  LeadCreateParams = WhopSDK::Models::LeadCreateParams

  LeadListParams = WhopSDK::Models::LeadListParams

  LeadRetrieveParams = WhopSDK::Models::LeadRetrieveParams

  LeadUpdateParams = WhopSDK::Models::LeadUpdateParams

  LedgerAccountRetrieveParams = WhopSDK::Models::LedgerAccountRetrieveParams

  Lesson = WhopSDK::Models::Lesson

  LessonTypes = WhopSDK::Models::LessonTypes

  LessonVisibilities = WhopSDK::Models::LessonVisibilities

  MemberListParams = WhopSDK::Models::MemberListParams

  MemberMostRecentActions = WhopSDK::Models::MemberMostRecentActions

  MemberRetrieveParams = WhopSDK::Models::MemberRetrieveParams

  Membership = WhopSDK::Models::Membership

  MembershipActivatedWebhookEvent = WhopSDK::Models::MembershipActivatedWebhookEvent

  MembershipCancelAtPeriodEndChangedWebhookEvent =
    WhopSDK::Models::MembershipCancelAtPeriodEndChangedWebhookEvent

  MembershipCancelParams = WhopSDK::Models::MembershipCancelParams

  MembershipDeactivatedWebhookEvent = WhopSDK::Models::MembershipDeactivatedWebhookEvent

  MembershipListParams = WhopSDK::Models::MembershipListParams

  MembershipPauseParams = WhopSDK::Models::MembershipPauseParams

  MembershipResumeParams = WhopSDK::Models::MembershipResumeParams

  MembershipRetrieveParams = WhopSDK::Models::MembershipRetrieveParams

  MembershipStatus = WhopSDK::Models::MembershipStatus

  MembershipUncancelParams = WhopSDK::Models::MembershipUncancelParams

  MembershipUpdateParams = WhopSDK::Models::MembershipUpdateParams

  MemberStatuses = WhopSDK::Models::MemberStatuses

  Message = WhopSDK::Models::Message

  MessageCreateParams = WhopSDK::Models::MessageCreateParams

  MessageDeleteParams = WhopSDK::Models::MessageDeleteParams

  MessageListParams = WhopSDK::Models::MessageListParams

  MessageRetrieveParams = WhopSDK::Models::MessageRetrieveParams

  MessageUpdateParams = WhopSDK::Models::MessageUpdateParams

  NotificationCreateParams = WhopSDK::Models::NotificationCreateParams

  PageInfo = WhopSDK::Models::PageInfo

  Payment = WhopSDK::Models::Payment

  PaymentCreatedWebhookEvent = WhopSDK::Models::PaymentCreatedWebhookEvent

  PaymentCreateParams = WhopSDK::Models::PaymentCreateParams

  PaymentFailedWebhookEvent = WhopSDK::Models::PaymentFailedWebhookEvent

  PaymentListFeesParams = WhopSDK::Models::PaymentListFeesParams

  PaymentListParams = WhopSDK::Models::PaymentListParams

  PaymentMethodListParams = WhopSDK::Models::PaymentMethodListParams

  PaymentMethodRetrieveParams = WhopSDK::Models::PaymentMethodRetrieveParams

  PaymentMethodTypes = WhopSDK::Models::PaymentMethodTypes

  PaymentPendingWebhookEvent = WhopSDK::Models::PaymentPendingWebhookEvent

  PaymentProvider = WhopSDK::Models::PaymentProvider

  PaymentRefundParams = WhopSDK::Models::PaymentRefundParams

  PaymentRetrieveParams = WhopSDK::Models::PaymentRetrieveParams

  PaymentRetryParams = WhopSDK::Models::PaymentRetryParams

  PaymentSucceededWebhookEvent = WhopSDK::Models::PaymentSucceededWebhookEvent

  PaymentVoidParams = WhopSDK::Models::PaymentVoidParams

  PayoutDestinationCategory = WhopSDK::Models::PayoutDestinationCategory

  PayoutMethodCreatedWebhookEvent = WhopSDK::Models::PayoutMethodCreatedWebhookEvent

  PayoutMethodListParams = WhopSDK::Models::PayoutMethodListParams

  PayoutMethodRetrieveParams = WhopSDK::Models::PayoutMethodRetrieveParams

  Plan = WhopSDK::Models::Plan

  PlanCreateParams = WhopSDK::Models::PlanCreateParams

  PlanDeleteParams = WhopSDK::Models::PlanDeleteParams

  PlanListParams = WhopSDK::Models::PlanListParams

  PlanRetrieveParams = WhopSDK::Models::PlanRetrieveParams

  PlanType = WhopSDK::Models::PlanType

  PlanUpdateParams = WhopSDK::Models::PlanUpdateParams

  Product = WhopSDK::Models::Product

  ProductCreateParams = WhopSDK::Models::ProductCreateParams

  ProductDeleteParams = WhopSDK::Models::ProductDeleteParams

  ProductListItem = WhopSDK::Models::ProductListItem

  ProductListParams = WhopSDK::Models::ProductListParams

  ProductRetrieveParams = WhopSDK::Models::ProductRetrieveParams

  ProductUpdateParams = WhopSDK::Models::ProductUpdateParams

  PromoCode = WhopSDK::Models::PromoCode

  PromoCodeCreateParams = WhopSDK::Models::PromoCodeCreateParams

  PromoCodeDeleteParams = WhopSDK::Models::PromoCodeDeleteParams

  PromoCodeListParams = WhopSDK::Models::PromoCodeListParams

  PromoCodeRetrieveParams = WhopSDK::Models::PromoCodeRetrieveParams

  PromoCodeStatus = WhopSDK::Models::PromoCodeStatus

  PromoDuration = WhopSDK::Models::PromoDuration

  PromoType = WhopSDK::Models::PromoType

  Reaction = WhopSDK::Models::Reaction

  ReactionCreateParams = WhopSDK::Models::ReactionCreateParams

  ReactionDeleteParams = WhopSDK::Models::ReactionDeleteParams

  ReactionListParams = WhopSDK::Models::ReactionListParams

  ReactionRetrieveParams = WhopSDK::Models::ReactionRetrieveParams

  ReceiptStatus = WhopSDK::Models::ReceiptStatus

  RefundCreatedWebhookEvent = WhopSDK::Models::RefundCreatedWebhookEvent

  RefundListParams = WhopSDK::Models::RefundListParams

  RefundReferenceStatus = WhopSDK::Models::RefundReferenceStatus

  RefundReferenceType = WhopSDK::Models::RefundReferenceType

  RefundRetrieveParams = WhopSDK::Models::RefundRetrieveParams

  RefundStatus = WhopSDK::Models::RefundStatus

  RefundUpdatedWebhookEvent = WhopSDK::Models::RefundUpdatedWebhookEvent

  ReleaseMethod = WhopSDK::Models::ReleaseMethod

  ReviewListParams = WhopSDK::Models::ReviewListParams

  ReviewRetrieveParams = WhopSDK::Models::ReviewRetrieveParams

  ReviewStatus = WhopSDK::Models::ReviewStatus

  SetupIntent = WhopSDK::Models::SetupIntent

  SetupIntentCanceledWebhookEvent = WhopSDK::Models::SetupIntentCanceledWebhookEvent

  SetupIntentListParams = WhopSDK::Models::SetupIntentListParams

  SetupIntentRequiresActionWebhookEvent = WhopSDK::Models::SetupIntentRequiresActionWebhookEvent

  SetupIntentRetrieveParams = WhopSDK::Models::SetupIntentRetrieveParams

  SetupIntentStatus = WhopSDK::Models::SetupIntentStatus

  SetupIntentSucceededWebhookEvent = WhopSDK::Models::SetupIntentSucceededWebhookEvent

  Shipment = WhopSDK::Models::Shipment

  ShipmentCarrier = WhopSDK::Models::ShipmentCarrier

  ShipmentCreateParams = WhopSDK::Models::ShipmentCreateParams

  ShipmentListParams = WhopSDK::Models::ShipmentListParams

  ShipmentRetrieveParams = WhopSDK::Models::ShipmentRetrieveParams

  ShipmentStatus = WhopSDK::Models::ShipmentStatus

  ShipmentSubstatus = WhopSDK::Models::ShipmentSubstatus

  SupportChannel = WhopSDK::Models::SupportChannel

  SupportChannelCreateParams = WhopSDK::Models::SupportChannelCreateParams

  SupportChannelListParams = WhopSDK::Models::SupportChannelListParams

  SupportChannelRetrieveParams = WhopSDK::Models::SupportChannelRetrieveParams

  TaxType = WhopSDK::Models::TaxType

  TopupCreateParams = WhopSDK::Models::TopupCreateParams

  Transfer = WhopSDK::Models::Transfer

  TransferCreateParams = WhopSDK::Models::TransferCreateParams

  TransferListParams = WhopSDK::Models::TransferListParams

  TransferRetrieveParams = WhopSDK::Models::TransferRetrieveParams

  UnwrapWebhookEvent = WhopSDK::Models::UnwrapWebhookEvent

  UploadStatus = WhopSDK::Models::UploadStatus

  UserCheckAccessParams = WhopSDK::Models::UserCheckAccessParams

  UserRetrieveParams = WhopSDK::Models::UserRetrieveParams

  VerificationErrorCode = WhopSDK::Models::VerificationErrorCode

  VerificationRetrieveParams = WhopSDK::Models::VerificationRetrieveParams

  VerificationStatus = WhopSDK::Models::VerificationStatus

  VerificationSucceededWebhookEvent = WhopSDK::Models::VerificationSucceededWebhookEvent

  Visibility = WhopSDK::Models::Visibility

  VisibilityFilter = WhopSDK::Models::VisibilityFilter

  Webhook = WhopSDK::Models::Webhook

  WebhookCreateParams = WhopSDK::Models::WebhookCreateParams

  WebhookDeleteParams = WhopSDK::Models::WebhookDeleteParams

  WebhookEvent = WhopSDK::Models::WebhookEvent

  WebhookListParams = WhopSDK::Models::WebhookListParams

  WebhookRetrieveParams = WhopSDK::Models::WebhookRetrieveParams

  WebhookUnwrapParams = WhopSDK::Models::WebhookUnwrapParams

  WebhookUpdateParams = WhopSDK::Models::WebhookUpdateParams

  WhoCanCommentTypes = WhopSDK::Models::WhoCanCommentTypes

  WhoCanPost = WhopSDK::Models::WhoCanPost

  WhoCanPostTypes = WhopSDK::Models::WhoCanPostTypes

  WhoCanReact = WhopSDK::Models::WhoCanReact

  Withdrawal = WhopSDK::Models::Withdrawal

  WithdrawalCreatedWebhookEvent = WhopSDK::Models::WithdrawalCreatedWebhookEvent

  WithdrawalCreateParams = WhopSDK::Models::WithdrawalCreateParams

  WithdrawalFeeTypes = WhopSDK::Models::WithdrawalFeeTypes

  WithdrawalListParams = WhopSDK::Models::WithdrawalListParams

  WithdrawalRetrieveParams = WhopSDK::Models::WithdrawalRetrieveParams

  WithdrawalSpeeds = WhopSDK::Models::WithdrawalSpeeds

  WithdrawalStatus = WhopSDK::Models::WithdrawalStatus

  WithdrawalUpdatedWebhookEvent = WhopSDK::Models::WithdrawalUpdatedWebhookEvent
end
