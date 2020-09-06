.class public Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;
.super Ljava/lang/Object;
.source "DualSimPolicy.java"


# static fields
.field public static final SERVICE_BLOCKED:I = 0xff

.field public static final SIM_SLOT1:I = 0x0

.field public static final SIM_SLOT2:I = 0x1

.field public static final SIM_SLOT_UNENFORCED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DualSimPolicy"

.field private static mDualSimPolicy:Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDualSimPolicyService:Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicy:Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

    if-nez v1, :cond_17

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicy:Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

    :cond_17
    sget-object v1, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicy:Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicy:Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicy:Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

    :cond_e
    sget-object v1, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicy:Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicyService:Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    if-nez v0, :cond_10

    const-string v0, "dualsim_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicyService:Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicyService:Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    return-object v0
.end method


# virtual methods
.method public clearPreferredSimSlot()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualSimPolicy.clearPreferredSimSlot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->getService()Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    move-result-object v0

    if-eqz v0, :cond_2d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicyService:Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;->clearPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "DualSimPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed - Could not access Dual SIM policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferredSimSlot()I
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->getService()Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    move-result-object v0

    if-eqz v0, :cond_26

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicyService:Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "DualSimPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed - Could not access Dual SIM policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v0, -0x1

    return v0
.end method

.method public setPreferredSimSlot(I)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualSimPolicy.setPreferredSimSlot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->getService()Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    move-result-object v0

    if-eqz v0, :cond_32

    :try_start_12
    iget-object v0, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mDualSimPolicyService:Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/dualsim/DualSimPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/dualsim/IDualSimPolicy;->setPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v0

    const-string v1, "DualSimPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed - Could not access Dual SIM policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    return v0
.end method
