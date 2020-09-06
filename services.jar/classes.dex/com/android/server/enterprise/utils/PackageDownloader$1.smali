.class Lcom/android/server/enterprise/utils/PackageDownloader$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/utils/PackageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/utils/PackageDownloader;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # invokes: Lcom/android/server/enterprise/utils/PackageDownloader;->handleNetworkState()V
    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$100(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    goto :goto_6f

    :cond_1e
    const-string v1, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo v1, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_3e

    :cond_30
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # invokes: Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadComplete()V
    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$300(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    goto :goto_6f

    :cond_3e
    :goto_3e
    const-string/jumbo v1, "pkg"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "url"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "targetPkgName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_65

    if-eqz v2, :cond_65

    if-nez v3, :cond_65

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # invokes: Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v1, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$200(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    :cond_65
    if-eqz v2, :cond_6e

    if-eqz v3, :cond_6e

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # invokes: Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$200(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    nop

    :cond_6f
    :goto_6f
    return-void
.end method
