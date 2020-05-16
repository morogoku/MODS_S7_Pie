.class Lcom/android/server/nextapp/PreloadController$2;
.super Landroid/content/BroadcastReceiver;
.source "PreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/PreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/nextapp/PreloadController;


# direct methods
.method constructor <init>(Lcom/android/server/nextapp/PreloadController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/nextapp/PreloadController$2;->this$0:Lcom/android/server/nextapp/PreloadController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.DO_ML_LAUNCH_REPLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string/jumbo v1, "package_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "PkgPredictorService-PreloadController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get reply pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/nextapp/PreloadController;->mPreloadPkgLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/nextapp/PreloadController;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_36
    iget-object v3, p0, Lcom/android/server/nextapp/PreloadController$2;->this$0:Lcom/android/server/nextapp/PreloadController;

    # getter for: Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/nextapp/PreloadController;->access$300(Lcom/android/server/nextapp/PreloadController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/android/server/nextapp/PreloadController$2;->this$0:Lcom/android/server/nextapp/PreloadController;

    # getter for: Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/nextapp/PreloadController;->access$300(Lcom/android/server/nextapp/PreloadController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/nextapp/PreloadController$2;->this$0:Lcom/android/server/nextapp/PreloadController;

    # operator++ for: Lcom/android/server/nextapp/PreloadController;->mPreloadedNum:I
    invoke-static {v3}, Lcom/android/server/nextapp/PreloadController;->access$108(Lcom/android/server/nextapp/PreloadController;)I

    :cond_50
    monitor-exit v2

    goto :goto_55

    :catchall_52
    move-exception v3

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_36 .. :try_end_54} :catchall_52

    throw v3

    :cond_55
    :goto_55
    return-void
.end method
