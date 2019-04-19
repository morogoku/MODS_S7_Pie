.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$FZ3bpfM9X08Y2NrJE693DTTTvZo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$FZ3bpfM9X08Y2NrJE693DTTTvZo;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$FZ3bpfM9X08Y2NrJE693DTTTvZo;->f$0:Landroid/os/Bundle;

    check-cast p1, Lcom/android/server/SdpManagerService$SdpManagerProxy;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$doSyntheticPasswordFullMigrationAsync$19(Landroid/os/Bundle;Lcom/android/server/SdpManagerService$SdpManagerProxy;)V

    return-void
.end method
