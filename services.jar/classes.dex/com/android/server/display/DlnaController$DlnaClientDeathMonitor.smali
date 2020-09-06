.class Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DlnaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaClientDeathMonitor"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/DlnaController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DlnaController;Landroid/os/IBinder;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "DlnaController"

    const-string v0, "DlnaClientDeathMonitor"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    :try_start_e
    iget-object p1, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->binderDied()V

    :goto_19
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const-string v0, "DlnaController"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/DlnaController;->access$100(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;-><init>(Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    const-string v0, "DlnaController"

    const-string/jumbo v1, "unlinkToDeath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
