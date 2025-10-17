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

  AuthorizedUserListParams = WhopSDK::Models::AuthorizedUserListParams

  AuthorizedUserRetrieveParams = WhopSDK::Models::AuthorizedUserRetrieveParams

  AuthorizedUserRoles = WhopSDK::Models::AuthorizedUserRoles

  BusinessTypes = WhopSDK::Models::BusinessTypes

  ChatChannel = WhopSDK::Models::ChatChannel

  ChatChannelListParams = WhopSDK::Models::ChatChannelListParams

  ChatChannelRetrieveParams = WhopSDK::Models::ChatChannelRetrieveParams

  ChatChannelUpdateParams = WhopSDK::Models::ChatChannelUpdateParams

  CheckoutConfiguration = WhopSDK::Models::CheckoutConfiguration

  CheckoutConfigurationCreateParams = WhopSDK::Models::CheckoutConfigurationCreateParams

  CheckoutConfigurationListParams = WhopSDK::Models::CheckoutConfigurationListParams

  CheckoutConfigurationRetrieveParams = WhopSDK::Models::CheckoutConfigurationRetrieveParams

  CollectionMethod = WhopSDK::Models::CollectionMethod

  Company = WhopSDK::Models::Company

  CompanyRetrieveParams = WhopSDK::Models::CompanyRetrieveParams

  CourseLessonInteraction = WhopSDK::Models::CourseLessonInteraction

  CourseLessonInteractionListItem = WhopSDK::Models::CourseLessonInteractionListItem

  CourseLessonInteractionListParams = WhopSDK::Models::CourseLessonInteractionListParams

  CourseLessonInteractionRetrieveParams = WhopSDK::Models::CourseLessonInteractionRetrieveParams

  Currency = WhopSDK::Models::Currency

  CustomCta = WhopSDK::Models::CustomCta

  Direction = WhopSDK::Models::Direction

  DmsPostTypes = WhopSDK::Models::DmsPostTypes

  EmailNotificationPreferences = WhopSDK::Models::EmailNotificationPreferences

  Entry = WhopSDK::Models::Entry

  EntryApproveParams = WhopSDK::Models::EntryApproveParams

  EntryDenyParams = WhopSDK::Models::EntryDenyParams

  EntryListParams = WhopSDK::Models::EntryListParams

  EntryRetrieveParams = WhopSDK::Models::EntryRetrieveParams

  EntryStatus = WhopSDK::Models::EntryStatus

  Experience = WhopSDK::Models::Experience

  ExperienceAttachParams = WhopSDK::Models::ExperienceAttachParams

  ExperienceCreateParams = WhopSDK::Models::ExperienceCreateParams

  ExperienceDeleteParams = WhopSDK::Models::ExperienceDeleteParams

  ExperienceDetachParams = WhopSDK::Models::ExperienceDetachParams

  ExperienceListParams = WhopSDK::Models::ExperienceListParams

  ExperienceRetrieveParams = WhopSDK::Models::ExperienceRetrieveParams

  ExperienceUpdateParams = WhopSDK::Models::ExperienceUpdateParams

  Forum = WhopSDK::Models::Forum

  ForumListParams = WhopSDK::Models::ForumListParams

  ForumPost = WhopSDK::Models::ForumPost

  ForumPostCreateParams = WhopSDK::Models::ForumPostCreateParams

  ForumPostListParams = WhopSDK::Models::ForumPostListParams

  ForumPostRetrieveParams = WhopSDK::Models::ForumPostRetrieveParams

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

  LedgerAccountRetrieveParams = WhopSDK::Models::LedgerAccountRetrieveParams

  MemberListParams = WhopSDK::Models::MemberListParams

  MemberMostRecentActions = WhopSDK::Models::MemberMostRecentActions

  MemberRetrieveParams = WhopSDK::Models::MemberRetrieveParams

  Membership = WhopSDK::Models::Membership

  MembershipCancelParams = WhopSDK::Models::MembershipCancelParams

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

  PageInfo = WhopSDK::Models::PageInfo

  Payment = WhopSDK::Models::Payment

  PaymentListParams = WhopSDK::Models::PaymentListParams

  PaymentRefundParams = WhopSDK::Models::PaymentRefundParams

  PaymentRetrieveParams = WhopSDK::Models::PaymentRetrieveParams

  PaymentRetryParams = WhopSDK::Models::PaymentRetryParams

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

  PromoType = WhopSDK::Models::PromoType

  Reaction = WhopSDK::Models::Reaction

  ReactionCreateParams = WhopSDK::Models::ReactionCreateParams

  ReactionListParams = WhopSDK::Models::ReactionListParams

  ReactionRetrieveParams = WhopSDK::Models::ReactionRetrieveParams

  ReceiptStatus = WhopSDK::Models::ReceiptStatus

  ReleaseMethod = WhopSDK::Models::ReleaseMethod

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
