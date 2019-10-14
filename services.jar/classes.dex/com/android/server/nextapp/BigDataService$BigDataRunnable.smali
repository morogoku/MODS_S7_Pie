.class Lcom/android/server/nextapp/BigDataService$BigDataRunnable;
.super Ljava/lang/Object;
.source "BigDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/BigDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDataRunnable"
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/nextapp/BigDataService;


# direct methods
.method public constructor <init>(Lcom/android/server/nextapp/BigDataService;Landroid/app/job/JobParameters;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/nextapp/BigDataService$BigDataRunnable;->this$0:Lcom/android/server/nextapp/BigDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/nextapp/BigDataService$BigDataRunnable;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    # getter for: Lcom/android/server/nextapp/BigDataService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/nextapp/BigDataService;->access$000()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "PkgPredictorService-BigDataService"

    const-string v1, "context == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    # getter for: Lcom/android/server/nextapp/BigDataService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/nextapp/BigDataService;->access$000()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/nextapp/BigData;->SendBigData(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v1, "PkgPredictorService-BigDataService"

    const-string v2, "Send bigdata successfuly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_21
    const-string v1, "PkgPredictorService-BigDataService"

    const-string v2, "Failed to send bigdata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    invoke-static {}, Lcom/android/server/nextapp/BigDataService;->savePkgAccuracyMap()V

    iget-object v1, p0, Lcom/android/server/nextapp/BigDataService$BigDataRunnable;->this$0:Lcom/android/server/nextapp/BigDataService;

    iget-object v2, p0, Lcom/android/server/nextapp/BigDataService$BigDataRunnable;->mParams:Landroid/app/job/JobParameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/nextapp/BigDataService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
