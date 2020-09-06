.class public Lcom/android/server/sepunion/SemUnionMasterService;
.super Lcom/android/server/SystemService;
.source "SemUnionMasterService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/sepunion/SemUnionMasterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemUnionMasterService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/SemUnionMasterService;)Lcom/android/server/sepunion/SemUnionMasterServiceImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->onBootPhase(I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCleanupUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->onCleanupUser(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sepunion"

    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemUnionMasterService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    new-instance v1, Lcom/android/server/sepunion/SemUnionMasterService$1;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemUnionMasterService$1;-><init>(Lcom/android/server/sepunion/SemUnionMasterService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemUnionMasterService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->onStart()V

    return-void
.end method

.method public onStartUser(I)V
    .registers 4

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->onStartUser(I)V

    return-void
.end method

.method public onStopUser(I)V
    .registers 4

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->onStopUser(I)V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwitchUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->onSwitchUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4

    sget-object v0, Lcom/android/server/sepunion/SemUnionMasterService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnlockUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMasterService;->mImpl:Lcom/android/server/sepunion/SemUnionMasterServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMasterServiceImpl;->onUnlockUser(I)V

    return-void
.end method
