.class Lcom/android/server/nextapp/PkgPredictorService$2BigDataRunnableForDump;
.super Ljava/lang/Object;
.source "PkgPredictorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/nextapp/PkgPredictorService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BigDataRunnableForDump"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/nextapp/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/nextapp/PkgPredictorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/nextapp/PkgPredictorService$2BigDataRunnableForDump;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService$2BigDataRunnableForDump;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    # getter for: Lcom/android/server/nextapp/PkgPredictorService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/nextapp/PkgPredictorService;->access$700(Lcom/android/server/nextapp/PkgPredictorService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/nextapp/BigData;->SendBigData(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v1, "PkgPredictorService"

    const-string v2, "Send bigdata successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_15
    const-string v1, "PkgPredictorService"

    const-string v2, "Failed to send bigdata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    invoke-static {}, Lcom/android/server/nextapp/BigDataService;->savePkgAccuracyMap()V

    return-void
.end method
