.class Lcom/android/server/trust/ContainerUtil;
.super Ljava/lang/Object;
.source "ContainerUtil.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "TrustAgentWrapper"

.field private static mPersona:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/trust/ContainerUtil;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getDurationInMsgGrantTrust(Landroid/content/Context;IJJ)J
    .registers 11

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_31

    :cond_2f
    nop

    move-wide v3, p2

    :goto_31
    move-wide v0, v3

    goto :goto_37

    :cond_33
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_37
    return-wide v0
.end method

.method private static getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/trust/ContainerUtil;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    sput-object v0, Lcom/android/server/trust/ContainerUtil;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    :cond_f
    sget-object v0, Lcom/android/server/trust/ContainerUtil;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method static synthetic lambda$onDeviceLockedChanged$0(ILcom/android/server/SdpManagerService;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onDeviceLocked(I)V

    return-void
.end method

.method static synthetic lambda$onDeviceLockedChanged$1(ILcom/android/server/SdpManagerService;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I)V

    return-void
.end method

.method static onDeviceLockedChanged(IZ)V
    .registers 5

    invoke-static {}, Lcom/android/server/trust/ContainerUtil;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PersonaManagerService;->onDeviceLockedChanged(IZ)V

    if-eqz p1, :cond_21

    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/SdpManagerService;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/-$$Lambda$ContainerUtil$S-ALZjlWesYHxsYzTifqNS1V_kg;

    invoke-direct {v2, p0}, Lcom/android/server/trust/-$$Lambda$ContainerUtil$S-ALZjlWesYHxsYzTifqNS1V_kg;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3f

    :cond_21
    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/SdpManagerService;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/-$$Lambda$ContainerUtil$AWmNWiX2BSL9bc3evwb_4lsIVBI;

    invoke-direct {v2, p0}, Lcom/android/server/trust/-$$Lambda$ContainerUtil$AWmNWiX2BSL9bc3evwb_4lsIVBI;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3f

    :cond_37
    const-string v1, "TrustAgentWrapper"

    const-string/jumbo v2, "onDeviceLockedChanged() - Service is not yet ready..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method

.method static sendContainerLockedEvent(Landroid/content/Context;IZ)V
    .registers 4

    nop

    if-eqz p2, :cond_5

    const/4 v0, 0x4

    goto :goto_6

    :cond_5
    const/4 v0, 0x5

    :goto_6
    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    return-void
.end method
