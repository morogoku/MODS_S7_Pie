.class Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;
.super Landroid/database/ContentObserver;
.source "DatabaseSizeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseSizeContentObserver"
.end annotation


# instance fields
.field public volatile mIsWorking:Z

.field final synthetic this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->mIsWorking:Z

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 9

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->mIsWorking:Z

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$000(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getDatabaseSize(Landroid/content/Context;)J

    move-result-wide v1

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange(): currentSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$200(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Z

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$300(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_53

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onChange(): alert triggered"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$000(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastDbSizeWarning(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # setter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z
    invoke-static {v3, v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$202(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Z)Z

    :cond_53
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$400(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J

    move-result-wide v3

    cmp-long v0, v1, v3

    const/4 v3, 0x0

    if-ltz v0, :cond_82

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "onChange(): full triggered"

    invoke-static {v0, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$000(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J
    invoke-static {v4}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$500(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # setter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z
    invoke-static {v4, v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$202(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Z)Z

    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # invokes: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V
    invoke-static {v4, v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$600(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V

    :cond_82
    iput-boolean v3, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->mIsWorking:Z

    return-void
.end method
