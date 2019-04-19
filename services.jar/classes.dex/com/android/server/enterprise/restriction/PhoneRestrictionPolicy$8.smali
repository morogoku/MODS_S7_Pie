.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p2}, Lcom/samsung/android/knox/restriction/ISimPinPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    move-result-object v1

    # setter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$1302(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/samsung/android/knox/restriction/ISimPinPolicy;)Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, "SIM Pin Service connected"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->unlockAllSimCards()V
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$1100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, "SIM Pin Service has unexpectedly disconnected!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$1302(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/samsung/android/knox/restriction/ISimPinPolicy;)Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$900(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$800(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$900(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$800(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method
