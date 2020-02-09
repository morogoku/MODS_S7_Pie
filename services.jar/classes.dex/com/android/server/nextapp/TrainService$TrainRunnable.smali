.class Lcom/android/server/nextapp/TrainService$TrainRunnable;
.super Ljava/lang/Object;
.source "TrainService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/TrainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrainRunnable"
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/nextapp/TrainService;


# direct methods
.method public constructor <init>(Lcom/android/server/nextapp/TrainService;Landroid/app/job/JobParameters;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/nextapp/TrainService$TrainRunnable;->this$0:Lcom/android/server/nextapp/TrainService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/nextapp/TrainService$TrainRunnable;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "PkgPredictorService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/nextapp/PkgPredictorService;

    if-eqz v0, :cond_22

    const-wide v1, 0x9a7ec800L

    invoke-virtual {v0, v1, v2}, Lcom/android/server/nextapp/PkgPredictorService;->trim(J)V

    invoke-virtual {v0}, Lcom/android/server/nextapp/PkgPredictorService;->trainModel()V

    sget-boolean v1, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "PkgPredictorService-TrainService"

    const-string/jumbo v2, "training job is finished..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_22
    const-string v1, "PkgPredictorService-TrainService"

    const-string/jumbo v2, "get package predictor service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/android/server/nextapp/TrainService$TrainRunnable;->this$0:Lcom/android/server/nextapp/TrainService;

    iget-object v2, p0, Lcom/android/server/nextapp/TrainService$TrainRunnable;->mParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/nextapp/TrainService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
