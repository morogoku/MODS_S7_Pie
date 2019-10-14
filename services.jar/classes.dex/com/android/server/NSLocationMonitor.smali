.class public Lcom/android/server/NSLocationMonitor;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NSLocationMonitor$ServiceCallback;
    }
.end annotation


# static fields
.field private static final BLACKLIST_CHANGED:I = 0xb

.field private static final BLACKLIST_DEFAULT_VERSION:I = -0x1

.field private static final DEPRECATED_PERMISSION_MONITOR:I = 0x190

.field private static final GPS_BLACKLIST:Ljava/lang/String; = "gpsblacklist"

.field private static final GPS_WHITELIST:Ljava/lang/String; = "gpswhitelist"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final LOCATION_LISTENER_BLACKLIST_CHANGED:I = 0xd

.field private static final MEASUREMENT_LISTENER_BLACKLIST_CHANGED:I = 0x10

.field private static final MSG_GET_LAST_LOCATION:I = 0x5

.field private static final MSG_IMPORTANCE_CHANGED:I = 0x7

.field private static final MSG_LOCATION_REMOVE:I = 0x2

.field private static final MSG_LOCATION_REQUEST:I = 0x1

.field private static final MSG_MONITOR_SERVICE_CONNECTED:I = 0x1f4

.field private static final MSG_RECEIVER_WAKELOCK:I = 0x6

.field protected static final MSG_REGISTER_MEASUREMENT_CALLBACK:I = 0xc9

.field private static final MSG_SETTING_CHANGED:I = 0xcb

.field protected static final MSG_UNREGISTER_MEASUREMENT_CALLBACK:I = 0xca

.field private static final NSFLP_FEATURE:Ljava/lang/String; = "com.sec.feature.nsflp"

.field protected static final NSFLP_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.location.nsflp2.nsmonitor.NSLocationManager"

.field protected static final NSFLP_MONITOR_SERVICE:Ljava/lang/String; = "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

.field private static final NSFLP_PACKAGE:Ljava/lang/String; = "com.sec.location.nsflp2"

.field private static final PAUSE_PROVIDER_NSFLP:I = 0x0

.field private static final RESUME_PROVIDER_WITHOUT_WORKSOURCE_NSFLP:I = 0x2

.field private static final RESUME_PROVIDER_WITH_WORKSOURCE_NSFLP:I = 0x1

.field private static final STATUS_LISTENER_BLACKLIST_CHANGED:I = 0xf

.field private static final SUPPORT_FREEZE_MANAGER:I = 0x154

.field private static final SUPPORT_LOCATION_MONITOR:I = 0xd2

.field private static final SUPPORT_PERMISSION_MONITOR:I = 0x136

.field private static final TAG:Ljava/lang/String; = "NSLocationMonitor"

.field private static final THROTTLING_WHITELIST:Ljava/lang/String; = "throttlingwhitelist"

.field private static final THROTTLING_WHITELIST_CHANGED:I = 0xe

.field private static final WHITELIST_CHANGED:I = 0xc

.field private static final mValidProviderList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDisconnectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureLevel:I

.field private final mLocBlacklist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocListenerBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocWhitelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mManagerServiceConnection:Landroid/content/ServiceConnection;

.field private final mMeasurementListenerBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorBound:Z

.field private mMonitorService:Landroid/os/Messenger;

.field private mMonitorServiceConnection:Landroid/content/ServiceConnection;

.field private mNSLocationManagerBound:Z

.field private mNsLocationManager:Landroid/location/INSLocationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProviderPaused:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/location/ProviderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCallback:Lcom/android/server/NSLocationMonitor$ServiceCallback;

.field private final mStatusListenerBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemRunningTime:J

.field private final mWorkSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "gps"

    const-string/jumbo v2, "network"

    const-string/jumbo v3, "fused"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/NSLocationMonitor;->mValidProviderList:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NSLocationMonitor$ServiceCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mProviderRequestMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mWorkSourceMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocWhitelist:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mProviderPaused:Ljava/util/Map;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/NSLocationMonitor;->mNSLocationManagerBound:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;

    iput-boolean v0, p0, Lcom/android/server/NSLocationMonitor;->mMonitorBound:Z

    new-instance v0, Lcom/android/server/NSLocationMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/NSLocationMonitor$1;-><init>(Lcom/android/server/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/NSLocationMonitor;->mMonitorServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/NSLocationMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/NSLocationMonitor$2;-><init>(Lcom/android/server/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/NSLocationMonitor;->mManagerServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/NSLocationMonitor;->mServiceCallback:Lcom/android/server/NSLocationMonitor$ServiceCallback;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NSLocationMonitor;->mSystemRunningTime:J

    invoke-direct {p0}, Lcom/android/server/NSLocationMonitor;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/NSLocationMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/android/server/NSLocationMonitor;Landroid/location/INSLocationManager;)Landroid/location/INSLocationManager;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor;->mNsLocationManager:Landroid/location/INSLocationManager;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/NSLocationMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorBound:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/NSLocationMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NSLocationMonitor;->mNSLocationManagerBound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NSLocationMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/NSLocationMonitor;->mSystemRunningTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NSLocationMonitor;)Lcom/android/server/NSLocationMonitor$ServiceCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mServiceCallback:Lcom/android/server/NSLocationMonitor$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/NSLocationMonitor;)Landroid/util/ArraySet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    return-object v0
.end method

.method private addBackgroundThrottlingWhitelistByNsflp(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "NSLocationMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_28
    return-void
.end method

.method private addToLocationList(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_3d

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x690e3123

    if-eq v2, v3, :cond_23

    const v3, 0x48f9b7b3

    if-eq v2, v3, :cond_18

    goto :goto_2d

    :cond_18
    const-string/jumbo v2, "gpsblacklist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v1, 0x0

    goto :goto_2d

    :cond_23
    const-string/jumbo v2, "gpswhitelist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    :goto_2d
    packed-switch v1, :pswitch_data_3e

    goto :goto_3d

    :pswitch_31
    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocWhitelist:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_3d

    :pswitch_37
    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    nop

    :cond_3d
    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_31
    .end packed-switch
.end method

.method private initialize()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.feature.nsflp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.feature.nsflp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NS-FLP Feature available, nsFlpFeatureLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-lt v0, v1, :cond_ce

    const-string v0, "NSLocationMonitor"

    const-string v1, "Try to bind NSMonitorService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.location.nsflp2"

    const-string v2, "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mMonitorServiceConnection:Landroid/content/ServiceConnection;

    const v4, 0x4000001

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    sget-object v1, Lcom/android/server/NSLocationMonitor;->mValidProviderList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mProviderRequestMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v5}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mWorkSourceMap:Ljava/util/HashMap;

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mProviderPaused:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_8e
    iget v1, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v2, 0x154

    if-lt v1, v2, :cond_b5

    const-string v1, "NSLocationMonitor"

    const-string v2, "Try to bind NSManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.location.nsflp2"

    const-string v3, "com.sec.location.nsflp2.nsmonitor.NSLocationManager"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/NSLocationMonitor;->mManagerServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_cd

    :cond_b5
    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not binding the ManagerService by featureLevel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cd
    goto :goto_e6

    :cond_ce
    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not binding the MonitorService by featureLevel, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e6
    return-void
.end method


# virtual methods
.method protected getBackgroundThrottleWhitelistByNsflp()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    return-object v0
.end method

.method protected getGPSUsingApps()Ljava/util/Map;
    .registers 6

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "getGPSUsingApps() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/NSLocationMonitor;->mNSLocationManagerBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mNsLocationManager:Landroid/location/INSLocationManager;

    if-nez v0, :cond_12

    goto :goto_3b

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mNsLocationManager:Landroid/location/INSLocationManager;

    invoke-interface {v0}, Landroid/location/INSLocationManager;->getGPSUsingApps()Ljava/util/Map;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    const-string v2, "NSLocationMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to getGPSUsingApps due to  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", return null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3b
    :goto_3b
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v2, "mNSLocationManager is not connected, return null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected getKernelActiveSinceTime(Ljava/lang/String;)J
    .registers 13

    const/4 v0, 0x5

    const-string v1, "/d/wakeup_sources"

    const/4 v2, 0x0

    const-wide/16 v3, -0x5

    :try_start_6
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/d/wakeup_sources"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    const/4 v5, 0x0

    :cond_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    if-eqz v6, :cond_59

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "[\\t]+"

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2a} :catch_7a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_72

    const/4 v9, 0x6

    if-ge v8, v9, :cond_38

    const-wide/16 v8, -0x1

    nop

    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_36

    :catch_34
    move-exception v8

    :goto_35
    return-wide v3

    :goto_36
    nop

    return-wide v8

    :cond_38
    const/4 v8, 0x5

    :try_start_39
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_43} :catch_4d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_43} :catch_7a
    .catchall {:try_start_39 .. :try_end_43} :catchall_72

    nop

    nop

    :try_start_45
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4b

    :catch_49
    move-exception v10

    goto :goto_35

    :goto_4b
    nop

    return-wide v8

    :catch_4d
    move-exception v8

    const-wide/16 v9, -0x2

    nop

    :try_start_51
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_57

    :catch_55
    move-exception v9

    goto :goto_35

    :goto_57
    nop

    return-wide v9

    :cond_59
    const/4 v6, 0x1

    if-gt v5, v6, :cond_67

    const-wide/16 v8, -0x3

    nop

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_65

    :catch_63
    move-exception v6

    goto :goto_35

    :goto_65
    nop

    return-wide v8

    :cond_67
    nop

    :try_start_68
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_6e

    :catch_6c
    move-exception v5

    goto :goto_35

    :goto_6e
    nop

    const-wide/16 v3, -0x6

    return-wide v3

    :catchall_72
    move-exception v5

    if-eqz v2, :cond_78

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_78} :catch_6c

    :cond_78
    nop

    throw v5

    :catch_7a
    move-exception v5

    const-wide/16 v6, -0x4

    if-eqz v2, :cond_82

    :try_start_7f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_63

    :cond_82
    nop

    return-wide v6
.end method

.method protected getKernelWakelockTime(Ljava/lang/String;)J
    .registers 10

    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    new-instance v1, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Lcom/android/internal/os/KernelWakelockStats;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_4c

    :cond_17
    invoke-virtual {v2}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_34

    goto :goto_1f

    :cond_34
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    if-nez v3, :cond_45

    const-wide/16 v6, -0x2

    return-wide v6

    :cond_45
    iget-wide v6, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    return-wide v6

    :cond_48
    goto :goto_1f

    :cond_49
    const-wide/16 v3, -0x3

    return-wide v3

    :cond_4c
    :goto_4c
    const-wide/16 v3, -0x1

    return-wide v3
.end method

.method protected getLocBlacklist()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getLocWhitelist()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mLocWhitelist:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getProviderRequest(Ljava/lang/String;)Lcom/android/internal/location/ProviderRequest;
    .registers 3

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mProviderRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method protected getValidProviders()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/NSLocationMonitor;->mValidProviderList:Ljava/util/Set;

    return-object v0
.end method

.method protected getWorkSource(Ljava/lang/String;)Landroid/os/WorkSource;
    .registers 3

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mWorkSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    return-object v0
.end method

.method protected isBackgroundThrottlePackageByNsflp(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isLocListenerBlacklist(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isMeasurementListenerBlacklist(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isProviderPaused(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mProviderPaused:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected isStatusListenerBlacklist(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected sendGetLastLocationInfo(Landroid/location/LocationRequest;Ljava/lang/String;II)V
    .registers 9

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0x136

    if-lt v0, v1, :cond_4f

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_d

    goto :goto_4f

    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "provider"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "interval"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "quality"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4f
    :goto_4f
    const-string v0, "NSLocationMonitor"

    const-string v1, "Not support the monitor service for permission monitor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_c

    const-string v1, "NSLocationMonitor"

    const-string/jumbo v2, "sendMessage msg is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c
    iget v1, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v2, 0xd2

    if-ge v1, v2, :cond_2c

    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessage, nsFlpFeatureLevel is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2c
    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;

    const/4 v2, 0x1

    if-eqz v1, :cond_fa

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_e9

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v3, "packageName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "enable"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_4f
    iget-object v8, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_59
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6e

    const/4 v5, 0x1

    move-object v6, v9

    goto :goto_6f

    :cond_6e
    goto :goto_59

    :cond_6f
    :goto_6f
    if-eqz v4, :cond_ad

    if-eqz v5, :cond_8b

    const-string v2, "NSLocationMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is already included in mLocBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    return v0

    :cond_8b
    const-string v8, "NSLocationMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "is added to mLocBlacklist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cc

    :cond_ad
    if-eqz v5, :cond_ce

    if-eqz v6, :cond_ce

    const-string v8, "NSLocationMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is included in mLocBlacklist, so remove it"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_cc
    monitor-exit v7

    goto :goto_e9

    :cond_ce
    const-string v2, "NSLocationMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not included in mLocBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    return v0

    :catchall_e6
    move-exception v0

    monitor-exit v7
    :try_end_e8
    .catchall {:try_start_4f .. :try_end_e8} :catchall_e6

    throw v0

    :cond_e9
    :goto_e9
    :try_start_e9
    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_ee} :catch_ef

    goto :goto_fa

    :catch_ef
    move-exception v1

    const-string v2, "NSLocationMonitor"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_fa
    :goto_fa
    return v2
.end method

.method protected sendRegisterMeasurementInfo(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 8

    if-nez p1, :cond_b

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "sendAddListenerInfo, binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "listenerId"

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xc9

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendRemoveInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-ge v0, v1, :cond_e

    const-string v0, "NSLocationMonitor"

    const-string v1, "Not support the monitor service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "listenerid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendRequestInfo(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;ILjava/lang/Throwable;)V
    .registers 14

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-ge v0, v1, :cond_e

    const-string v0, "NSLocationMonitor"

    const-string v1, "Not support the monitor service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "provider"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "listenerid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "interval"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "quality"

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getQuality()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "pid"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "importance"

    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "throwable"

    invoke-virtual {v2, v3, p7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v3, "listenerType"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendSettingChangedInfo(IIZ)V
    .registers 7

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocationenabledForUser, uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xcb

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendUidImportanceChanged(II)V
    .registers 6

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-ge v0, v1, :cond_e

    const-string v0, "NSLocationMonitor"

    const-string v1, "Not support the monitor service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "importance"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendUnregisterMeasurementInfo(Landroid/os/IBinder;)V
    .registers 5

    if-nez p1, :cond_b

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "sendRemoveListenerInfo, binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "listenerId"

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xca

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setDataFromNSFLP(ILandroid/os/Bundle;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x1395

    if-eq v0, v1, :cond_10

    const-string v0, "NSLocationMonitor"

    const-string v1, "Not allowed to access setDataFromNSFLP function"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataFromNSFLP, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_148

    goto/16 :goto_146

    :pswitch_2c
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "setData for mMeasurementListenerBlacklist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "measurementlistenerblacklist"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v0, :cond_146

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size of mMeasurementListenerBlacklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_146

    :pswitch_66
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "setData for mStatusListenerBlacklist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "statuslistenerblacklist"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v0, :cond_146

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size of mStatusListenerBlacklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_146

    :pswitch_a0
    const-string/jumbo v0, "throttlingwhitelist"

    invoke-direct {p0, v0, p2}, Lcom/android/server/NSLocationMonitor;->addBackgroundThrottlingWhitelistByNsflp(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size of Throttling Whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_146

    :pswitch_c5
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "setData for mLocListenerBlacklist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "loclistenerblacklist"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v0, :cond_146

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const-string v1, "NSLocationMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size of mLocListenerBlacklist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_146

    :pswitch_fe
    const-string/jumbo v0, "gpswhitelist"

    invoke-direct {p0, v0, p2}, Lcom/android/server/NSLocationMonitor;->addToLocationList(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size of mLocWhitelist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor;->mLocWhitelist:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_146

    :pswitch_122
    const-string/jumbo v0, "gpsblacklist"

    invoke-direct {p0, v0, p2}, Lcom/android/server/NSLocationMonitor;->addToLocationList(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size of mLocBlacklist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor;->mLocBlacklist:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_146
    :goto_146
    return-void

    nop

    :pswitch_data_148
    .packed-switch 0xb
        :pswitch_122
        :pswitch_fe
        :pswitch_c5
        :pswitch_a0
        :pswitch_66
        :pswitch_2c
    .end packed-switch
.end method

.method protected updateProviderPaused(ZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mProviderPaused:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected updateRequestInfo(Ljava/lang/String;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)Z
    .registers 6

    iget v0, p0, Lcom/android/server/NSLocationMonitor;->mFeatureLevel:I

    const/16 v1, 0xd2

    if-lt v0, v1, :cond_1a

    sget-object v0, Lcom/android/server/NSLocationMonitor;->mValidProviderList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mProviderRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor;->mWorkSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
