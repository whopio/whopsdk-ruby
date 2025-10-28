# typed: strong

module WhopSDK
  AccessLevel = WhopSDK::Models::AccessLevel

  AccessPassType = WhopSDK::Models::AccessPassType

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

  AppUpdateParams = WhopSDK::Models::AppUpdateParams

  AppViewType = WhopSDK::Models::AppViewType

  AssessmentQuestionTypes = WhopSDK::Models::AssessmentQuestionTypes

  AuthorizedUserListParams = WhopSDK::Models::AuthorizedUserListParams

  AuthorizedUserRetrieveParams = WhopSDK::Models::AuthorizedUserRetrieveParams

  AuthorizedUserRoles = WhopSDK::Models::AuthorizedUserRoles

  BillingReasons = WhopSDK::Models::BillingReasons

  BusinessTypes = WhopSDK::Models::BusinessTypes

  CardBrands = WhopSDK::Models::CardBrands

  ChatChannel = WhopSDK::Models::ChatChannel

  ChatChannelListParams = WhopSDK::Models::ChatChannelListParams

  ChatChannelRetrieveParams = WhopSDK::Models::ChatChannelRetrieveParams

  ChatChannelUpdateParams = WhopSDK::Models::ChatChannelUpdateParams

  CheckoutConfiguration = WhopSDK::Models::CheckoutConfiguration

  CheckoutConfigurationCreateParams =
    WhopSDK::Models::CheckoutConfigurationCreateParams

  CheckoutConfigurationListParams =
    WhopSDK::Models::CheckoutConfigurationListParams

  CheckoutConfigurationRetrieveParams =
    WhopSDK::Models::CheckoutConfigurationRetrieveParams

  CollectionMethod = WhopSDK::Models::CollectionMethod

  Company = WhopSDK::Models::Company

  CompanyRetrieveParams = WhopSDK::Models::CompanyRetrieveParams

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

  CourseLessonInteractionListItem =
    WhopSDK::Models::CourseLessonInteractionListItem

  CourseLessonInteractionListParams =
    WhopSDK::Models::CourseLessonInteractionListParams

  CourseLessonInteractionRetrieveParams =
    WhopSDK::Models::CourseLessonInteractionRetrieveParams

  CourseLessonListParams = WhopSDK::Models::CourseLessonListParams

  CourseLessonRetrieveParams = WhopSDK::Models::CourseLessonRetrieveParams

  CourseLessonUpdateParams = WhopSDK::Models::CourseLessonUpdateParams

  CourseListParams = WhopSDK::Models::CourseListParams

  CourseRetrieveParams = WhopSDK::Models::CourseRetrieveParams

  CourseUpdateParams = WhopSDK::Models::CourseUpdateParams

  Currency = WhopSDK::Models::Currency

  CustomCta = WhopSDK::Models::CustomCta

  Direction = WhopSDK::Models::Direction

  DmsPostTypes = WhopSDK::Models::DmsPostTypes

  EmailNotificationPreferences = WhopSDK::Models::EmailNotificationPreferences

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

  Forum = WhopSDK::Models::Forum

  ForumListParams = WhopSDK::Models::ForumListParams

  ForumPost = WhopSDK::Models::ForumPost

  ForumPostCreateParams = WhopSDK::Models::ForumPostCreateParams

  ForumPostListParams = WhopSDK::Models::ForumPostListParams

  ForumPostRetrieveParams = WhopSDK::Models::ForumPostRetrieveParams

  ForumPostUpdateParams = WhopSDK::Models::ForumPostUpdateParams

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

  LedgerAccountRetrieveParams = WhopSDK::Models::LedgerAccountRetrieveParams

  Lesson = WhopSDK::Models::Lesson

  LessonTypes = WhopSDK::Models::LessonTypes

  LessonVisibilities = WhopSDK::Models::LessonVisibilities

  MemberListParams = WhopSDK::Models::MemberListParams

  MemberMostRecentActions = WhopSDK::Models::MemberMostRecentActions

  MemberRetrieveParams = WhopSDK::Models::MemberRetrieveParams

  Membership = WhopSDK::Models::Membership

  MembershipActivatedWebhookEvent =
    WhopSDK::Models::MembershipActivatedWebhookEvent

  MembershipCancelParams = WhopSDK::Models::MembershipCancelParams

  MembershipDeactivatedWebhookEvent =
    WhopSDK::Models::MembershipDeactivatedWebhookEvent

  MembershipListParams = WhopSDK::Models::MembershipListParams

  MembershipPauseParams = WhopSDK::Models::MembershipPauseParams

  MembershipResumeParams = WhopSDK::Models::MembershipResumeParams

  MembershipRetrieveParams = WhopSDK::Models::MembershipRetrieveParams

  MembershipStatus = WhopSDK::Models::MembershipStatus

  MembershipUpdateParams = WhopSDK::Models::MembershipUpdateParams

  MemberStatuses = WhopSDK::Models::MemberStatuses

  Message = WhopSDK::Models::Message

  MessageCreateParams = WhopSDK::Models::MessageCreateParams

  MessageListParams = WhopSDK::Models::MessageListParams

  MessageRetrieveParams = WhopSDK::Models::MessageRetrieveParams

  MessageUpdateParams = WhopSDK::Models::MessageUpdateParams

  PageInfo = WhopSDK::Models::PageInfo

  Payment = WhopSDK::Models::Payment

  PaymentFailedWebhookEvent = WhopSDK::Models::PaymentFailedWebhookEvent

  PaymentListParams = WhopSDK::Models::PaymentListParams

  PaymentMethodTypes = WhopSDK::Models::PaymentMethodTypes

  PaymentPendingWebhookEvent = WhopSDK::Models::PaymentPendingWebhookEvent

  PaymentRefundParams = WhopSDK::Models::PaymentRefundParams

  PaymentRetrieveParams = WhopSDK::Models::PaymentRetrieveParams

  PaymentRetryParams = WhopSDK::Models::PaymentRetryParams

  PaymentSucceededWebhookEvent = WhopSDK::Models::PaymentSucceededWebhookEvent

  PaymentVoidParams = WhopSDK::Models::PaymentVoidParams

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

  ReactionListParams = WhopSDK::Models::ReactionListParams

  ReactionRetrieveParams = WhopSDK::Models::ReactionRetrieveParams

  ReceiptStatus = WhopSDK::Models::ReceiptStatus

  ReleaseMethod = WhopSDK::Models::ReleaseMethod

  ReviewListParams = WhopSDK::Models::ReviewListParams

  ReviewRetrieveParams = WhopSDK::Models::ReviewRetrieveParams

  ReviewStatus = WhopSDK::Models::ReviewStatus

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

  Transfer = WhopSDK::Models::Transfer

  TransferCreateParams = WhopSDK::Models::TransferCreateParams

  TransferListParams = WhopSDK::Models::TransferListParams

  TransferRetrieveParams = WhopSDK::Models::TransferRetrieveParams

  UnwrapWebhookEvent = WhopSDK::Models::UnwrapWebhookEvent

  UserCheckAccessParams = WhopSDK::Models::UserCheckAccessParams

  UserRetrieveParams = WhopSDK::Models::UserRetrieveParams

  Visibility = WhopSDK::Models::Visibility

  VisibilityFilter = WhopSDK::Models::VisibilityFilter

  WebhookUnwrapParams = WhopSDK::Models::WebhookUnwrapParams

  WhoCanCommentTypes = WhopSDK::Models::WhoCanCommentTypes

  WhoCanPost = WhopSDK::Models::WhoCanPost

  WhoCanPostTypes = WhopSDK::Models::WhoCanPostTypes

  WhoCanReact = WhopSDK::Models::WhoCanReact
end
