.class Lcom/android/server/enterprise/security/SecurityPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_17
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$802(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_22
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_17 .. :try_end_22} :catch_25
    .catchall {:try_start_17 .. :try_end_22} :catchall_23

    goto :goto_2e

    :catchall_23
    move-exception v3

    goto :goto_30

    :catch_25
    move-exception v3

    :try_start_26
    const-string v4, "SecurityPolicy"

    const-string/jumbo v5, "formatStorageCard - IllegalMonitorStateException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    monitor-exit v2

    goto :goto_32

    :goto_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_23

    throw v3

    :cond_32
    :goto_32
    return-void
.end method
