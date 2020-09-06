.class Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;
.super Landroid/os/AsyncTask;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetrieveFeedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 7

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;

    invoke-direct {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;-><init>()V

    const-string/jumbo v1, "north-america.pool.ntp.org"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->getNtpTime()J

    move-result-wide v2

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2102(Lcom/android/server/enterprise/sso/GenericSSOService;J)J

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "utc time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2100(Lcom/android/server/enterprise/sso/GenericSSOService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    :cond_3a
    goto :goto_47

    :catch_3b
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_47

    const-string v1, "GenericSSOService"

    const-string v2, "In RetrieveFeedTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    :goto_47
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_d

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_d
    return-void
.end method
