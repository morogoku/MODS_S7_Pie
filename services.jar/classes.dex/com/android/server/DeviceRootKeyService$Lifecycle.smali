.class public final Lcom/android/server/DeviceRootKeyService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/DeviceRootKeyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$Lifecycle;->mService:Lcom/android/server/DeviceRootKeyService;

    const-string v0, "DEVROOT#Service"

    const-string v1, "DeviceRootKeyService Lifecycle create."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$Lifecycle;->mService:Lcom/android/server/DeviceRootKeyService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_10

    const-string v0, "DEVROOT#Service"

    const-string v1, "DeviceRootKeyService Lifecycle onBootPhase : PHASE_BOOT_COMPLETED."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$Lifecycle;->mService:Lcom/android/server/DeviceRootKeyService;

    # invokes: Lcom/android/server/DeviceRootKeyService;->sendHqmData()V
    invoke-static {v0}, Lcom/android/server/DeviceRootKeyService;->access$700(Lcom/android/server/DeviceRootKeyService;)V

    :cond_10
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "DEVROOT#Service"

    const-string v1, "DeviceRootKeyService Lifecycle onStart."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DeviceRootKeyService"

    iget-object v1, p0, Lcom/android/server/DeviceRootKeyService$Lifecycle;->mService:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceRootKeyService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
