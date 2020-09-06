.class Lcom/android/server/am/ActivityManagerPerformance$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerPerformance;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance$1;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_17

    const-string v1, "ActivityManagerPerformance"

    const-string v2, "Screen state changed. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance$1;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerPerformance;->access$402(Lcom/android/server/am/ActivityManagerPerformance;Z)Z

    goto :goto_3c

    :cond_1e
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_31

    const-string v1, "ActivityManagerPerformance"

    const-string v2, "Screen state changed. mIsScreenOn: true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance$1;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerPerformance;->access$402(Lcom/android/server/am/ActivityManagerPerformance;Z)Z

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance$1;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    # setter for: Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerPerformance;->access$502(Lcom/android/server/am/ActivityManagerPerformance;Z)Z

    :cond_3c
    :goto_3c
    return-void
.end method
