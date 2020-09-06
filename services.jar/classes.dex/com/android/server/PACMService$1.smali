.class Lcom/android/server/PACMService$1;
.super Landroid/content/BroadcastReceiver;
.source "PACMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PACMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method constructor <init>(Lcom/android/server/PACMService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PACMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast received:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    # getter for: Lcom/android/server/PACMService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/PACMService;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    const-string v2, "com.android.server.em.EM_SYNC_TOKEN_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "ts"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/PACMService;->access$202(Lcom/android/server/PACMService;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "PACMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/PACMService;->access$200(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/PACMService;->access$300(Lcom/android/server/PACMService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_5f
    iget-object v3, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/PACMService;->access$400(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    monitor-exit v2

    goto :goto_6d

    :catchall_6a
    move-exception v3

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_6a

    throw v3

    :cond_6d
    :goto_6d
    return-void
.end method
