.class public Lcom/android/systemui/statusbar/SecNotificationInfo;
.super Landroid/widget/LinearLayout;
.source "SecNotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SecNotificationInfo$UpdateImportanceRunnable;,
        Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;,
        Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;

.field private mAppUid:I

.field private mChannelEnabledSwitch:Landroid/widget/Switch;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

.field private mChosenImportance:I

.field private mExitReason:Ljava/lang/String;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsForBlockingHelper:Z

.field private mIsForeground:Z

.field private mIsMinimized:Z

.field private mIsNonblockable:Z

.field private mIsSingleDefaultChannel:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNegativeUserSentiment:Z

.field private mNumUniqueChannelsInRow:I

.field private mOnCancelClick:Landroid/view/View$OnClickListener;

.field private mOnKeepShowing:Landroid/view/View$OnClickListener;

.field private mOnMinimizeCancelClick:Landroid/view/View$OnClickListener;

.field private mOnMinimizeClick:Landroid/view/View$OnClickListener;

.field private mOnSaveClick:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;

.field private mOnStopOrMinimizeNotifications:Landroid/view/View$OnClickListener;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field private mStartingUserImportance:I

.field private numTotalChannels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "blocking_helper_dismissed"

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExitReason:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$HEUH0qkwoOEk9RLoWLkWL17zHbo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$HEUH0qkwoOEk9RLoWLkWL17zHbo;-><init>(Lcom/android/systemui/statusbar/SecNotificationInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnKeepShowing:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$It2iFl5o533_WjQBWBPE3IEeXx8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$It2iFl5o533_WjQBWBPE3IEeXx8;-><init>(Lcom/android/systemui/statusbar/SecNotificationInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnStopOrMinimizeNotifications:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private bindButtons()V
    .locals 8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateAppSettingsLink()V

    const v0, 0x7f0a0333

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f120943

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const v4, 0x7f0a031b

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsNonblockable:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForeground:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForeground:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsMinimized:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnMinimizeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f120491

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v5, 0x7f0a00d8

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v3, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnCancelClick:Landroid/view/View$OnClickListener;

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnMinimizeCancelClick:Landroid/view/View$OnClickListener;

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a046d

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsNonblockable:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForeground:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsMinimized:Z

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnSaveClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f12094a

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method private bindHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    const v3, 0xc2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const v1, 0x7f0a03df

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a03e0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    invoke-interface {v3, v4, v5, v6}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1
    const v3, 0x7f0a01e4

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a03de

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private bindName()V
    .locals 7

    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ""

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f120949

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->numTotalChannels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private bindPrompt()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    iget v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForeground:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForeground:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsMinimized:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsNonblockable:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    move v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$6ji0hZFr32Ube334zT1TVXt-avQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$6ji0hZFr32Ube334zT1TVXt-avQ;-><init>(Lcom/android/systemui/statusbar/SecNotificationInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->bindName()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateSecondaryText()V

    return-void
.end method

.method private getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string v3, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v3, "android.intent.extra.NOTIFICATION_ID"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.NOTIFICATION_TAG"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getSelectedImportance()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    return v0
.end method

.method private hasImportanceChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    iget v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$2qwoyJTXgnfTe8QR7I4NiDI0Nbc(Lcom/android/systemui/statusbar/SecNotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->saveImportance()V

    return-void
.end method

.method public static synthetic lambda$bindNotification$2(Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0333

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1127"

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1120"

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;

    iget v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    invoke-interface {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public static synthetic lambda$bindPrompt$3(Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateSecondaryText()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateAppSettingsLink()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/view/View;)V
    .locals 1

    const-string v0, "blocking_helper_keep_showing"

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExitReason:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->closeControls(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/view/View;)V
    .locals 1

    const-string v0, "blocking_helper_stop_notifications"

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->swapContent(Z)V

    return-void
.end method

.method public static synthetic lambda$r7b8B-sbyLf19bNl3Y1W_fe2kFg(Lcom/android/systemui/statusbar/SecNotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateImportance()V

    return-void
.end method

.method public static synthetic lambda$updateAppSettingsLink$4(Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;

    invoke-interface {v0, p2, p1}, Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;->onClick(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method private saveImportance()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsNonblockable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    if-eqz v0, :cond_0

    const-string v0, "blocking_helper_stop_notifications"

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExitReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$r7b8B-sbyLf19bNl3Y1W_fe2kFg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$r7b8B-sbyLf19bNl3Y1W_fe2kFg;-><init>(Lcom/android/systemui/statusbar/SecNotificationInfo;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;->checkSave(Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateImportance()V

    :cond_1
    :goto_0
    return-void
.end method

.method private swapContent(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const v0, 0x7f0a03ff

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0200

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    iput v4, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForeground:Z

    if-eqz v4, :cond_2

    iput v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    :goto_0
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v3

    if-eqz p1, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    aput v6, v5, v2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz p1, :cond_4

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v4, 0x8

    if-eqz p1, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v4

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/statusbar/SecNotificationInfo$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/systemui/statusbar/SecNotificationInfo$1;-><init>(Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/view/View;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateAppSettingsLink()V
    .locals 7

    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForBlockingHelper:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    const v3, 0x7f12092d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$ufif6SynroG8xM1cb1hpimGlv_s;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$ufif6SynroG8xM1cb1hpimGlv_s;-><init>(Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateImportance()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    iget v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    sub-int/2addr v1, v2

    const/16 v2, 0x123

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1126"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/android/systemui/statusbar/SecNotificationInfo$UpdateImportanceRunnable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    iget v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    iget v7, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/SecNotificationInfo$UpdateImportanceRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;II)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateSecondaryText()V
    .locals 4

    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00d8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getSelectedImportance()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsNonblockable:Z

    if-eqz v3, :cond_1

    const v3, 0x7f12094d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f12093f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    const v3, 0x7f120930

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    if-eqz v2, :cond_2

    const v3, 0x7f120933

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNegativeUserSentiment:Z

    if-eqz v3, :cond_3

    const v3, 0x7f12048d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForeground:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsMinimized:Z

    if-nez v3, :cond_4

    const v3, 0x7f120bfa

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const v3, 0x7f12012c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method private updateTextColor()V
    .locals 20

    move-object/from16 v0, p0

    const-class v1, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationColorPicker;

    const v2, 0x7f0a00f0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v3

    const v4, 0x7f0a00ac

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v5

    const/16 v6, -0x7c

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v6

    const/16 v7, -0x7d

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNightModeOn()Z

    move-result v8

    const/16 v9, -0x64

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNotiColoringOn()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isOpenthemeOn()Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v8, :cond_0

    const/16 v10, -0x76

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v9

    :cond_0
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/SecNotificationInfo;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v10, 0x7f0a03e0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    if-eqz v8, :cond_1

    move v11, v6

    goto :goto_0

    :cond_1
    move v11, v3

    :goto_0
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v11, 0x7f0a01e4

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_4

    if-eqz v8, :cond_3

    move v12, v7

    goto :goto_1

    :cond_3
    move v12, v5

    :goto_1
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    if-eqz v8, :cond_5

    move v12, v6

    goto :goto_2

    :cond_5
    move v12, v3

    :goto_2
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    const v12, 0x7f0a0333

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a00d8

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0a031b

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0a046d

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v12, :cond_8

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v8, :cond_7

    move-object/from16 v16, v2

    move v2, v6

    goto :goto_3

    :cond_7
    move-object/from16 v16, v2

    move v2, v3

    :goto_3
    invoke-virtual {v0, v4, v2, v12}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateShowButtonBackground(ZILandroid/widget/TextView;)V

    goto :goto_4

    :cond_8
    move-object/from16 v16, v2

    :goto_4
    if-eqz v13, :cond_a

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v8, :cond_9

    move v2, v6

    goto :goto_5

    :cond_9
    move v2, v3

    :goto_5
    invoke-virtual {v0, v4, v2, v13}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateShowButtonBackground(ZILandroid/widget/TextView;)V

    :cond_a
    if-eqz v14, :cond_c

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v8, :cond_b

    move v2, v6

    goto :goto_6

    :cond_b
    move v2, v3

    :goto_6
    invoke-virtual {v0, v4, v2, v14}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateShowButtonBackground(ZILandroid/widget/TextView;)V

    :cond_c
    if-eqz v15, :cond_16

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v8, :cond_d

    move v2, v6

    goto :goto_7

    :cond_d
    move v2, v3

    :goto_7
    invoke-virtual {v0, v4, v2, v15}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateShowButtonBackground(ZILandroid/widget/TextView;)V

    goto :goto_c

    :cond_e
    move-object/from16 v16, v2

    if-eqz v12, :cond_10

    if-eqz v8, :cond_f

    move v2, v6

    goto :goto_8

    :cond_f
    move v2, v3

    :goto_8
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    if-eqz v13, :cond_12

    if-eqz v8, :cond_11

    move v2, v6

    goto :goto_9

    :cond_11
    move v2, v3

    :goto_9
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    if-eqz v14, :cond_14

    if-eqz v8, :cond_13

    move v2, v6

    goto :goto_a

    :cond_13
    move v2, v3

    :goto_a
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_14
    if-eqz v15, :cond_16

    if-eqz v8, :cond_15

    move v2, v6

    goto :goto_b

    :cond_15
    move v2, v3

    :goto_b
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    :goto_c
    invoke-virtual {v13}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_19

    move/from16 v17, v3

    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v18, v4

    const v4, 0x7f080466

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v8, :cond_17

    const/16 v4, -0x7b

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v4

    goto :goto_d

    :cond_17
    const/16 v4, -0x7a

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v4

    :goto_d
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v19, v1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    move-object v1, v2

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    :cond_18
    move-object/from16 v19, v1

    move/from16 v18, v4

    goto :goto_e

    :cond_19
    move-object/from16 v19, v1

    move/from16 v17, v3

    move/from16 v18, v4

    :goto_e
    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    if-eqz v8, :cond_1a

    move v3, v7

    goto :goto_f

    :cond_1a
    move v3, v5

    :goto_f
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1b
    const v3, 0x7f0a006b

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1d

    if-eqz v8, :cond_1c

    move v4, v6

    goto :goto_10

    :cond_1c
    move/from16 v4, v17

    :goto_10
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1d
    return-void
.end method


# virtual methods
.method bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    invoke-virtual/range {v0 .. v16}, Lcom/android/systemui/statusbar/SecNotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZZZ)V

    return-void
.end method

.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZZZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    const-class v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    iput-object v3, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    move/from16 v3, p5

    iput v3, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;

    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnSaveClick:Landroid/view/View$OnClickListener;

    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnCancelClick:Landroid/view/View$OnClickListener;

    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnMinimizeCancelClick:Landroid/view/View$OnClickListener;

    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnMinimizeClick:Landroid/view/View$OnClickListener;

    iget-object v11, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iput-object v11, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v11, p7

    iput-object v11, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    move-object/from16 v12, p8

    iput-object v12, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;

    move-object/from16 v13, p4

    iput-object v13, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v14, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v14

    iput v14, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    iput v14, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    move/from16 v14, p16

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNegativeUserSentiment:Z

    move/from16 v15, p14

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsNonblockable:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForeground:Z

    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForBlockingHelper:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    iget-object v3, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    const/4 v2, 0x1

    if-ne v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsMinimized:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget v3, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->numTotalChannels:I

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$wfhok19P7_DT3fdfzNeHshuKidk;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$wfhok19P7_DT3fdfzNeHshuKidk;-><init>(Lcom/android/systemui/statusbar/SecNotificationInfo;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    iget v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "miscellaneous"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->numTotalChannels:I

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->bindHeader()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->bindPrompt()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->bindButtons()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateTextColor()V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bindNotification requires at least one channel"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method closeControls(Landroid/view/View;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

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

    aget v8, v1, v6

    sub-int/2addr v7, v8

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8, v5, v7, v6, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method public getActualHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getSettingClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method logBlockingHelperCounter(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f120935

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f120934

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public saveImportanceChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->hasImportanceChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$2qwoyJTXgnfTe8QR7I4NiDI0Nbc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$SecNotificationInfo$2qwoyJTXgnfTe8QR7I4NiDI0Nbc;-><init>(Lcom/android/systemui/statusbar/SecNotificationInfo;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;->checkSave(Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->saveImportance()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChosenImportance(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getSelectedImportance()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChosenImportance:I

    :goto_0
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->hasImportanceChanged()Z

    move-result v0

    return v0
.end method

.method public updateShowButtonBackground(ZILandroid/widget/TextView;)V
    .locals 2

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f080608

    goto :goto_0

    :cond_0
    const v1, 0x7f080606

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public willBeRemoved()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->hasImportanceChanged()Z

    move-result v0

    return v0
.end method
