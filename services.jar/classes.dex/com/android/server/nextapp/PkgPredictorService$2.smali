.class Lcom/android/server/nextapp/PkgPredictorService$2;
.super Landroid/content/BroadcastReceiver;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/nextapp/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/nextapp/PkgPredictorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/nextapp/PkgPredictorService$2;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "PkgPredictorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen receive a broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$2;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mCollector:Lcom/android/server/nextapp/Collector;
    invoke-static {v1}, Lcom/android/server/nextapp/PkgPredictorService;->access$100(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/Collector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/nextapp/Collector;->saveRecords()V

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$2;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mPredictor:Lcom/android/server/nextapp/Predictor;
    invoke-static {v1}, Lcom/android/server/nextapp/PkgPredictorService;->access$200(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/Predictor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/nextapp/Predictor;->save()V

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->destroyInstance()V

    goto :goto_73

    :cond_3c
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$2;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/nextapp/PkgPredictorService;->isScreenOff:Z
    invoke-static {v1, v2}, Lcom/android/server/nextapp/PkgPredictorService;->access$302(Lcom/android/server/nextapp/PkgPredictorService;Z)Z

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$2;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mController:Lcom/android/server/nextapp/PreloadController;
    invoke-static {v1}, Lcom/android/server/nextapp/PkgPredictorService;->access$400(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/PreloadController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/nextapp/PreloadController;->stopPreloading()V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService$2;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/nextapp/PkgPredictorService;->access$500(Lcom/android/server/nextapp/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_73

    :cond_65
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$2;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/nextapp/PkgPredictorService;->isScreenOff:Z
    invoke-static {v1, v2}, Lcom/android/server/nextapp/PkgPredictorService;->access$302(Lcom/android/server/nextapp/PkgPredictorService;Z)Z

    :cond_73
    :goto_73
    return-void
.end method
