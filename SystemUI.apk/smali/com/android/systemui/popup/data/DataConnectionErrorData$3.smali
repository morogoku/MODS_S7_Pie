.class Lcom/android/systemui/popup/data/DataConnectionErrorData$3;
.super Ljava/lang/Object;
.source "DataConnectionErrorData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

.field final synthetic val$pIntent:Landroid/app/PendingIntent;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;ZLandroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;->this$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iput-boolean p2, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;->val$retry:Z

    iput-object p3, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;->val$pIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;->val$retry:Z

    iget-object v1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;->val$pIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$3;->this$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    invoke-static {v3}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->access$000(Lcom/android/systemui/popup/data/DataConnectionErrorData;)Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object v3

    const-string v4, "DataConnectionErrorData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDataConnectionNotifications() : PendingIntent.send() error. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
