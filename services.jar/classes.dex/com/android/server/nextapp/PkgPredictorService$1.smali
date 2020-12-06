.class Lcom/android/server/nextapp/PkgPredictorService$1;
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

    iput-object p1, p0, Lcom/android/server/nextapp/PkgPredictorService$1;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "PkgPredictorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pkg receive a broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_55

    sget-boolean v1, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v1, :cond_46

    const-string v1, "PkgPredictorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " install..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$1;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/android/server/nextapp/PkgPredictorService;->updateInstalledPkgs(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/server/nextapp/PkgPredictorService;->access$000(Lcom/android/server/nextapp/PkgPredictorService;Ljava/lang/String;Z)V

    goto :goto_89

    :cond_55
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    sget-boolean v1, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v1, :cond_7b

    const-string v1, "PkgPredictorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " removed..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$1;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/nextapp/PkgPredictorService;->updateInstalledPkgs(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/server/nextapp/PkgPredictorService;->access$000(Lcom/android/server/nextapp/PkgPredictorService;Ljava/lang/String;Z)V

    :cond_89
    :goto_89
    return-void
.end method
