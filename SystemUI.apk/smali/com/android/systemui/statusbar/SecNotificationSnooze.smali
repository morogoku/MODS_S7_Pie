.class public Lcom/android/systemui/statusbar/SecNotificationSnooze;
.super Landroid/widget/LinearLayout;
.source "SecNotificationSnooze.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;
    }
.end annotation


# static fields
.field private static final OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

.field private static final OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

.field private static final UNDO_LOG:Landroid/metrics/LogMaker;

.field private static final sAccessibilityActions:[I


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mDone:Landroid/widget/TextView;

.field private mExpanded:Z

.field private mGuide:Landroid/widget/TextView;

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mParser:Landroid/util/KeyValueListParser;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mSnoozeHeader:Landroid/widget/TextView;

.field private mSnoozeIcon:Landroid/widget/ImageView;

.field private mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field private mSnoozeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x476

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x475

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->sAccessibilityActions:[I

    return-void

    :array_0
    .array-data 4
        0x7f0a0032
        0x7f0a0031
        0x7f0a002f
        0x7f0a0030
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mExpanded:Z

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method

.method private closeSnoozeOption(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLocationOnScreen([I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    const/4 v0, 0x0

    aget v5, v2, v0

    aget v6, v1, v0

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    const/4 v6, 0x1

    aget v7, v2, v6

    aget v6, v1, v6

    sub-int/2addr v7, v6

    add-int/2addr v7, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v6, v5, v7, v0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method private createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 17

    move/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v7, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v9, v0

    if-eqz v9, :cond_1

    const v0, 0x7f10001a

    goto :goto_1

    :cond_1
    const v0, 0x7f10001b

    :goto_1
    move v10, v0

    if-eqz v9, :cond_2

    div-int/lit8 v0, v7, 0x3c

    goto :goto_2

    :cond_2
    move v0, v7

    :goto_2
    move v11, v0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {v8, v10, v11, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const v0, 0x7f120bb0

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v12, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v14, v0

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v14, v0, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move/from16 v15, p2

    invoke-direct {v6, v15, v12}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    new-instance v16, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v3, v7

    move-object v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-object v16
.end method

.method private createOptionViews()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const v4, 0x7f0d01db

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/statusbar/SecNotificationSnooze;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->closeSnoozeOption(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/statusbar/SecNotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1131"

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/systemui/statusbar/SecNotificationSnooze;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    instance-of v0, v0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    check-cast v0, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;

    const-string v1, "NotificationSnooze"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "snooze_done key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SelectedOption : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->access$000(Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1130"

    invoke-static {v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;->access$000(Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/statusbar/SecNotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->closeSnoozeOption(Landroid/view/View;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1132"

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v4, Landroid/metrics/LogMaker;

    invoke-direct {v4, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x474

    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v6, 0x473

    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 v0, 0x472

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    :cond_2
    return-void
.end method

.method private updateTextColor()V
    .locals 13

    const-class v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v1

    const v2, 0x7f0a00ac

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v2

    const/16 v3, -0x7c

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v3

    const/16 v4, -0x7d

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNightModeOn()Z

    move-result v5

    const/16 v6, -0x64

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNotiColoringOn()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isOpenthemeOn()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v5, :cond_0

    const/16 v7, -0x76

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v6

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeIcon:Landroid/widget/ImageView;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeHeader:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeHeader:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    move v9, v3

    goto :goto_1

    :cond_3
    move v9, v1

    :goto_1
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    if-eqz v7, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    if-eqz v5, :cond_7

    move v8, v3

    goto :goto_2

    :cond_7
    move v8, v1

    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->updateShowButtonBackground(I)V

    goto :goto_5

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    move v9, v3

    goto :goto_3

    :cond_9
    move v9, v1

    :goto_3
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    move v9, v3

    goto :goto_4

    :cond_b
    move v9, v1

    :goto_4
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_e

    instance-of v9, v8, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080465

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v5, :cond_d

    const/16 v10, -0x7b

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v10

    goto :goto_6

    :cond_d
    const/16 v10, -0x7a

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v10

    :goto_6
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    move-object v11, v8

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v9, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGuide:Landroid/widget/TextView;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGuide:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    move v10, v4

    goto :goto_7

    :cond_f
    move v10, v2

    :goto_7
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    iget-object v9, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    if-eqz v9, :cond_13

    const/4 v9, 0x0

    :goto_8
    iget-object v10, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_13

    iget-object v10, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Landroid/widget/RadioButton;

    if-eqz v11, :cond_12

    move-object v11, v10

    check-cast v11, Landroid/widget/RadioButton;

    if-eqz v5, :cond_11

    move v12, v3

    goto :goto_9

    :cond_11
    move v12, v1

    :goto_9
    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_13
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return-object p0
.end method

.method getDefaultOption()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    return-object v0
.end method

.method getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_snooze_options"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "NotificationSnooze"

    const-string v4, "Bad snooze constants"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "default"

    const v4, 0x7f0b0015

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "options_array"

    const v5, 0x7f03002b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_2

    sget-object v6, Lcom/android/systemui/statusbar/SecNotificationSnooze;->sAccessibilityActions:[I

    array-length v6, v6

    if-ge v5, v6, :cond_2

    aget v6, v3, v5

    sget-object v7, Lcom/android/systemui/statusbar/SecNotificationSnooze;->sAccessibilityActions:[I

    aget v7, v7, v5

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v7

    if-eqz v5, :cond_0

    if-ne v6, v2, :cond_1

    :cond_0
    iput-object v7, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    sget-boolean v5, Lcom/android/systemui/Rune;->SYSUI_IS_ENG_BUILD:Z

    if-eqz v5, :cond_3

    const-string v5, "1"

    const-string/jumbo v6, "snooze.test"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/systemui/statusbar/SecNotificationSnooze;->sAccessibilityActions:[I

    aget v4, v5, v4

    const/4 v5, 0x1

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v1
.end method

.method public handleCloseControls(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mExpanded:Z

    return v0
.end method

.method public isLeavebehind()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/statusbar/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/16 v1, 0x471

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0554

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$p6KUeftEzQ1Zb17jXpxWNQyHFYA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$p6KUeftEzQ1Zb17jXpxWNQyHFYA;-><init>(Lcom/android/systemui/statusbar/SecNotificationSnooze;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOptionViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    const v0, 0x7f0a054e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationSnooze$y1yA26VkCeh-75ifcYsoAZPdXiU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationSnooze$y1yA26VkCeh-75ifcYsoAZPdXiU;-><init>(Lcom/android/systemui/statusbar/SecNotificationSnooze;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a054f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationSnooze$67C-FhEiYrWhUUf9PP8meRJ0Lxw;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationSnooze$67C-FhEiYrWhUUf9PP8meRJ0Lxw;-><init>(Lcom/android/systemui/statusbar/SecNotificationSnooze;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0550

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGuide:Landroid/widget/TextView;

    const v0, 0x7f0a0552

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeHeader:Landroid/widget/TextView;

    const v0, 0x7f0a0551

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120baf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method

.method setKeyValueListParser(Landroid/util/KeyValueListParser;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method

.method public setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    return-void
.end method

.method public setSnoozeOptions(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->updateTextColor()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/SnoozeCriterion;

    new-instance v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f0a002e

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v9, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    new-instance v11, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v3, v11

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/SecNotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOptionViews()V

    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateShowButtonBackground(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    const v3, 0x7f080605

    const v4, 0x7f080607

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    nop

    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    nop

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_5

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public willBeRemoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozing:Z

    return v0
.end method
