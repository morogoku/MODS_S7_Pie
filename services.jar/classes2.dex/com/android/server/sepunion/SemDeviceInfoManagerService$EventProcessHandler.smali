.class final Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;
.super Landroid/os/Handler;
.source "SemDeviceInfoManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventProcessHandler"
.end annotation


# static fields
.field public static final MSG_OBSERVE_INTENT_ACTION:I = 0x2

.field public static final MSG_OBSERVE_URI:I = 0x1

.field public static final MSG_REGISTER_ACTIVITY_STATE_MONITOR:I = 0x5

.field public static final MSG_REGISTER_CALL_STATE_MONITOR:I = 0x3

.field public static final MSG_REGISTER_PACKAGE_STATE_MONITOR:I = 0x7

.field public static final MSG_RESUME_COMPONENT:I = 0x9

.field public static final MSG_UNIDENTIFIED:I = -0x1

.field public static final MSG_UNREGISTER_ACTIVITY_STATE_MONITOR:I = 0x6

.field public static final MSG_UNREGISTER_CALL_STATE_MONITOR:I = 0x4

.field public static final MSG_UNREGISTER_PACKAGE_STATE_MONITOR:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$600(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1e

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "handleMessage(): msg.getData() returns null!"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1e
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventProcessHandler:handleMessage() msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_2fa

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2dc

    :pswitch_45
    const-string v3, "component"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    const-string v4, "is_resumed"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v3, :cond_2f3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "monitor_activity_state;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_RESUME_COMPONENT: key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    iget-object v7, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportComponentStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Landroid/content/ComponentName;Z)V
    invoke-static {v7, v6, v3, v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1500(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Landroid/content/ComponentName;Z)V

    goto/16 :goto_2f3

    :pswitch_9e
    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "monitor_package_state"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c8

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PackageMonitor is still in use! DO NOT UNREGISTER!"

    invoke-static {v4, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_c8
    goto :goto_a8

    :cond_c9
    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;
    invoke-static {v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1800(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_d2
    .catchall {:try_start_7 .. :try_end_d2} :catchall_2f5

    goto/16 :goto_2f3

    :pswitch_d4
    :try_start_d4
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;
    invoke-static {v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1800(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_e6} :catch_e8
    .catchall {:try_start_d4 .. :try_end_e6} :catchall_2f5

    goto/16 :goto_2f3

    :catch_e8
    move-exception v3

    :try_start_e9
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on registering package monitor! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f3

    :pswitch_107
    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_111
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_132

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "monitor_activity_state"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_131

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UsageStatWatcher is still needed! DO NOT UNREGISTER!"

    invoke-static {v4, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_131
    goto :goto_111

    :cond_132
    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "usagestats"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManager;

    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
    invoke-static {v5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1600(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    goto/16 :goto_2f3

    :pswitch_14c
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "usagestats"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
    invoke-static {v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1600(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    goto/16 :goto_2f3

    :pswitch_166
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1700(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_2f3

    :pswitch_180
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1700(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_2f3

    :pswitch_19c
    const-string v3, "intent_action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "is_register"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "handleMessage(): bundle.getString(intent_action) returns null!"

    invoke-static {v5, v6}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1b9
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentReceivers:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->access$1300(Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    if-nez v6, :cond_1fa

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handleMessage(): mContentReceivers.get(action) returns null!"

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1f8

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating new UnionBroadcastReceiver for the action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentBroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {v7, v8, v5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentBroadcastReceiver;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;)V

    move-object v6, v7

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentReceivers:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->access$1300(Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1fa

    :cond_1f8
    monitor-exit v0
    :try_end_1f9
    .catchall {:try_start_e9 .. :try_end_1f9} :catchall_2f5

    return-void

    :cond_1fa
    :goto_1fa
    if-eqz v4, :cond_21b

    :try_start_1fc
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20f

    const-string/jumbo v7, "package"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_20f
    iget-object v7, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_22b

    :catch_219
    move-exception v5

    goto :goto_22d

    :cond_21b
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentReceivers:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->access$1300(Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_22b} :catch_219
    .catchall {:try_start_1fc .. :try_end_22b} :catchall_2f5

    :goto_22b
    goto/16 :goto_2f3

    :goto_22d
    nop

    :try_start_22e
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while processing MSG_OBSERVE_INTENT_ACTION: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f3

    :pswitch_24c
    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v5, "is_register"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v3, :cond_268

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "handleMessage(): bundle.getParcelable(uri) returns null!"

    invoke-static {v4, v6}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_268
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentObservers:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->access$900(Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/ContentObserver;

    if-nez v6, :cond_2af

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handleMessage(): mContentObservers.get(uri) returns null!"

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2ad

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating new UnionContentObserver for the uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;

    iget-object v8, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v9, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mObserverHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1100(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/os/Handler;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/os/Handler;)V

    move-object v6, v7

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentObservers:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->access$900(Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2af

    :cond_2ad
    monitor-exit v0

    return-void

    :cond_2af
    :goto_2af
    if-eqz v5, :cond_2c7

    const-string/jumbo v7, "notify_for_descendants"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v7, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v3, v4, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2f3

    :cond_2c7
    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentObservers:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->access$900(Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f3

    :goto_2dc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg.what has invalid value. msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f3
    :goto_2f3
    monitor-exit v0

    return-void

    :catchall_2f5
    move-exception v1

    monitor-exit v0
    :try_end_2f7
    .catchall {:try_start_22e .. :try_end_2f7} :catchall_2f5

    throw v1

    nop

    nop

    :pswitch_data_2fa
    .packed-switch 0x1
        :pswitch_24c
        :pswitch_19c
        :pswitch_180
        :pswitch_166
        :pswitch_14c
        :pswitch_107
        :pswitch_d4
        :pswitch_9e
        :pswitch_45
    .end packed-switch
.end method

.method public notifyToHandler(ILandroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
