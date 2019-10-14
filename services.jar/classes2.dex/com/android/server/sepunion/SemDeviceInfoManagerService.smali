.class public Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.super Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;
.source "SemDeviceInfoManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;,
        Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;,
        Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentBroadcastReceiver;,
        Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;,
        Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field private static final BUNDLE_KEY_IS_REGISTER:Ljava/lang/String; = "is_register"

.field private static final BUNDLE_KEY_NOTIFY_FOR_DESCENDANTS:Ljava/lang/String; = "notify_for_descendants"

.field private static final BUNDLE_KEY_URI:Ljava/lang/String; = "uri"

.field private static final SEPERATOR:Ljava/lang/String; = ";"

.field private static final SHIPPED:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

.field private final mListenerContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mObserverHandler:Landroid/os/Handler;

.field private final mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTestModeCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

.field private mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

.field private mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->SHIPPED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mObserverHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$2;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$3;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$4;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SemDeviceInfoManagerService"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mObserverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Landroid/content/ComponentName;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportComponentStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Landroid/telephony/PhoneStateListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/internal/content/PackageMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportCallStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->sendIntentAction(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ZLandroid/net/Uri;IZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    return-void
.end method

.method private enforeCallingPermission(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCustomEventKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ad

    const-string/jumbo v1, "monitor_call_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b4

    :cond_19
    const-string/jumbo v1, "monitor_activity_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, "component_list"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "monitor_activity_state;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_5e
    goto :goto_b4

    :cond_5f
    const-string/jumbo v1, "monitor_package_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    const-string/jumbo v1, "package_list"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "monitor_package_state;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_95
    goto :goto_b4

    :cond_96
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This custom event is not supported yet. event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :cond_ad
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v2, "getCustomEventKey() event is null!"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b4
    return-object v0
.end method

.method private getCustomEventMessageId(Ljava/lang/String;Z)I
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_36

    const-string/jumbo v0, "monitor_call_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p2, :cond_14

    const/4 v0, 0x3

    return v0

    :cond_14
    const/4 v0, 0x4

    return v0

    :cond_16
    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p2, :cond_23

    const/4 v0, 0x7

    return v0

    :cond_23
    const/16 v0, 0x8

    return v0

    :cond_26
    const-string/jumbo v0, "monitor_activity_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p2, :cond_33

    const/4 v0, 0x5

    return v0

    :cond_33
    const/4 v0, 0x6

    return v0

    :cond_35
    return v1

    :cond_36
    return v1
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_13

    :cond_23
    return-object v0
.end method

.method private getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;
    .registers 2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v0

    return-object v0
.end method

.method private getListenerContainer(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    if-nez v1, :cond_18

    new-instance v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    invoke-direct {v2, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;-><init>(I)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private getTag(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_17

    const-string/jumbo v3, "tag"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_17
    return-object v1
.end method

.method private printNumberOfContentObservers(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mContentObservers:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->access$900(Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method private printNumberOfPendingIntents(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v5, :cond_3c

    iget-object v6, v5, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v0, v7

    :cond_3c
    goto :goto_17

    :cond_3d
    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_75

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_75

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v6, :cond_74

    iget-object v7, v6, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_74

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v0, v8

    :cond_74
    goto :goto_4f

    :cond_75
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_ad

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_ad

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-object v7, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v7, :cond_ac

    iget-object v8, v7, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_ac

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v0, v9

    :cond_ac
    goto :goto_87

    :cond_ad
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private reportCallStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ILjava/lang/String;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    if-eqz v2, :cond_c2

    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_30
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual {v15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v14, v0

    const-string v0, "call_state"

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "phone_number"

    move-object/from16 v13, p3

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_bf

    :try_start_51
    iget-object v11, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    :try_end_53
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_51 .. :try_end_53} :catch_ac
    .catchall {:try_start_51 .. :try_end_53} :catchall_bf

    const/4 v0, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move/from16 v12, v16

    move-object v13, v14

    move-object/from16 v18, v14

    move-object v14, v0

    move-object v2, v15

    move-object/from16 v15, v17

    :try_start_60
    invoke-virtual/range {v10 .. v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportCallStateChanged() state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportCallStateChanged() state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_60 .. :try_end_a9} :catch_aa
    .catchall {:try_start_60 .. :try_end_a9} :catchall_bf

    goto :goto_b3

    :catch_aa
    move-exception v0

    goto :goto_b0

    :catch_ac
    move-exception v0

    move-object/from16 v18, v14

    move-object v2, v15

    :goto_b0
    :try_start_b0
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_b3
    nop

    move-object/from16 v2, p1

    goto/16 :goto_30

    :cond_b8
    nop

    move-object/from16 v2, p1

    goto/16 :goto_16

    :cond_bd
    monitor-exit v4

    goto :goto_ca

    :catchall_bf
    move-exception v0

    monitor-exit v4
    :try_end_c1
    .catchall {:try_start_b0 .. :try_end_c1} :catchall_bf

    throw v0

    :cond_c2
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportCallStateChanged(). No UnionEventListenerItem to report!"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ca
    return-void
.end method

.method private reportComponentStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Landroid/content/ComponentName;Z)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_c1

    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_30
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual {v15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v14, v0

    const-string v0, "component"

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "is_resumed"

    move/from16 v13, p3

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_50
    .catchall {:try_start_b .. :try_end_50} :catchall_be

    :try_start_50
    iget-object v11, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    :try_end_52
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_50 .. :try_end_52} :catch_ab
    .catchall {:try_start_50 .. :try_end_52} :catchall_be

    const/4 v0, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move/from16 v12, v16

    move-object v13, v14

    move-object/from16 v18, v14

    move-object v14, v0

    move-object v2, v15

    move-object/from16 v15, v17

    :try_start_5f
    invoke-virtual/range {v10 .. v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportComponentStateChanged() componentName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportComponentStateChanged() componentName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5f .. :try_end_a8} :catch_a9
    .catchall {:try_start_5f .. :try_end_a8} :catchall_be

    goto :goto_b2

    :catch_a9
    move-exception v0

    goto :goto_af

    :catch_ab
    move-exception v0

    move-object/from16 v18, v14

    move-object v2, v15

    :goto_af
    :try_start_af
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_b2
    nop

    move-object/from16 v2, p1

    goto/16 :goto_30

    :cond_b7
    nop

    move-object/from16 v2, p1

    goto/16 :goto_16

    :cond_bc
    monitor-exit v4

    goto :goto_c9

    :catchall_be
    move-exception v0

    monitor-exit v4
    :try_end_c0
    .catchall {:try_start_af .. :try_end_c0} :catchall_be

    throw v0

    :cond_c1
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportComponentStateChanged(). No UnionEventListenerItem to report!"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c9
    return-void
.end method

.method private reportPackageStateChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_c3

    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_30
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual {v15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v14, v0

    const-string/jumbo v0, "package_name"

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "package_state"

    move-object/from16 v13, p3

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_52
    .catchall {:try_start_b .. :try_end_52} :catchall_c0

    :try_start_52
    iget-object v11, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    :try_end_54
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_52 .. :try_end_54} :catch_ad
    .catchall {:try_start_52 .. :try_end_54} :catchall_c0

    const/4 v0, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move/from16 v12, v16

    move-object v13, v14

    move-object/from16 v18, v14

    move-object v14, v0

    move-object v2, v15

    move-object/from16 v15, v17

    :try_start_61
    invoke-virtual/range {v10 .. v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportPackageStateChanged() package = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportPackageStateChanged() package = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", tag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_61 .. :try_end_aa} :catch_ab
    .catchall {:try_start_61 .. :try_end_aa} :catchall_c0

    goto :goto_b4

    :catch_ab
    move-exception v0

    goto :goto_b1

    :catch_ad
    move-exception v0

    move-object/from16 v18, v14

    move-object v2, v15

    :goto_b1
    :try_start_b1
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_b4
    nop

    move-object/from16 v2, p1

    goto/16 :goto_30

    :cond_b9
    nop

    move-object/from16 v2, p1

    goto/16 :goto_16

    :cond_be
    monitor-exit v4

    goto :goto_cb

    :catchall_c0
    move-exception v0

    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_b1 .. :try_end_c2} :catchall_c0

    throw v0

    :cond_c3
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportPackageStateChanged(). No UnionEventListenerItem to report!"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cb
    return-void
.end method

.method private reportUriChanged(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ZLandroid/net/Uri;IZ)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_e0

    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v14, v0

    const/4 v0, 0x0

    invoke-virtual {v14}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    move-object v13, v9

    const-string/jumbo v9, "uri"

    move-object/from16 v12, p3

    invoke-virtual {v13, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v11, 0x0

    if-eqz p5, :cond_54

    const-string/jumbo v9, "notify_for_descendants"

    invoke-virtual {v13, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9
    :try_end_53
    .catchall {:try_start_9 .. :try_end_53} :catchall_dd

    move v0, v9

    :cond_54
    move v15, v0

    if-nez v15, :cond_59

    if-nez p5, :cond_d1

    :cond_59
    nop

    if-eqz v15, :cond_69

    :try_start_5c
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v9, "Notifying descendants changes."

    invoke-static {v0, v9}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5c .. :try_end_63} :catch_64
    .catchall {:try_start_5c .. :try_end_63} :catchall_dd

    goto :goto_69

    :catch_64
    move-exception v0

    move-object/from16 v17, v13

    move-object v2, v14

    goto :goto_ce

    :cond_69
    :goto_69
    :try_start_69
    iget-object v10, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;
    :try_end_6b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_69 .. :try_end_6b} :catch_ca
    .catchall {:try_start_69 .. :try_end_6b} :catchall_dd

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v9, v14

    move-object v12, v13

    move-object/from16 v17, v13

    move-object v13, v0

    move-object v2, v14

    move-object/from16 v14, v16

    :try_start_76
    invoke-virtual/range {v9 .. v14}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reportUriChanged() uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", tag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reportUriChanged() uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", tag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_76 .. :try_end_c7} :catch_c8
    .catchall {:try_start_76 .. :try_end_c7} :catchall_dd

    goto :goto_d1

    :catch_c8
    move-exception v0

    goto :goto_ce

    :catch_ca
    move-exception v0

    move-object/from16 v17, v13

    move-object v2, v14

    :goto_ce
    :try_start_ce
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :cond_d1
    :goto_d1
    nop

    move-object/from16 v2, p1

    goto/16 :goto_2e

    :cond_d6
    nop

    move-object/from16 v2, p1

    goto/16 :goto_14

    :cond_db
    monitor-exit v3

    goto :goto_e8

    :catchall_dd
    move-exception v0

    monitor-exit v3
    :try_end_df
    .catchall {:try_start_ce .. :try_end_df} :catchall_dd

    throw v0

    :cond_e0
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportUriChanged(). No UnionEventListenerItem to report!"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e8
    return-void
.end method

.method private sendIntentAction(Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;Landroid/content/Intent;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_101

    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->mUnionEventComponents:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_fe

    move-object v15, v0

    const/4 v11, 0x0

    :try_start_3c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_75

    sget-object v9, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Data cleared package = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", key = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v14, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v9, "action_origin"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v9, v15

    move-object v12, v0

    move-object/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    sget-object v9, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sendIntentAction() action = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", tag = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sendIntentAction() action = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", tag = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3c .. :try_end_ed} :catch_f3
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_ed} :catch_ee
    .catchall {:try_start_3c .. :try_end_ed} :catchall_fe

    goto :goto_f7

    :catch_ee
    move-exception v0

    :try_start_ef
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_f8

    :catch_f3
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_f7
    nop

    :goto_f8
    goto/16 :goto_2e

    :cond_fa
    goto/16 :goto_14

    :cond_fc
    monitor-exit v3

    goto :goto_109

    :catchall_fe
    move-exception v0

    monitor-exit v3
    :try_end_100
    .catchall {:try_start_ef .. :try_end_100} :catchall_fe

    throw v0

    :cond_101
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendIntentAction(). No UnionEventListenerItem to report!"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_109
    return-void
.end method

.method private testVerifyNumCustom(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method private testVerifyNumIntent(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method private testVerifyNumUri(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method


# virtual methods
.method public clearPendingIntent(Ljava/lang/String;)V
    .registers 14

    const-string v0, "clearPendingIntent"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPendingIntent() callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPendingIntent() callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_34
    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_a0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-object v8, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    invoke-virtual {v8, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->clear(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9f

    invoke-virtual {v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9a

    iget-object v9, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "uri"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v10, "is_register"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_9f

    :cond_9a
    iget-object v7, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    :goto_9f
    goto :goto_5d

    :cond_a0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    invoke-virtual {v8, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->clear(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e4

    invoke-virtual {v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_df

    iget-object v9, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "intent_action"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "is_register"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_e4

    :cond_df
    iget-object v9, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e4
    :goto_e4
    goto :goto_a4

    :cond_e5
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_115

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    invoke-virtual {v7, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->clear(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_114

    invoke-virtual {v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10f

    iget-object v8, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_114

    :cond_10f
    iget-object v8, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_114
    :goto_114
    goto :goto_e9

    :cond_115
    monitor-exit v0

    return-void

    :catchall_117
    move-exception v1

    monitor-exit v0
    :try_end_119
    .catchall {:try_start_34 .. :try_end_119} :catchall_117

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_be

    :try_start_6
    array-length v2, p3

    const/4 v3, 0x1

    if-le v2, v3, :cond_be

    sget-boolean v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->SHIPPED:Z

    if-eqz v2, :cond_17

    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Device is not in DEV mode."

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24e

    :cond_17
    aget-object v2, p3, v1

    const-string/jumbo v4, "testmode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    aget-object v2, p3, v3

    const-string/jumbo v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->setTestMode(I)V

    goto/16 :goto_24e

    :cond_34
    aget-object v2, p3, v3

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->setTestMode(I)V

    goto/16 :goto_24e

    :cond_46
    const-string v1, "Parameter error!"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_24e

    :cond_4d
    aget-object v2, p3, v1

    const-string/jumbo v4, "uri"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    array-length v1, p3

    invoke-static {p3, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->testVerifyNumUri(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_24e

    :cond_64
    aget-object v2, p3, v1

    const-string v4, "intent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    array-length v1, p3

    invoke-static {p3, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->testVerifyNumIntent(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_24e

    :cond_7a
    aget-object v2, p3, v1

    const-string v4, "custom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    array-length v1, p3

    invoke-static {p3, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->testVerifyNumCustom(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_24e

    :cond_90
    aget-object v2, p3, v1

    const-string/jumbo v4, "pending_intents"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    aget-object v1, p3, v3

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->printNumberOfPendingIntents(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_24e

    :cond_a2
    aget-object v1, p3, v1

    const-string/jumbo v2, "num_observers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    aget-object v1, p3, v3

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->printNumberOfContentObservers(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_24e

    :cond_b4
    const-string v1, "Parameter error!"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_24e

    :catchall_bb
    move-exception v1

    goto/16 :goto_250

    :cond_be
    const-string v2, "\n##### SEM DEVICE INFO MANAGER SERVICE #####\n##### (dumpsys sepunion semeventdelegator) #####\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of containers = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_de
    if-ge v1, v2, :cond_249

    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Listener container for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    if-eqz v4, :cond_245

    iget-object v5, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_16a

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_16a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of custom events: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_133
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v8, :cond_169

    invoke-virtual {v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_169
    goto :goto_133

    :cond_16a
    iget-object v6, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_1cb

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_1cb

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number of intent actions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_194
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1cb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Intent action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v9, :cond_1ca

    invoke-virtual {v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1ca
    goto :goto_194

    :cond_1cb
    iget-object v7, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_22c

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_22c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number of uries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1f5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Uri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v10, :cond_22b

    invoke-virtual {v10}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22b
    goto :goto_1f5

    :cond_22c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[End of listener container for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_245
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_de

    :cond_249
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, p1, p2, p3}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_24e
    monitor-exit v0

    return-void

    :goto_250
    monitor-exit v0
    :try_end_251
    .catchall {:try_start_6 .. :try_end_251} :catchall_bb

    throw v1
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 2

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public registerPendingIntentForCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 15

    const-string/jumbo v0, "registerPendingIntentForCustomEvent"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerPendingIntentForCustomEvent() event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerPendingIntentForCustomEvent() event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_47
    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    iget-object v5, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    invoke-virtual {v5, p4, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    iget-object v6, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    :cond_74
    const/4 v5, 0x0

    iget-object v6, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_94

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_93

    const/4 v5, 0x1

    goto :goto_94

    :cond_93
    goto :goto_7f

    :cond_94
    :goto_94
    if-nez v5, :cond_a0

    const/4 v7, 0x1

    invoke-direct {p0, p1, v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    invoke-virtual {v8, v7, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    :cond_a0
    new-instance v7, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;)V

    invoke-virtual {v7, p4, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    iget-object v8, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ae
    goto :goto_4f

    :cond_af
    monitor-exit v1

    return-void

    :catchall_b1
    move-exception v2

    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_47 .. :try_end_b3} :catchall_b1

    throw v2
.end method

.method public registerPendingIntentForIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 14

    const-string/jumbo v0, "registerPendingIntentForIntent"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v0, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2e
    sget-object v3, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPendingIntentForIntent() action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callingPackage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPendingIntentForIntent() action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callingPackage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_83
    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v4

    if-lez v0, :cond_d0

    nop

    :goto_8a
    if-ge v2, v0, :cond_d0

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    iget-object v6, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    invoke-virtual {v6, p3, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    iget-object v7, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    :cond_a9
    new-instance v6, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;)V

    invoke-virtual {v6, p3, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    iget-object v7, v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "intent_action"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "is_register"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    :goto_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    :cond_d0
    monitor-exit v3

    return-void

    :catchall_d2
    move-exception v2

    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_83 .. :try_end_d4} :catchall_d2

    throw v2
.end method

.method public registerPendingIntentForUri(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 13

    const-string/jumbo v0, "registerPendingIntentForUri"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerPendingIntentForUri() uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerPendingIntentForUri() uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5b
    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    invoke-virtual {v2, p3, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    :cond_78
    new-instance v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;)V

    invoke-virtual {v2, p3, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "uri"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "is_register"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v4, "notify_for_descendants"

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "notify_for_descendants"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    :goto_ae
    monitor-exit v0

    return-void

    :catchall_b0
    move-exception v1

    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_5b .. :try_end_b2} :catchall_b0

    throw v1
.end method

.method public unregisterPendingIntentForCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    const-string/jumbo v0, "unregisterPendingIntentForCustomEvent"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterPendingIntentForCustomEvent() event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_24
    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v5, :cond_61

    invoke-virtual {v5, p4, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    invoke-virtual {v5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5b

    iget-object v6, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    invoke-virtual {v7, v6, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_7c

    :cond_5b
    iget-object v6, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    :cond_61
    sget-object v6, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item for key \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    goto :goto_2c

    :cond_7d
    monitor-exit v1

    return-void

    :catchall_7f
    move-exception v2

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_24 .. :try_end_81} :catchall_7f

    throw v2
.end method

.method public unregisterPendingIntentForIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 16

    const-string/jumbo v0, "unregisterPendingIntentForIntent"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v0, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2e
    sget-object v3, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterPendingIntentForIntent() action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callingPackage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_55
    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v6

    if-eqz v6, :cond_bb

    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_bb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v5, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v8, :cond_9f

    invoke-virtual {v8, p3, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    invoke-virtual {v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_99

    iget-object v9, v5, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "intent_action"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "is_register"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_ba

    :cond_99
    iget-object v9, v5, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    :cond_9f
    sget-object v9, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "item for key \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\" is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    goto :goto_5f

    :cond_bb
    monitor-exit v4

    return-void

    :catchall_bd
    move-exception v2

    monitor-exit v4
    :try_end_bf
    .catchall {:try_start_55 .. :try_end_bf} :catchall_bd

    throw v2
.end method

.method public unregisterPendingIntentForUri(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v0, "unregisterPendingIntentForUri"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterPendingIntentForUri() uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_24
    invoke-direct {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v2, :cond_5e

    invoke-virtual {v2, p3, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    invoke-virtual {v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "uri"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "is_register"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_79

    :cond_58
    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    :cond_5e
    sget-object v3, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item for uri \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\" is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_24 .. :try_end_7d} :catchall_7b

    throw v1
.end method
