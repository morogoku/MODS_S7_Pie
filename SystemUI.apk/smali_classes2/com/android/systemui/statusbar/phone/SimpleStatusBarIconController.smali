.class public Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SimpleStatusBarIconController"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mTimeComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "simple_status_bar"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-object v0
.end method

.method private getLastNotificationIcons(I)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v9

    nop

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    const/4 v0, 0x0

    :goto_0
    move v13, v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v15, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v0, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    new-instance v5, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    const/16 v16, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v15

    move-wide/from16 v17, v3

    move-object v12, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Ljava/lang/String;JLcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v13, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mTimeComparator:Ljava/util/Comparator;

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->key:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-nez v2, :cond_1

    nop

    :goto_2
    move/from16 v5, p1

    goto/16 :goto_3

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->isLastMessageFromReply()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressStatusBar(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    iget-object v5, v6, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, p1

    if-ne v4, v5, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v19, v0, 0x1

    goto/16 :goto_1

    :cond_b
    move/from16 v5, p1

    :goto_4
    return-object v7
.end method


# virtual methods
.method public applySimpleStatusBar(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->getLastNotificationIcons(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isSimpleStatusBarEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSimpleStatusBarEnabled()Z

    move-result v0

    return v0
.end method
