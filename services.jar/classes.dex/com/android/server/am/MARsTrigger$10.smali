.class Lcom/android/server/am/MARsTrigger$10;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$10;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$10;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$900(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$10;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J
    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->access$1000(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v7

    sub-long v7, v3, v7

    add-long/2addr v5, v7

    sub-long v7, v1, v5

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$10;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v9, v9, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/am/MARsHandler;->sendTimeChangedMsgToMainHandler(J)V

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$10;->this$0:Lcom/android/server/am/MARsTrigger;

    # setter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J
    invoke-static {v9, v1, v2}, Lcom/android/server/am/MARsTrigger;->access$902(Lcom/android/server/am/MARsTrigger;J)J

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$10;->this$0:Lcom/android/server/am/MARsTrigger;

    # setter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J
    invoke-static {v9, v3, v4}, Lcom/android/server/am/MARsTrigger;->access$1002(Lcom/android/server/am/MARsTrigger;J)J

    :cond_36
    return-void
.end method
