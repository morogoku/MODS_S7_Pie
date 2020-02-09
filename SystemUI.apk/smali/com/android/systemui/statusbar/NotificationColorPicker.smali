.class public Lcom/android/systemui/statusbar/NotificationColorPicker;
.super Ljava/lang/Object;
.source "NotificationColorPicker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field private mColorSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsInversionNeededByKeyguard:Z

.field private mIsNightModeOn:Z

.field private mNightModeChanged:Z

.field private mPalleteChanged:Z

.field private mShouldTypoReTint:Z

.field private mState:I

.field private mUserSwitched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onConfigChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateInversionByKeyguard()V

    return-void
.end method

.method private getPrimaryColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToUpdate(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getAppPrimaryColor(Landroid/content/Context;ZZZ)I

    move-result v0

    return v0
.end method

.method private resetNotificationPreviewShadow()V
    .locals 8

    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getAllEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getPreviewIcon()Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0a05a1

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateActions(Landroid/view/View;IZ)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x10201de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const v1, 0x10201dd

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setTextColor(I)V

    invoke-direct {p0, v4, p2, p3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateShowButtonBackground(Landroid/widget/Button;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDimmed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsNightModeOn:Z

    const/16 v2, -0x6a

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    goto :goto_2

    :cond_1
    const/16 v1, -0x74

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    :goto_2
    return-void
.end method

.method private updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateMessaging(Landroid/view/View;IZZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZ)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, -0x68

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v0, 0x1020574

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const v0, 0x1020558

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_8

    if-eqz p5, :cond_6

    const-string v4, ""

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getOriginalSpannable()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ""

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getRevertedSpannable()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz p4, :cond_5

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getRevertedSpannable()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getOriginalSpannable()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_6
    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v4, -0x69

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    check-cast v0, Ljava/lang/Integer;

    goto :goto_6

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    :goto_7
    return-void
.end method

.method private updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    if-nez v1, :cond_0

    return-void

    :cond_0
    move/from16 v3, p2

    move/from16 v4, p6

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateActions(Landroid/view/View;IZ)V

    instance-of v5, v2, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;

    const/16 v6, -0x69

    if-eqz v5, :cond_4

    const v5, 0x1020222

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_4

    if-eqz v2, :cond_2

    const-string v8, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getOriginalSpannable()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getRevertedSpannable()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz p4, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getRevertedSpannable()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getOriginalSpannable()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    if-eqz p4, :cond_3

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    check-cast v5, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_3
    instance-of v5, v2, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;

    if-eqz v5, :cond_20

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;

    const v7, 0x1020339

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_8

    if-eqz v5, :cond_6

    const-string v9, ""

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, ""

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz p4, :cond_5

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_6
    if-eqz p4, :cond_7

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_5
    check-cast v7, Ljava/lang/Integer;

    goto :goto_6

    :cond_7
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_5

    :goto_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    :goto_7
    const v7, 0x102033a

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_c

    if-eqz v5, :cond_a

    const-string v10, ""

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, ""

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    if-eqz p4, :cond_9

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_8

    :cond_9
    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_8
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_a
    if-eqz p4, :cond_b

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_9
    check-cast v7, Ljava/lang/Integer;

    goto :goto_a

    :cond_b
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_9

    :goto_a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    :goto_b
    const v7, 0x102033b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_10

    if-eqz v5, :cond_e

    const-string v11, ""

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    const-string v11, ""

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    if-eqz p4, :cond_d

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_c

    :cond_d
    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_c
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_e
    if-eqz p4, :cond_f

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_d
    check-cast v7, Ljava/lang/Integer;

    goto :goto_e

    :cond_f
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_d

    :goto_e
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    :goto_f
    const v7, 0x102033c

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_14

    if-eqz v5, :cond_12

    const-string v12, ""

    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    const-string v12, ""

    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    if-eqz p4, :cond_11

    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_10

    :cond_11
    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_10
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_12
    if-eqz p4, :cond_13

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_11
    check-cast v7, Ljava/lang/Integer;

    goto :goto_12

    :cond_13
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_11

    :goto_12
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_14
    :goto_13
    const v7, 0x102033d

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_18

    if-eqz v5, :cond_16

    const-string v13, ""

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    const-string v13, ""

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    if-eqz p4, :cond_15

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_14

    :cond_15
    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_14
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_16
    if-eqz p4, :cond_17

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_15
    check-cast v7, Ljava/lang/Integer;

    goto :goto_16

    :cond_17
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_15

    :goto_16
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_18
    :goto_17
    const v7, 0x102033e

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_1c

    if-eqz v5, :cond_1a

    const-string v14, ""

    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, ""

    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    if-eqz p4, :cond_19

    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_18

    :cond_19
    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_18
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_1a
    if-eqz p4, :cond_1b

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_19
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto :goto_1a

    :cond_1b
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x102033e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_19

    :goto_1a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1c
    :goto_1b
    const v7, 0x102033f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_20

    if-eqz v5, :cond_1e

    const-string v7, ""

    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, ""

    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    if-eqz p4, :cond_1d

    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1c

    :cond_1d
    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_1c
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :cond_1e
    if-eqz p4, :cond_1f

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x69

    :goto_1d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_1e

    :cond_1f
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x102033f

    goto :goto_1d

    :goto_1e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_20
    :goto_1f
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V

    return-void
.end method

.method private updateShowButtonBackground(Landroid/widget/Button;IZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNightModeOn()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/16 v1, -0x74

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0090

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    const v4, 0x7f080608

    goto :goto_1

    :cond_1
    const v4, 0x7f080606

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v2, :cond_2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateSingleLine(Landroid/view/View;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a03a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    nop

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v0, 0x7f0a03a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    nop

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x69

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getColor(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    return v0
.end method

.method public hasIncreasedCollapseView(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public init(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getPrimaryColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToRevert(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v11

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToUpdate(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v0

    nop

    :goto_0
    move v1, v13

    if-ge v1, v0, :cond_3

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v7, v3, v14}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGColor(Lcom/android/systemui/statusbar/NotificationBackgroundView;Z)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isColorized()Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v5

    invoke-direct {v7, v4, v9, v14}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateActions(Landroid/view/View;IZ)V

    invoke-direct {v7, v5, v9, v14}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateActions(Landroid/view/View;IZ)V

    :cond_2
    add-int/lit8 v13, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    invoke-virtual {v7, v8, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    return-void

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v15

    move v0, v13

    :goto_1
    move v6, v0

    if-ge v6, v15, :cond_8

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v0, v5, Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_6

    move-object v4, v5

    check-cast v4, Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v17

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v18

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v3

    nop

    invoke-virtual {v4, v13}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    nop

    invoke-virtual {v4, v14}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v19

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v20

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->hasIncreasedCollapseView(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v21, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v22, v2

    move v2, v9

    move-object v14, v3

    move v3, v11

    move-object/from16 v23, v4

    move v4, v10

    move-object v13, v5

    move-object/from16 v5, v22

    move/from16 v24, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    goto :goto_2

    :cond_5
    move-object/from16 v22, v2

    move-object v14, v3

    move-object/from16 v23, v4

    move-object v13, v5

    move/from16 v24, v6

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v9

    move v3, v11

    move v4, v10

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V

    :goto_2
    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, v17

    move v2, v9

    move v3, v11

    move v4, v10

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    move-object/from16 v1, v18

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    invoke-direct {v7, v14, v10}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    goto :goto_3

    :cond_6
    move-object v13, v5

    move/from16 v24, v6

    instance-of v0, v13, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v0, :cond_7

    move-object v0, v13

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGColor(Lcom/android/systemui/statusbar/NotificationBackgroundView;Z)V

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v0, v24, 0x1

    move v13, v1

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public isNeedToRevert(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDimmed()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsInversionNeededByKeyguard:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsNightModeOn:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_4

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public isNeedToRevertByUserSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsInversionNeededByKeyguard:Z

    return v0
.end method

.method public isNeedToUpdate(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomNotification()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomBigNotification()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomHeadsupNotification()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomPublicNotification()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-nez v4, :cond_4

    move v1, v3

    nop

    :cond_4
    return v1
.end method

.method public isNightModeOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsNightModeOn:Z

    return v0
.end method

.method public isNotiColoringOn()Z
    .locals 2

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isNotificationColoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOpenthemeOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onColorPalleteChanged(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const v11, -0x50506

    const v13, -0xdadadb

    const v14, -0x32050506    # -5.26344E8f

    const v15, -0x32dadadb

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v13, 0x7f0601db

    invoke-virtual {v11, v13}, Landroid/content/Context;->getColor(I)I

    move-result v11

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v14, 0x7f0601f3

    invoke-virtual {v13, v14}, Landroid/content/Context;->getColor(I)I

    move-result v13

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v15, 0x7f0601dd

    invoke-virtual {v14, v15}, Landroid/content/Context;->getColor(I)I

    move-result v14

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v12, 0x7f0601dc

    invoke-virtual {v15, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v10, 0x7f060210

    invoke-virtual {v15, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    const/16 v15, 0xff

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v15, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v4, 0x7f0601de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v15, 0x7f0601df

    invoke-virtual {v4, v15}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v5, 0x7f0601e3

    invoke-virtual {v15, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v6, 0x7f0601e1

    invoke-virtual {v15, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v7, 0x7f0601da

    invoke-virtual {v15, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v8, 0x7f0601d9

    invoke-virtual {v15, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    nop

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    move/from16 v16, v8

    const/16 v8, 0x27

    invoke-static {v8, v9, v15, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020313

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020312

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020311

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020310

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x102057b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020577

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x102025f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020016

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020574

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020558

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x102000d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move/from16 v17, v1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020222

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020339

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x102033a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x102033b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x102033c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x102033d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x102033e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x102033f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a03a7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a03a6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a0090

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a008f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x6e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x65

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x6d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x66

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x67

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x68

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x69

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x6a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x27fcfcfc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x72

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, -0x30304

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x6b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x6c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a0605

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a0601

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a0606

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x6f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x71

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x73

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x74

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x75

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x76

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x77

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x79

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x7a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x7b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a00f0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a00ac

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x7c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x7d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x7f0a03e0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x7e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x7f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v9, v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v8, -0x80

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v18, v2

    move/from16 v15, v17

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v7

    invoke-virtual {v1, v6}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v8

    const/16 v6, 0xff

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-static {v6, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v9

    move v10, v9

    const/16 v11, 0xcd

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    move v12, v9

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020313

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020312

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020311

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020310

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x102057b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020577

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x102025f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020016

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020574

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020558

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x102000d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v19, v1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x1020222

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x1020339

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x102033a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x102033b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x102033c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x102033d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x102033e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x102033f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a03a7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a03a6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a0090

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a008f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x6e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x64

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x65

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x6d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x66

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x67

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x68

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x69

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x6a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x27fcfcfc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x72

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, -0x30304

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x6b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x6c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a0605

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a0601

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a0606

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x6f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x71

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x70

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x73

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x74

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x75

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x76

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x77

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x79

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x7a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x33252525

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x7b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x33e6e6e6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a00f0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a00ac

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x7c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x7d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v13, 0x7f0a03e0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x7e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x7f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v13, -0x80

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020313

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020312

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020311

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020310

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102057b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020577

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102025f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020574

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020558

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020222

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020339

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a03a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a03a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x30304

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x74fcfcfc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x58030304

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x171718

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x7f171718

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x67a5a5a5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x30304

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x27fcfcfc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x30304

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xa38b80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x584942

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0605

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0601

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xc3c3c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0606

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x19191a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x434344

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x2d2d2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x73

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x34000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x75

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xf7f7f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x76

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xc3c3c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x77

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x79

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x33252525

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x33e6e6e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a00f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a00ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a03e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020313

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020312

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020311

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020310

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102057b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020577

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102025f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020574

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020558

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020222

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020339

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a03a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a03a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x34000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x74fafafa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x58050506

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x34ffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x7f171718

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x67a5a5a5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x18050506

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x69

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x27fafafa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x27000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x584942

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xa38b80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0605

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x19191a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0601

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x434344

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0606

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x2d2d2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xc3c3c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x73

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x30304

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x75

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xf7f7f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x76

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0xc3c3c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x77

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x79

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a00f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a00ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a03e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_0
    move/from16 v1, p1

    iput v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mPalleteChanged:Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconsOnlyOn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->resetNotificationPreviewShadow()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 6

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsNightModeOn:Z

    if-eq v0, v3, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsNightModeOn:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mNightModeChanged:Z

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const-class v4, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v4}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isNotificationColoringEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_5

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mNightModeChanged:Z

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onColorPalleteChanged(I)V

    :cond_4
    return-void

    :cond_5
    if-eqz v3, :cond_6

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mNightModeChanged:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onColorPalleteChanged(I)V

    return-void

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-eq v1, v2, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onColorPalleteChanged(I)V

    :cond_7
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public setUserSwitched(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mUserSwitched:Z

    return-void
.end method

.method public shouldForceChange()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mPalleteChanged:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mUserSwitched:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mPalleteChanged:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mUserSwitched:Z

    return v0
.end method

.method public shouldReTintTypo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mShouldTypoReTint:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mShouldTypoReTint:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mShouldTypoReTint:Z

    return v0
.end method

.method public update(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToUpdate(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToRevert(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v10

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getPrimaryColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isTypoShowing()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTypoLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v14

    nop

    invoke-virtual {v13, v12}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v16

    const/4 v0, 0x0

    if-eqz v16, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020202

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    :cond_2
    move/from16 v17, v0

    move-object v0, v7

    move-object v1, v14

    move v2, v11

    move v3, v10

    move v4, v9

    move-object v5, v15

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateTypo(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;I)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCurrentHeaderView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getPrimaryColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v2

    invoke-virtual {v7, v1, v2, v10, v9}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZ)V

    :cond_4
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v4, 0x8

    if-ge v1, v4, :cond_5

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->update(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v13

    move v0, v12

    :goto_1
    move v14, v0

    if-ge v14, v13, :cond_c

    invoke-virtual {v8, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    instance-of v0, v15, Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_a

    move-object v6, v15

    check-cast v6, Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v17

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v18

    nop

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    nop

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldForceUpdate()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->flattenTextColor()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->flattenTextColor()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->flattenTextColor()V

    :cond_8
    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/NotificationColorPicker;->hasIncreasedCollapseView(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v19, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v20, v2

    move v2, v11

    move-object/from16 v21, v3

    move v3, v10

    move-object/from16 v22, v4

    move v4, v9

    move-object v12, v5

    move-object/from16 v5, v22

    move-object/from16 v23, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    goto :goto_2

    :cond_9
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object v12, v5

    move-object/from16 v23, v6

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v11

    move v3, v10

    move v4, v9

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V

    :goto_2
    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, v17

    move v2, v11

    move v3, v10

    move v4, v9

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    move-object/from16 v1, v18

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    invoke-direct {v7, v12, v9}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    goto :goto_3

    :cond_a
    instance-of v0, v15, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldForceUpdate()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v15

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGColor(Lcom/android/systemui/statusbar/NotificationBackgroundView;Z)V

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v0, v14, 0x1

    move v12, v1

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method public updateBGColor(Lcom/android/systemui/statusbar/NotificationBackgroundView;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getId()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f0a0090

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-eq v6, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-ne v1, v4, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v4, [I

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v4, v3

    invoke-direct {v1, v6, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    :goto_0
    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v5

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_3
    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-eq v2, v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-ne v1, v4, :cond_5

    :cond_4
    if-eqz p2, :cond_5

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v4, [I

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x6e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v4, [I

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a008f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    :goto_1
    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v5

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "lock_noticard_opacity"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-static {v4, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "white_lockscreen_wallpaper"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v5

    :goto_2
    const v6, 0x3c23d70a    # 0.01f

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-static {v6, v5, v3}, Lcom/android/internal/util/NotificationColorUtil;->getOpacityOnKeyguard(FIZ)F

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    if-nez p2, :cond_8

    float-to-int v6, v5

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    :cond_8
    :goto_3
    return-void

    nop

    nop

    :array_0
    .array-data 4
        -0x30304
        -0x30304
    .end array-data

    :array_1
    .array-data 4
        0x74fcfcfc
        0x74fcfcfc
    .end array-data
.end method

.method public updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToUpdate(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x6a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v0, -0x67

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getColor(I)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :goto_0
    return-void
.end method

.method public updateHeader(Landroid/view/View;IZZ)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    const v0, 0x1020202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v1, 0x1020313

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, -0x69

    if-eqz v2, :cond_4

    nop

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const v1, 0x1020312

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    nop

    if-eqz p4, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    const v1, 0x1020311

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_8

    nop

    if-eqz p4, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    const v1, 0x1020310

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_a

    nop

    if-eqz p4, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_3

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    const v1, 0x102057b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_c

    nop

    if-eqz p4, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    const v1, 0x1020577

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/DateTimeView;

    if-eqz v8, :cond_e

    nop

    if-eqz p4, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_5

    :cond_d
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/DateTimeView;->setTextColor(I)V

    :cond_e
    const v1, 0x102025f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Landroid/widget/Chronometer;

    if-eqz v10, :cond_10

    move-object v10, v9

    check-cast v10, Landroid/widget/Chronometer;

    if-eqz v8, :cond_10

    nop

    if-eqz p4, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_6

    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_10
    const v1, 0x10202ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_11

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_11
    const v3, 0x10204a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_12

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    return-void
.end method

.method public updateInversionByKeyguard()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_noticard_opacity"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "white_lockscreen_wallpaper"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const v4, 0x3c23d70a    # 0.01f

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-static {v4, v1}, Lcom/android/internal/util/NotificationColorUtil;->shouldInvertTextColor(FZ)Z

    move-result v4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->getNotificationTextColorInversion()I

    move-result v5

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsInversionNeededByKeyguard:Z

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-nez v6, :cond_3

    move v8, v2

    goto :goto_3

    :cond_3
    move v8, v3

    :goto_3
    if-eq v7, v8, :cond_5

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-nez v6, :cond_4

    move v3, v2

    nop

    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsInversionNeededByKeyguard:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mShouldTypoReTint:Z

    :cond_5
    return-void
.end method

.method public updateMessaging(Landroid/view/View;IZZ)V
    .locals 7

    instance-of v0, p1, Lcom/android/internal/widget/MessagingLayout;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz p4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v4, -0x68

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v4, 0x1020016

    goto :goto_0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz p4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v5, -0x69

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v5, 0x1020558

    goto :goto_2

    :goto_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingGroup;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v3, v4}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    if-eqz p3, :cond_2

    invoke-virtual {v6, p2}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    return-void
.end method

.method public updateSingleLine(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    return-void
.end method

.method public updateTypo(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;I)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    const v3, 0x7f0a0602

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, p2

    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const v3, 0x7f0a0603

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, p2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const v4, 0x7f0a0608

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    if-eqz v2, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, p2

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    const v5, 0x7f0a0605

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, -0x6f

    if-eqz v6, :cond_b

    if-eqz v2, :cond_7

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_7
    if-eqz p5, :cond_9

    const-string v8, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->getOriginalTextSpannable()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->getRevertedTextSpannable()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    if-eqz p4, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->getRevertedTextSpannable()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_3

    :cond_8
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->getOriginalTextSpannable()Ljava/lang/CharSequence;

    move-result-object v8

    :goto_3
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    if-eqz p4, :cond_a

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_4
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_5

    :cond_a
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_4

    :goto_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    :goto_6
    const v8, 0x7f0a0606

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_e

    if-eqz v2, :cond_c

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_c
    if-eqz p4, :cond_d

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v10, -0x70

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_7
    check-cast v8, Ljava/lang/Integer;

    goto :goto_8

    :cond_d
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_7

    :goto_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    :goto_9
    const v8, 0x7f0a0601

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_13

    if-eqz v2, :cond_f

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d

    :cond_f
    if-eqz p5, :cond_11

    const-string v11, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->getOriginalDetailSpannable()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->getRevertedDetailSpannable()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    if-eqz p4, :cond_10

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->getRevertedDetailSpannable()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_a

    :cond_10
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;->getOriginalDetailSpannable()Ljava/lang/CharSequence;

    move-result-object v8

    :goto_a
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_11
    if-eqz p4, :cond_12

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v11, -0x71

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_b
    check-cast v8, Ljava/lang/Integer;

    goto :goto_c

    :cond_12
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_b

    :goto_c
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    :goto_d
    const v8, 0x7f0a0607

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_16

    if-eqz v2, :cond_14

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10

    :cond_14
    if-eqz p4, :cond_15

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_e
    check-cast v5, Ljava/lang/Integer;

    goto :goto_f

    :cond_15
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_e

    :goto_f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    :goto_10
    return-void
.end method
