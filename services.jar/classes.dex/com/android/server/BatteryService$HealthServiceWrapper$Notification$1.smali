.class Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v0, v0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;
    invoke-static {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8400(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v1, v1, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8300(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;->get(Ljava/lang/String;)Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v1, v1, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8500(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    return-void

    :cond_29
    const-string v2, "HealthServiceWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "health: new instance registered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v4, v4, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8300(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v2, v2, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;
    invoke-static {v2}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8600(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v3, v3, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8300(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;->onRegistration(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_5b} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_8d

    :catch_5c
    move-exception v0

    const-string v1, "HealthServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: Cannot get instance \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v3, v3, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8300(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Perhaps no permission?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8d
    return-void
.end method