.class public Lcom/android/systemui/Dependency;
.super Lcom/android/systemui/SystemUI;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Dependency$DependencyKey;,
        Lcom/android/systemui/Dependency$DependencyProvider;
    }
.end annotation


# static fields
.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field private final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$DependencyProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "time_tick_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "main_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "leak_report_email"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "debug_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->DEBUG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static clearDependencies()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    return-void
.end method

.method public static destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/Dependency;->destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static initDependencies(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/Dependency;

    invoke-direct {v0}, Lcom/android/systemui/Dependency;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/Dependency;->mComponents:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/systemui/Dependency;->start()V

    return-void
.end method

.method static synthetic lambda$dump$81(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    return v0
.end method

.method static synthetic lambda$dump$82(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/Dumpable;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$83(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/systemui/ConfigurationChangedReceiver;

    return v0
.end method

.method static synthetic lambda$onConfigurationChanged$84(Landroid/content/res/Configuration;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/ConfigurationChangedReceiver;

    invoke-interface {v0, p0}, Lcom/android/systemui/ConfigurationChangedReceiver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic lambda$start$0()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TimeTick"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method static synthetic lambda$start$1()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysUiBg"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$start$10(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    const-class v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v0
.end method

.method public static synthetic lambda$start$11(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static synthetic lambda$start$12(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$13(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$14(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$15(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$16(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    sget-object v3, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    const-class v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v4}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v0
.end method

.method public static synthetic lambda$start$17(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$18(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$19(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$2()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysUiDbg"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$start$20(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$21(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$22()Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$start$23(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$24(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$25(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$26(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/systemui/assist/AssistManager;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$27(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$28()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$start$29(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/android/systemui/util/leak/LeakReporter;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/leak/LeakDetector;

    sget-object v3, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/util/leak/LeakReporter;-><init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$start$3()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic lambda$start$30(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/android/systemui/util/leak/GarbageMonitor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    const-class v3, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/leak/LeakDetector;

    const-class v4, Lcom/android/systemui/util/leak/LeakReporter;

    invoke-virtual {p0, v4}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/leak/LeakReporter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/util/leak/GarbageMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/util/leak/LeakReporter;)V

    return-object v0
.end method

.method public static synthetic lambda$start$31(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/TunerServiceImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$32(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$33(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$34(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$35(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$36()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$start$37()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$38(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/fragments/FragmentService;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/fragments/FragmentService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$39(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$4()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-direct {v0}, Lcom/android/systemui/ActivityStarterDelegate;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$start$40()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/PluginManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;-><init>(Lcom/android/systemui/plugins/PluginManager;)V

    return-object v0
.end method

.method public static synthetic lambda$start$41(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$start$42(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$43()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$44(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$45(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$46()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    invoke-direct {v0}, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$47(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/ForegroundServiceControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/ForegroundServiceControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$48(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$49(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$5(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method public static synthetic lambda$start$50(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    const-class v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/logging/MetricsLogger;)V

    return-object v0
.end method

.method public static synthetic lambda$start$51(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$52()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$start$53(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/OverviewProxyService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$54()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/power/EnhancedEstimatesImpl;

    invoke-direct {v0}, Lcom/android/systemui/power/EnhancedEstimatesImpl;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$55(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/AppOpsListener;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/AppOpsListener;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$56(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/VibratorHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$57()Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$start$58()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;

    invoke-direct {v0}, Lcom/android/systemui/splugins/ActivityManagerProxyImpl;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$59(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/splugins/SPluginPolicyInteractorImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/splugins/SPluginPolicyInteractorImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$6(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/AsyncSensorManager;-><init>(Landroid/hardware/SensorManager;)V

    return-object v0
.end method

.method public static synthetic lambda$start$60(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/splugins/SPluginManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$61(Lcom/android/systemui/BixbyInteractor;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic lambda$start$62(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/QSScreenGridResource;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSScreenGridResource;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$63()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$64(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$65(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$66(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/util/SystemUIImsManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$67(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/util/ShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ShortcutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$68(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$69()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-direct {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$7(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic lambda$start$70(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$71()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$start$72()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$73(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/util/DesktopManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/DesktopManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$74(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/aod/PluginAODManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$75(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$76()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSBackupRestoreManager;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$start$77()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/NotificationBackupRestoreManager;

    invoke-direct {v0}, Lcom/android/systemui/NotificationBackupRestoreManager;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$78(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/BlurController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/BlurController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$79()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-direct {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$8(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic lambda$start$80(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/SystemUITipPopUp;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/SystemUITipPopUp;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$9(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$DependencyProvider;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/Dependency$DependencyProvider;->createDependency()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported dependency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " providers known."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, "Dumping existing controllers:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/-$$Lambda$Dependency$u3tG0VLFvMK68HFdrUt9tToJbcY;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$u3tG0VLFvMK68HFdrUt9tToJbcY;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$Dependency$RamjIUcgsgF4BggHtYV77EKLWpE;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/-$$Lambda$Dependency$RamjIUcgsgF4BggHtYV77EKLWpE;-><init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/-$$Lambda$Dependency$D_tOzh9QaVVoxG2u-sYQLVGDKk4;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$D_tOzh9QaVVoxG2u-sYQLVGDKk4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$Dependency$0TY_eNdIg8JTYOvd6BMVJwMd1N8;

    invoke-direct {v1, p1}, Lcom/android/systemui/-$$Lambda$Dependency$0TY_eNdIg8JTYOvd6BMVJwMd1N8;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 4

    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$kBVF3uQcq1aY_iBb0icDCYhmBoA;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$kBVF3uQcq1aY_iBb0icDCYhmBoA;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$OPMs5tFKc41dcTd5aBaiMx5V8Jk;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$OPMs5tFKc41dcTd5aBaiMx5V8Jk;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->DEBUG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$qMSnn_DLwc6UCaHtdUEsjaI9uJg;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$qMSnn_DLwc6UCaHtdUEsjaI9uJg;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$qEfhMIObaWUB4JUpS1kyRh1wvtk;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$qEfhMIObaWUB4JUpS1kyRh1wvtk;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$8DxYcQ80ZYPsaja_1cX8b3QA4Jw;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$8DxYcQ80ZYPsaja_1cX8b3QA4Jw;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ActivityStarterDelegate;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$0H2oe1HD8YElVF7xZWH_GrR9Fus;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$0H2oe1HD8YElVF7xZWH_GrR9Fus;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/AsyncSensorManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Gy4QudNezotljEgQKa6AZ5wLN8g;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Gy4QudNezotljEgQKa6AZ5wLN8g;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$vhpQrWxDbweIViML-8LCC1Ml6HA;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$vhpQrWxDbweIViML-8LCC1Ml6HA;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/LocationController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Cqshp7K51OogqPsBzd-8WkWLscw;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Cqshp7K51OogqPsBzd-8WkWLscw;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$sXmtIDKunu8wBZvqigyneB02fuU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$sXmtIDKunu8wBZvqigyneB02fuU;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$MqeklNs0Y4sjPiwGncegTIKljdU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$MqeklNs0Y4sjPiwGncegTIKljdU;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$bE-oHFBo0SQuS0prD0vCrQd97eU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$bE-oHFBo0SQuS0prD0vCrQd97eU;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$JOKZfAg6ZDkkuCsSsy35IBCARTA;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$JOKZfAg6ZDkkuCsSsy35IBCARTA;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/CastController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$oOQ0donQppauaJPERDAkKBaeXo8;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$oOQ0donQppauaJPERDAkKBaeXo8;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$3n6-QJ1ZEPH6TMbkEd7wabHPggc;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$3n6-QJ1ZEPH6TMbkEd7wabHPggc;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$3ZrNl_prM_QqXnWtMCTUroZBqig;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$3ZrNl_prM_QqXnWtMCTUroZBqig;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$R9x9Mcq_hw4LFHdUOV1HoHSjDFY;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$R9x9Mcq_hw4LFHdUOV1HoHSjDFY;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$eVB3qUthhFg102GpQdjdNlDgpHI;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$eVB3qUthhFg102GpQdjdNlDgpHI;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$sN7_PX5fS0mTAWfUtAOWiOYYsEw;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$sN7_PX5fS0mTAWfUtAOWiOYYsEw;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/app/ColorDisplayController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Mc2Shc0BcQYa_D2DsNwT5hqVOkg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Mc2Shc0BcQYa_D2DsNwT5hqVOkg;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$8AJ7IdA5m7Auk6hpJZHZYOfed1g;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$8AJ7IdA5m7Auk6hpJZHZYOfed1g;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$hF8T392UDkD_wyM4wXGQ1xoJzyc;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$hF8T392UDkD_wyM4wXGQ1xoJzyc;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$K2n0vn1Y8M_gY0VzffT2V6dFJUY;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$K2n0vn1Y8M_gY0VzffT2V6dFJUY;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$F2PwPFK8ZYOsuPFjafNl1Rs3pss;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$F2PwPFK8ZYOsuPFjafNl1Rs3pss;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Rf9lPinWct-b4zmu1RmuBA1cyzQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Rf9lPinWct-b4zmu1RmuBA1cyzQ;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    sget-object v2, Lcom/android/systemui/-$$Lambda$J3WUZRdnu-T-7vKJybRHjfHN6k0;->INSTANCE:Lcom/android/systemui/-$$Lambda$J3WUZRdnu-T-7vKJybRHjfHN6k0;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$bjwY1_gMs7pb_0dTeSR6EhvnTDY;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$bjwY1_gMs7pb_0dTeSR6EhvnTDY;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/assist/AssistManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$FS-BHneeFfLq-XLo_OH5s3NDjq4;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$FS-BHneeFfLq-XLo_OH5s3NDjq4;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$EB7q74-YxFMIyWpXrNT-6Jqba3M;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$EB7q74-YxFMIyWpXrNT-6Jqba3M;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    sget-object v2, Lcom/android/systemui/-$$Lambda$u_O28tKtf6m63SoPms2fLLKgf0U;->INSTANCE:Lcom/android/systemui/-$$Lambda$u_O28tKtf6m63SoPms2fLLKgf0U;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$wt1tfYYZ7sc0aw1GfqJB16XIBDk;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$wt1tfYYZ7sc0aw1GfqJB16XIBDk;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakReporter;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$ObCj7gbBEIdh7uotev0wUsDF-gs;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$ObCj7gbBEIdh7uotev0wUsDF-gs;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$QeSLOyPvKnxd4T4ZD6vNH_c8Vsk;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$QeSLOyPvKnxd4T4ZD6vNH_c8Vsk;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$SfpVegTBkHb9tOvXbeeDUXrzjtM;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$SfpVegTBkHb9tOvXbeeDUXrzjtM;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$fk0IwG2aHV8HxJ2AG1DMnwxab4Y;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$fk0IwG2aHV8HxJ2AG1DMnwxab4Y;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$QZywXZS1w5xNhq0ThGkucw65zmw;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$QZywXZS1w5xNhq0ThGkucw65zmw;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$u55GtmTwAT7rU__EQu5suMFE5Gk;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$u55GtmTwAT7rU__EQu5suMFE5Gk;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$oVURdaajU8Vo60FOZrntr_9ZmLc;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$oVURdaajU8Vo60FOZrntr_9ZmLc;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$WPtwQQqVU6m1ifaO5rX2-zG3-Ok;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$WPtwQQqVU6m1ifaO5rX2-zG3-Ok;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$smXWaUeg7H9KoEKIjWv9FuyhNhY;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$smXWaUeg7H9KoEKIjWv9FuyhNhY;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$OdqeWGmU3r9_3T8q2CUebkYRzKg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$OdqeWGmU3r9_3T8q2CUebkYRzKg;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$aI0fjDw_7ZwEDU-NvRvpqn6TB8I;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$aI0fjDw_7ZwEDU-NvRvpqn6TB8I;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$w-GsaSx-LwZFwVpPh9e50p67F2o;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$w-GsaSx-LwZFwVpPh9e50p67F2o;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$ls_TAyxiP1x3eCUsnULK7QhAD1A;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$ls_TAyxiP1x3eCUsnULK7QhAD1A;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$wt7Pp02vx7ouoVIYPbOpyY3yQLc;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$wt7Pp02vx7ouoVIYPbOpyY3yQLc;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$KBQ0AjBG9Lo3DbKw4PrqNFhonHo;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$KBQ0AjBG9Lo3DbKw4PrqNFhonHo;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$2EP6AlwVDwhJzblZCh1s1Kry3Yc;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$2EP6AlwVDwhJzblZCh1s1Kry3Yc;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Pon3toqtZ4OePo42ZlacE9PAFmg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Pon3toqtZ4OePo42ZlacE9PAFmg;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$21qqYYwCA2qlJ3xs6egaaNivrOQ;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$21qqYYwCA2qlJ3xs6egaaNivrOQ;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$e-mzOcMSKyC2QbVIh_F62iw7WG8;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$e-mzOcMSKyC2QbVIh_F62iw7WG8;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_DEBUG_UI_OFFLOAD_THREAD:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/-$$Lambda$AxxVa-LAi-xfcLrUFbHkATZhXY4;->INSTANCE:Lcom/android/systemui/-$$Lambda$AxxVa-LAi-xfcLrUFbHkATZhXY4;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;->INSTANCE:Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$8d8ig7vA4dwKAi4m3UtJ-Z6-PlY;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$8d8ig7vA4dwKAi4m3UtJ-Z6-PlY;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/PowerUI$WarningsUI;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$tkMMgMiU67KrMuzMbk7S3dN7VvI;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$tkMMgMiU67KrMuzMbk7S3dN7VvI;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/IconLogger;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$KfI_kZ9bJpgsqW_BbIuCU08Ga50;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$KfI_kZ9bJpgsqW_BbIuCU08Ga50;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$SOM1e6JLs0G26jRrrkR2E4IG8oA;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$SOM1e6JLs0G26jRrrkR2E4IG8oA;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/view/IWindowManager;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$raxiz2FnXijKOrBPKw9rTGb9hMM;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$raxiz2FnXijKOrBPKw9rTGb9hMM;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/OverviewProxyService;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$nXKCbmpz8yBWU1XC5ocPwPoCMew;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$nXKCbmpz8yBWU1XC5ocPwPoCMew;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/EnhancedEstimates;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$h892YJzLIzEcDerwZUi-89YLACI;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$h892YJzLIzEcDerwZUi-89YLACI;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/AppOpsListener;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$dqQubzYZFTUrkMI1hNZ7vgMg-UI;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$dqQubzYZFTUrkMI1hNZ7vgMg-UI;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/VibratorHelper;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$7GcEJxJVhtk9qZyIsSV_ldwLHcM;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$7GcEJxJVhtk9qZyIsSV_ldwLHcM;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/statusbar/IStatusBarService;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$sYbHowjJu3FNWgo1HBhzXHUqxb8;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$sYbHowjJu3FNWgo1HBhzXHUqxb8;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/splugins/ActivityManagerProxy;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$9cyVgezyIbRfc9y57KDiL8j9izE;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$9cyVgezyIbRfc9y57KDiL8j9izE;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/splugins/SPluginPolicyInteractor;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$fbyOzO2dIVPmFjUpYXDHwga3KFE;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$fbyOzO2dIVPmFjUpYXDHwga3KFE;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/splugins/SPluginManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$OFIhguiGiVn0B35VzTqolbbtR1I;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$OFIhguiGiVn0B35VzTqolbbtR1I;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/BixbyInteractor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/BixbyInteractor;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/BixbyInteractor;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Dependency$VOuT1aDDRLgP4BupS0bEqBfu33A;

    invoke-direct {v3, v0}, Lcom/android/systemui/-$$Lambda$Dependency$VOuT1aDDRLgP4BupS0bEqBfu33A;-><init>(Lcom/android/systemui/BixbyInteractor;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/BixbyInteractor;->start()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/qs/QSScreenGridResource;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$oQNm-Qk2u3Uq-Fl6qwqAUE8fd3o;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$oQNm-Qk2u3Uq-Fl6qwqAUE8fd3o;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/DebugLogMonitor;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$hV3qDM7NTnMdoAGOMXD415bmI_A;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$hV3qDM7NTnMdoAGOMXD415bmI_A;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$G089XIrS95wTcf1nav7neWMuJ6Q;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$G089XIrS95wTcf1nav7neWMuJ6Q;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$e4tR5laOhsmrVjPEpvTHlssjBpU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$e4tR5laOhsmrVjPEpvTHlssjBpU;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/SystemUIImsManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Dwh1YoGKL8fPNlKyid5a5tHRNi0;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Dwh1YoGKL8fPNlKyid5a5tHRNi0;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/ShortcutManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$x0zLnwHz0hF3_jkqbw_hk_13AEE;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$x0zLnwHz0hF3_jkqbw_hk_13AEE;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$1budBInpn4RJLFI3vgHcYH3hTkQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$1budBInpn4RJLFI3vgHcYH3hTkQ;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$37e8Djv47mh42QTVzmHZ2YwwPLk;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$37e8Djv47mh42QTVzmHZ2YwwPLk;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$M3BRv288ue1c-LgxVx4w2zjyT0E;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$M3BRv288ue1c-LgxVx4w2zjyT0E;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$Ow6jH_7UfrbGPnIuX9nl8Xi3oCE;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$Ow6jH_7UfrbGPnIuX9nl8Xi3oCE;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$b4sEqREg9jOJ8ZaEx5O0zpD_k_0;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$b4sEqREg9jOJ8ZaEx5O0zpD_k_0;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$NyhRf06k81407jmYMmzXlfdf6nk;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$NyhRf06k81407jmYMmzXlfdf6nk;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/aod/PluginAODManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$np2dgChcEqWdtjo79nMPofRcxjw;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$np2dgChcEqWdtjo79nMPofRcxjw;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationColorPicker;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$o-r1MlbNN_m1RwusLJeRtylHwbY;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$o-r1MlbNN_m1RwusLJeRtylHwbY;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$Yl5DtIcX-u275fy8GHC-chiObyA;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$Yl5DtIcX-u275fy8GHC-chiObyA;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/NotificationBackupRestoreManager;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$pIpgAHiWRCZmG23eCLWCEkrDv2Q;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$pIpgAHiWRCZmG23eCLWCEkrDv2Q;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/BlurController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$ISWIUMBwrbWe2dOIdP3FFYWQaqg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$ISWIUMBwrbWe2dOIdP3FFYWQaqg;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_ANR_DETECTOR:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/AnrDetector;

    sget-object v2, Lcom/android/systemui/-$$Lambda$y5ENpid5qZUItEIIswoW8rffONA;->INSTANCE:Lcom/android/systemui/-$$Lambda$y5ENpid5qZUItEIIswoW8rffONA;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/util/AnrDetector;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/AnrDetector;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/AnrDetector;->init(Landroid/content/Context;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$vYsCnZB-ktQMjE2XPZ0h4aS4vXE;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$vYsCnZB-ktQMjE2XPZ0h4aS4vXE;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/SystemUITipPopUp;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$wrFQDhWoGnaLF7qb3djIiuDVsLU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$wrFQDhWoGnaLF7qb3djIiuDVsLU;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SystemUIFactory;->injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V

    return-void
.end method
