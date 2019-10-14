.class public final Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SecureTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/securetimer/SecureTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/enterprise/securetimer/SecureTimerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;->mService:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    const-string v0, "[SecureTimerService:] "

    const-string v1, " LifeCycle creator"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/securetimer/SecureTimerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;->mService:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_10

    const-string v0, "[SecureTimerService:] "

    const-string v1, " LifeCycle PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;->mService:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$100(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    :cond_10
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "[SecureTimerService:] "

    const-string v1, " LifeCycle onStart"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "knox_securetimer"

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;->mService:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
