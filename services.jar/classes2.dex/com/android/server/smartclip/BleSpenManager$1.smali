.class Lcom/android/server/smartclip/BleSpenManager$1;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/BleSpenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/BleSpenManager;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/BleSpenManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    # getter for: Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/BleSpenManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    # setter for: Lcom/android/server/smartclip/BleSpenManager;->mServiceBinder:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/android/server/smartclip/BleSpenManager;->access$102(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/smartclip/BleSpenManager;->mIsServiceBound:Z
    invoke-static {v0, v1}, Lcom/android/server/smartclip/BleSpenManager;->access$202(Lcom/android/server/smartclip/BleSpenManager;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    # getter for: Lcom/android/server/smartclip/BleSpenManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/BleSpenManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/smartclip/BleSpenManager;->mServiceBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/server/smartclip/BleSpenManager;->access$102(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/smartclip/BleSpenManager;->mIsServiceBound:Z
    invoke-static {v0, v1}, Lcom/android/server/smartclip/BleSpenManager;->access$202(Lcom/android/server/smartclip/BleSpenManager;Z)Z

    return-void
.end method
