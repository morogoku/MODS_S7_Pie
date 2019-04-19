.class public Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;
.super Ljava/lang/Object;
.source "SecNotificationSnooze.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SecNotificationSnooze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationSnoozeOption"
.end annotation


# instance fields
.field private mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private mConfirmation:Ljava/lang/CharSequence;

.field private mCriterion:Landroid/service/notification/SnoozeCriterion;

.field private mDescription:Ljava/lang/CharSequence;

.field private mMinutesToSnoozeFor:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/SecNotificationSnooze;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->this$0:Lcom/android/systemui/statusbar/SecNotificationSnooze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mCriterion:Landroid/service/notification/SnoozeCriterion;

    iput p3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mMinutesToSnoozeFor:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mDescription:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mConfirmation:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mMinutesToSnoozeFor:I

    return v0
.end method


# virtual methods
.method public getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public getConfirmation()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mConfirmation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMinutesToSnoozeFor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mMinutesToSnoozeFor:I

    return v0
.end method

.method public getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->mCriterion:Landroid/service/notification/SnoozeCriterion;

    return-object v0
.end method
