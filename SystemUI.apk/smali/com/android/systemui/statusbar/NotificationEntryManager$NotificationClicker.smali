.class final Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationEntryManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setJustClicked(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    const-string v0, "NotificationEntryMgr"

    const-string v1, "NotificationClicker called on a view that is not a notification row."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldBlockStatusBar()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->wakeUpIfDozing(JLandroid/view/View;)V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "NotificationEntryMgr"

    const-string v3, "NotificationClicker called on an unclickable notification,"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isFreeFormClicked()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "NotificationEntryMgr"

    const-string v3, "NotificationClicker isFreeFormClicked,"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setJustClicked(Z)V

    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$NotificationClicker$LBMGOladLjt5equMOv9trf31Q8s;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$NotificationClicker$LBMGOladLjt5equMOv9trf31Q8s;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-static {v3}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$100(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    :cond_5
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconsOnlyOn()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$200(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$200(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$100(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconsOnlyOn()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$100(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$300(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNotiClickedOnShadeLocked(Z)V

    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v2, v1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$400(Lcom/android/systemui/statusbar/NotificationEntryManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$500(Lcom/android/systemui/statusbar/NotificationEntryManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$400(Lcom/android/systemui/statusbar/NotificationEntryManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x1e

    if-le v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$400(Lcom/android/systemui/statusbar/NotificationEntryManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$500(Lcom/android/systemui/statusbar/NotificationEntryManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->access$500(Lcom/android/systemui/statusbar/NotificationEntryManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method
