.class public final Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x226

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$000(Lcom/android/server/locksettings/LockSettingsService;)V

    :cond_c
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onCleanupUser(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    const-string/jumbo v0, "lock_settings"

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onStartUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onUnlockUser(I)V

    return-void
.end method
