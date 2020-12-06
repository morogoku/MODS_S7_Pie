.class Lcom/android/server/net/LockdownVpnTracker$2;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/LockdownVpnTracker;->LazyHandleStateChangedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const-wide/16 v1, 0x5dc

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    # invokes: Lcom/android/server/net/LockdownVpnTracker;->isIPv6Network()I
    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$200(Lcom/android/server/net/LockdownVpnTracker;)I

    move-result v1

    move v0, v1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    # invokes: Lcom/android/server/net/LockdownVpnTracker;->isClat4Activated()Z
    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$300(Lcom/android/server/net/LockdownVpnTracker;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    # invokes: Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$400(Lcom/android/server/net/LockdownVpnTracker;)V

    goto :goto_23

    :cond_1e
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    # invokes: Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$400(Lcom/android/server/net/LockdownVpnTracker;)V

    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    # getter for: Lcom/android/server/net/LockdownVpnTracker;->mAlwaysOnConnected:Z
    invoke-static {v1}, Lcom/android/server/net/LockdownVpnTracker;->access$500(Lcom/android/server/net/LockdownVpnTracker;)Z

    move-result v1
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_29} :catch_2d

    if-eqz v1, :cond_2c

    goto :goto_45

    :cond_2c
    goto :goto_1

    :catch_2d
    move-exception v1

    const-string v2, "LockdownVpnTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LazyHandleStateChangedLocked(): Thread exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_45
    const-string v1, "LockdownVpnTracker"

    const-string v2, "LazyHandleStateChangedLocked(): Thread Bye."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->access$602(Lcom/android/server/net/LockdownVpnTracker;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
