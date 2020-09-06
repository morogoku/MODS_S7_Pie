.class public Lcom/android/systemui/statusbar/NotificationColorPicker;
.super Landroid/app/IWallpaperManagerCallback$Stub;
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

.field protected final mHandler:Landroid/os/Handler;

.field private mIsInversionNeededByKeyguard:Z

.field private mIsNightModeOn:Z

.field private mIsOpenThemeWallpaperChanged:Z

.field private mNightModeChanged:Z

.field private mOpenThemePackageName:Ljava/lang/String;

.field private mShouldTypoReTint:Z

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    new-instance v0, Lcom/android/systemui/statusbar/NotificationColorPicker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationColorPicker$1;-><init>(Lcom/android/systemui/statusbar/NotificationColorPicker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->NOTI_SUPPORT_ONEUI_1_5:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "N.C.P."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onConfigChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateInversionByKeyguard()V

    sget-boolean v0, Lcom/android/systemui/Rune;->NOTI_SUPPORT_ONEUI_1_5:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isOpenthemeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lockscreen_wallpaper_transparent"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsOpenThemeWallpaperChanged:Z

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationColorPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateNIO()V

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

.method private isCustom(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomNotification()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomBigNotification()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomHeadsupNotification()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomPublicNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

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

    const v5, 0x7f0a05a3

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

.method private turnToDefault(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getPrimaryColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    move v0, v12

    :goto_0
    move v13, v0

    if-ge v13, v11, :cond_4

    invoke-virtual {v8, v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    instance-of v0, v14, Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v15, v14

    check-cast v15, Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v17

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v18

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v6

    nop

    invoke-virtual {v15, v12}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v5

    nop

    invoke-virtual {v15, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v19

    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v20

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/NotificationColorPicker;->hasIncreasedCollapseView(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    const/16 v21, 0x1

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v9

    move v3, v10

    move-object/from16 v22, v5

    move-object v12, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    goto :goto_1

    :cond_1
    move-object/from16 v22, v5

    move-object v12, v6

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v9

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    :goto_1
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object/from16 v1, v17

    move v2, v9

    move v3, v10

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    move-object/from16 v1, v18

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    instance-of v0, v14, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v0, :cond_3

    move-object v0, v14

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGColor(Lcom/android/systemui/statusbar/NotificationBackgroundView;Z)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v13, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

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
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDimmed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBGOverrideTint NORMAL - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dimmed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " nightMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsNightModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " visibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isOnKeyguard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n            "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a059f

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

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

.method private updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p4}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateMessaging(Landroid/view/View;IZZ)V

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v8

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZZ)V

    const v0, 0x1020016

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, -0x68

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    const v5, 0x7f0a01a6

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    instance-of v5, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v9, v10}, Ljava/util/Date;-><init>(J)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UPDATEBASE - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " revert : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " color : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_1

    iget-object v13, v6, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_1
    iget-object v13, v6, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    :goto_0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n            "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x3

    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0a059e

    invoke-virtual {v5, v13, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    :cond_2
    const v2, -0xdadadb

    if-eqz v1, :cond_5

    if-eqz p6, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_4

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    iget-object v4, v6, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const v0, 0x1020574

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    if-eqz p6, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v8, :cond_7

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    check-cast v0, Ljava/lang/Integer;

    goto :goto_5

    :cond_7
    iget-object v2, v6, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_6
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    const v0, 0x1020558

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_d

    if-eqz p6, :cond_9

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x32dadadb

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v0, v3, v5, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_9
    if-eqz p5, :cond_b

    const-string v5, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getOriginalSpannable()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getRevertedSpannable()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v8, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getRevertedSpannable()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_7

    :cond_a
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getOriginalSpannable()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_b
    if-eqz v8, :cond_c

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v5, -0x69

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    check-cast v0, Ljava/lang/Integer;

    goto :goto_9

    :cond_c
    iget-object v5, v6, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    :goto_a
    return-void
.end method

.method private updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p6

    if-nez v1, :cond_0

    return-void

    :cond_0
    move/from16 v4, p2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateActions(Landroid/view/View;IZ)V

    instance-of v5, v2, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;

    const/16 v6, -0x69

    const/16 v7, 0x21

    const/4 v8, 0x0

    const v9, -0x32dadadb

    if-eqz v5, :cond_5

    const v5, 0x1020222

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_5

    if-eqz v3, :cond_1

    new-instance v5, Landroid/text/SpannableString;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v5, v11, v8, v12, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    if-eqz v2, :cond_3

    const-string v11, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getOriginalSpannable()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, ""

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getRevertedSpannable()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getRevertedSpannable()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getOriginalSpannable()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_0
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    check-cast v5, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    :goto_3
    instance-of v5, v2, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;

    if-eqz v5, :cond_28

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;

    const v10, 0x1020339

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_a

    if-eqz v3, :cond_6

    new-instance v10, Landroid/text/SpannableString;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-virtual {v10, v12, v8, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_6
    if-eqz v5, :cond_8

    const-string v12, ""

    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, ""

    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    if-eqz p4, :cond_7

    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_4
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_8
    if-eqz p4, :cond_9

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_5
    check-cast v10, Ljava/lang/Integer;

    goto :goto_6

    :cond_9
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_5

    :goto_6
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    :goto_7
    const v10, 0x102033a

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_f

    if-eqz v3, :cond_b

    new-instance v10, Landroid/text/SpannableString;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v13, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-virtual {v10, v13, v8, v14, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_b
    if-eqz v5, :cond_d

    const-string v13, ""

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, ""

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    if-eqz p4, :cond_c

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_8

    :cond_c
    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_8
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_d
    if-eqz p4, :cond_e

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_9
    check-cast v10, Ljava/lang/Integer;

    goto :goto_a

    :cond_e
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_9

    :goto_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    :goto_b
    const v10, 0x102033b

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_14

    if-eqz v3, :cond_10

    new-instance v10, Landroid/text/SpannableString;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-direct {v10, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v14, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v10, v14, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_10
    if-eqz v5, :cond_12

    const-string v9, ""

    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, ""

    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    if-eqz p4, :cond_11

    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_c

    :cond_11
    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v9

    :goto_c
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_12
    if-eqz p4, :cond_13

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_d
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    goto :goto_e

    :cond_13
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_d

    :goto_e
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_14
    :goto_f
    const v9, 0x102033c

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_19

    if-eqz v3, :cond_15

    new-instance v9, Landroid/text/SpannableString;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    const v6, -0x32dadadb

    invoke-direct {v14, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v9, v14, v8, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_15
    if-eqz v5, :cond_17

    const-string v6, ""

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, ""

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    if-eqz p4, :cond_16

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_10

    :cond_16
    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_10
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_17
    if-eqz p4, :cond_18

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x69

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_11
    check-cast v6, Ljava/lang/Integer;

    goto :goto_12

    :cond_18
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_11

    :goto_12
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_19
    :goto_13
    const v6, 0x102033d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_1e

    if-eqz v3, :cond_1a

    new-instance v6, Landroid/text/SpannableString;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-direct {v6, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x32dadadb

    invoke-direct {v14, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v15, v10

    const/16 v10, 0x21

    invoke-virtual {v6, v14, v8, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_1a
    move-object v15, v10

    if-eqz v5, :cond_1c

    const-string v7, ""

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, ""

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    if-eqz p4, :cond_1b

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_14

    :cond_1b
    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_14
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_1c
    if-eqz p4, :cond_1d

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x69

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_15
    check-cast v6, Ljava/lang/Integer;

    goto :goto_16

    :cond_1d
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_15

    :goto_16
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    :cond_1e
    move-object v15, v10

    :goto_17
    const v6, 0x102033e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_23

    if-eqz v3, :cond_1f

    new-instance v6, Landroid/text/SpannableString;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const v14, -0x32dadadb

    invoke-direct {v10, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v16, v9

    const/16 v9, 0x21

    invoke-virtual {v6, v10, v8, v14, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_1f
    move-object/from16 v16, v9

    if-eqz v5, :cond_21

    const-string v9, ""

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    const-string v9, ""

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    if-eqz p4, :cond_20

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_18

    :cond_20
    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_18
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_21
    if-eqz p4, :cond_22

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x69

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_19
    check-cast v6, Ljava/lang/Integer;

    goto :goto_1a

    :cond_22
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_19

    :goto_1a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b

    :cond_23
    move-object/from16 v16, v9

    :goto_1b
    const v6, 0x102033f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_28

    if-eqz v3, :cond_24

    new-instance v6, Landroid/text/SpannableString;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const v14, -0x32dadadb

    invoke-direct {v10, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v17, v7

    const/16 v7, 0x21

    invoke-virtual {v6, v10, v8, v14, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :cond_24
    move-object/from16 v17, v7

    if-eqz v5, :cond_26

    const-string v7, ""

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    const-string v7, ""

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    if-eqz p4, :cond_25

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getRevertedSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1c

    :cond_25
    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->getOriginalSpannable(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_1c
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :cond_26
    if-eqz p4, :cond_27

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x69

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_1d
    check-cast v6, Ljava/lang/Integer;

    goto :goto_1e

    :cond_27
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1d

    :goto_1e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_28
    :goto_1f
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    return-void
.end method

.method private updateNIO()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->resetNotificationPreviewShadow()V

    const-class v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->getNPC()Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIconContainer()Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->refreshAllIcons()V

    :cond_0
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

    const v4, 0x7f080609

    goto :goto_1

    :cond_1
    const v4, 0x7f080607

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
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

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

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isNewNotification()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->turnToDefault(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v0

    nop

    :goto_0
    move v1, v13

    if-ge v1, v0, :cond_4

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v7, v3, v14}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGColor(Lcom/android/systemui/statusbar/NotificationBackgroundView;Z)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isColorized()Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v2, Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v5

    invoke-direct {v7, v4, v9, v14}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateActions(Landroid/view/View;IZ)V

    invoke-direct {v7, v5, v9, v14}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateActions(Landroid/view/View;IZ)V

    :cond_3
    add-int/lit8 v13, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    invoke-virtual {v7, v8, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    return-void

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v15

    move v0, v13

    :goto_1
    move v6, v0

    if-ge v6, v15, :cond_9

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v0, v5, Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_7

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

    if-eqz v0, :cond_6

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

    :cond_6
    move-object/from16 v22, v2

    move-object v14, v3

    move-object/from16 v23, v4

    move-object v13, v5

    move/from16 v24, v6

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v9

    move v3, v11

    move v4, v10

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

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

    :cond_7
    move-object v13, v5

    move/from16 v24, v6

    instance-of v0, v13, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v0, :cond_8

    move-object v0, v13

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGColor(Lcom/android/systemui/statusbar/NotificationBackgroundView;Z)V

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v0, v24, 0x1

    move v13, v1

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    iget v0, v7, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getViewState()Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->invert:Ljava/lang/Boolean;

    :cond_a
    return-void
.end method

.method public isNeedToRevert(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToUpdate(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDimmed()Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsInversionNeededByKeyguard:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsNightModeOn:Z

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_5

    :cond_4
    return v2

    :cond_5
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

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    move v1, v4

    nop

    :cond_2
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

.method public isOpenThemeWallpaperChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsOpenThemeWallpaperChanged:Z

    return v0
.end method

.method public isOpenthemeOn()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

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
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    :cond_0
    const v2, 0x102025f

    const v3, 0x1020577

    const v4, 0x102057b

    const v5, 0x1020310

    const v6, 0x1020311

    const v7, 0x1020312

    const v8, 0x1020313

    const v10, -0x50506

    const v11, -0x30304

    const v12, -0xdadadb

    const v14, -0x32dadadb

    const/4 v15, 0x0

    if-eqz v1, :cond_4

    const v9, 0x7f0601da

    packed-switch v1, :pswitch_data_0

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x1020016

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x1020574

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x1020558

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x102000d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x1020222

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x1020339

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x102033a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x102033b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x102033c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x102033d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x102033e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x102033f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a03a7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a03a6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a0090

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a008f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x74fcfcfc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x6e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x58030304

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x171718

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x7f171718

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x6d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x67a5a5a5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x68

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x69

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x32050506    # -5.26344E8f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x6a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x27fcfcfc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x72

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x6b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0xa38b80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x6c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x584942

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a0607

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a0603

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0xc3c3c4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a0608

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x6f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x19191a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x71

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x434344

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x2d2d2e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x73

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/high16 v4, 0x34000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x74

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x75

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0xf7f7f8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x76

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0xc3c3c4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x77

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x79

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x7a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x33252525

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x7b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x33e6e6e6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a00f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a00ac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x7c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x7d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x32050506    # -5.26344E8f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v3, 0x7f0a03e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x7e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x7f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v3, -0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    move v3, v15

    goto/16 :goto_4

    :pswitch_0
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v12, 0x7f0601db

    invoke-virtual {v10, v12}, Landroid/content/Context;->getColor(I)I

    move-result v10

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v13, 0x7f0601f3

    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v14, 0x7f0601dd

    invoke-virtual {v13, v14}, Landroid/content/Context;->getColor(I)I

    move-result v13

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v11, 0x7f0601dc

    invoke-virtual {v14, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v15, 0x7f060210

    invoke-virtual {v14, v15}, Landroid/content/Context;->getColor(I)I

    move-result v14

    const/16 v15, 0xff

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

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

    invoke-virtual {v15, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v7, 0x7f0601d9

    invoke-virtual {v15, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    nop

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    move/from16 v16, v7

    const/16 v7, 0x27

    invoke-static {v7, v8, v15, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020313

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020312

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020311

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020310

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x102057b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020577

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x102025f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020016

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020574

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x1020558

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v8, 0x102000d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v17, v1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x1020222

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x1020339

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x102033a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x102033b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x102033c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x102033d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x102033e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x102033f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a03a7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a03a6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a0090

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a008f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x6e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x65

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x6d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x66

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x67

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x68

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x69

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x27fcfcfc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x72

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, -0x30304

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x6b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x6c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a0607

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a0603

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a0608

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x6f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x71

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x70

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x73

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x74

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x75

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x76

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x77

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x79

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x7a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x7b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a00f0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a00ac

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x7c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x7d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a03e0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x7e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x7f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v8, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v18, v2

    move/from16 v15, v17

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_4

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

    move-result v10

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v6, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v10

    move v11, v10

    const/16 v12, 0xcd

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v13

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v14

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    move v13, v10

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v15, 0x1020313

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v14, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020312

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020311

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020310

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x102057b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020577

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x102025f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020016

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020574

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x1020558

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v14, 0x102000d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v19, v1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020222

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x1020339

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x102033a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x102033b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x102033c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x102033d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x102033e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x102033f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a03a7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a03a6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a0090

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a008f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x6e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x65

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x6d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x66

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x67

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x68

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x69

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x6a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v14, 0x27fcfcfc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x72

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v14, -0x30304

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x6b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x6c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a0607

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a0603

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a0608

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x6f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x71

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x70

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x73

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x74

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x75

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x76

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x77

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x79

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x7a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v14, 0x33252525

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x7b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v14, 0x33e6e6e6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a00f0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a00ac

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x7c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x7d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v9, 0x7f0a03e0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x7e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isOpenthemeOn()Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v15, 0x7f0601da

    invoke-virtual {v14, v15}, Landroid/content/Context;->getColor(I)I

    move-result v14

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x7f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isOpenthemeOn()Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v15, 0x7f0601d9

    invoke-virtual {v14, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v9, -0x80

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isOpenthemeOn()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v14, 0x7f0601da

    invoke-virtual {v15, v14}, Landroid/content/Context;->getColor(I)I

    move-result v15

    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v15

    move/from16 v20, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v14}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    move/from16 v21, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/16 v14, 0x27

    invoke-static {v14, v15, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    goto :goto_3

    :cond_3
    move/from16 v20, v2

    move/from16 v21, v3

    const/4 v15, 0x0

    :goto_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020313

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x32050506    # -5.26344E8f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020312

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020311

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020310

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102057b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020577

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102025f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020574

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020558

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x32050506    # -5.26344E8f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const v3, -0x32050506    # -5.26344E8f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x1020339

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x102033f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a03a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a03a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x32050506    # -5.26344E8f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    const v2, 0x7f0a0607

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x19191a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0603

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x434344

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a0608

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

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a00ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v2, -0x7d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x32050506    # -5.26344E8f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v2, 0x7f0a03e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_4
    move/from16 v1, p1

    iput v1, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsOpenThemeWallpaperChanged:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->resetNotificationPreviewShadow()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateInversionByKeyguard()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 8

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

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mOpenThemePackageName:Ljava/lang/String;

    if-eq v5, v3, :cond_2

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mOpenThemePackageName:Ljava/lang/String;

    const/4 v4, 0x1

    :cond_2
    const-class v5, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v5}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isNotificationColoringEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    if-eqz v6, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onColorPalleteChanged(I)V

    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mNightModeChanged:Z

    if-eqz v2, :cond_6

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mNightModeChanged:Z

    :cond_6
    return-void

    :cond_7
    if-eqz v3, :cond_9

    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onColorPalleteChanged(I)V

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mNightModeChanged:Z

    if-eqz v7, :cond_8

    const-class v7, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateAllNotificationColor(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mNightModeChanged:Z

    :cond_8
    return-void

    :cond_9
    iget v7, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-eq v7, v2, :cond_a

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onColorPalleteChanged(I)V

    :cond_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mNightModeChanged:Z

    if-eqz v2, :cond_b

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mNightModeChanged:Z

    :cond_b
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

.method public onWallpaperChanged()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isOpenthemeOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsOpenThemeWallpaperChanged:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsOpenThemeWallpaperChanged:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_noticard_opacity"

    const/16 v2, 0x2d

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
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

.method public update(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToUpdate(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v0

    nop

    :goto_0
    move v1, v10

    if-ge v1, v0, :cond_2

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v10, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToRevert(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v12

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->getPrimaryColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isTypoShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTypoLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v15

    nop

    invoke-virtual {v14, v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v17

    const/4 v0, 0x0

    if-eqz v17, :cond_4

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

    :cond_4
    move/from16 v18, v0

    move-object v0, v7

    move-object v1, v15

    move v2, v13

    move v3, v12

    move v4, v11

    move-object/from16 v5, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateTypo(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationTypoTemplateViewWrapper;I)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGOverrideTint(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupSummary()Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCurrentHeaderView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move v2, v13

    move v3, v12

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZZ)V

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCurrentHeaderView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v13}, Landroid/view/NotificationHeaderView;->setOriginalIconColor(I)V

    invoke-virtual {v1, v13}, Landroid/view/NotificationHeaderView;->setOriginalNotificationColor(I)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v10

    goto :goto_2

    :cond_8
    :goto_1
    move v1, v14

    :goto_2
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderForExpansion(Z)V

    :cond_9
    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v3, 0x8

    if-ge v0, v3, :cond_a

    invoke-virtual {v7, v2, v10}, Lcom/android/systemui/statusbar/NotificationColorPicker;->update(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v6

    move v0, v10

    :goto_4
    move v5, v0

    if-ge v5, v6, :cond_11

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v0, v4, Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_f

    move-object v3, v4

    check-cast v3, Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v17

    nop

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    nop

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v14

    if-eqz p2, :cond_d

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->flattenTextColor()V

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->flattenTextColor()V

    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->flattenTextColor()V

    :cond_d
    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->hasIncreasedCollapseView(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v20, v1

    move-object v1, v15

    move-object v10, v2

    move v2, v13

    move-object/from16 v21, v3

    move v3, v12

    move-object/from16 v22, v4

    move v4, v11

    move/from16 v23, v5

    move-object/from16 v5, v20

    move/from16 v24, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    goto :goto_5

    :cond_e
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object v10, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v15

    move v2, v13

    move v3, v12

    move v4, v11

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    :goto_5
    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v13

    move v3, v12

    move v4, v11

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    move-object/from16 v1, v17

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBig(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/NotificationViewWrapper;Z)V

    invoke-direct {v7, v10, v11}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    goto :goto_6

    :cond_f
    move-object/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v0, v22

    instance-of v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v1, :cond_10

    if-eqz p2, :cond_10

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateBGColor(Lcom/android/systemui/statusbar/NotificationBackgroundView;Z)V

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v0, v23, 0x1

    move v10, v2

    move/from16 v6, v24

    const/4 v14, 0x1

    goto/16 :goto_4

    :cond_11
    move/from16 v24, v6

    iget v0, v7, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getViewState()Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->invert:Ljava/lang/Boolean;

    :cond_12
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

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-eq v6, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-ne v1, v5, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v1, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v5, [I

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v5, v3

    invoke-direct {v1, v6, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    :goto_0
    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v4

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-eq v2, v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mState:I

    if-ne v1, v5, :cond_5

    :cond_4
    if-eqz p2, :cond_5

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-direct {v1, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->isWhiteStatusbarOrWallpaperOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const/16 v7, -0x6e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v3

    invoke-direct {v1, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x7f0a008f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v3

    invoke-direct {v1, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    :goto_1
    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v4

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lock_noticard_opacity"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const v5, 0x3c23d70a    # 0.01f

    int-to-float v6, v3

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/Rune;->isWhiteStatusbarOrWallpaperOn(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v5, v4, v6}, Lcom/android/internal/util/NotificationColorUtil;->getOpacityOnKeyguard(FIZ)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    if-nez p2, :cond_7

    float-to-int v5, v4

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    :cond_7
    :goto_2
    return-void

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
    .locals 6

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

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBGOverrideTint HUN - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n            "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0a059f

    invoke-virtual {p1, v4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

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

.method public updateHeader(Landroid/view/View;IZZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const v4, 0x1020006

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    const v4, 0x1020202

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v5, 0x1020313

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, -0x69

    if-eqz v6, :cond_5

    if-eqz p5, :cond_3

    const v5, -0x32dadadb

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const v5, 0x1020312

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_8

    if-eqz p5, :cond_6

    const v5, -0x32dadadb

    goto :goto_3

    :cond_6
    if-eqz p4, :cond_7

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_2

    :cond_7
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_3
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    const v5, 0x1020311

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_b

    if-eqz p5, :cond_9

    const v5, -0x32dadadb

    goto :goto_5

    :cond_9
    if-eqz p4, :cond_a

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_4

    :cond_a
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    :goto_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_5
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    const v5, 0x1020310

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_e

    if-eqz p5, :cond_c

    const v5, -0x32dadadb

    goto :goto_7

    :cond_c
    if-eqz p4, :cond_d

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_6

    :cond_d
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    :goto_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_7
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    const v5, 0x102057b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_11

    if-eqz p5, :cond_f

    const v5, -0x32dadadb

    goto :goto_9

    :cond_f
    if-eqz p4, :cond_10

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_8

    :cond_10
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    :goto_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_9
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_11
    const v5, 0x1020577

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/DateTimeView;

    if-eqz v13, :cond_14

    if-eqz p5, :cond_12

    const v8, -0x32dadadb

    goto :goto_b

    :cond_12
    if-eqz p4, :cond_13

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_a

    :cond_13
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    :goto_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_b
    invoke-virtual {v13, v8}, Landroid/widget/DateTimeView;->setTextColor(I)V

    :cond_14
    const v5, 0x102025f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    instance-of v5, v8, Landroid/widget/Chronometer;

    if-eqz v5, :cond_17

    move-object v5, v8

    check-cast v5, Landroid/widget/Chronometer;

    if-eqz v13, :cond_17

    if-eqz p5, :cond_15

    const v3, -0x32dadadb

    goto :goto_d

    :cond_15
    if-eqz p4, :cond_16

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_c

    :cond_16
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mColorSet:Ljava/util/HashMap;

    const v7, 0x102025f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_d
    invoke-virtual {v5, v3}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_17
    const v3, 0x10202ae

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_18

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_18
    const v5, 0x10204a7

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_19

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_19
    return-void
.end method

.method public updateInversionByKeyguard()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_noticard_opacity"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-float v1, v0

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->isWhiteStatusbarOrWallpaperOn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->shouldInvertTextColor(FZ)Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getNotificationTextColorInversion()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsInversionNeededByKeyguard:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-eq v6, v7, :cond_4

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v5, :cond_3

    move v3, v4

    nop

    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsInversionNeededByKeyguard:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mShouldTypoReTint:Z

    :cond_4
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

.method public updateSingleLine(Landroid/view/View;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDimmed()Z

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsInversionNeededByKeyguard:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationColorPicker;->mIsNightModeOn:Z

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

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

    const v3, 0x7f0a0604

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
    const v3, 0x7f0a0605

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
    const v4, 0x7f0a060a

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
    const v5, 0x7f0a0607

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
    const v8, 0x7f0a0608

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
    const v8, 0x7f0a0603

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
    const v8, 0x7f0a0609

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
