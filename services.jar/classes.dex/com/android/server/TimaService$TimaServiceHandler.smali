.class Lcom/android/server/TimaService$TimaServiceHandler;
.super Landroid/os/Handler;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimaServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const-string v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimaServiceHandler.handleMessage what ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a0

    goto/16 :goto_9e

    :pswitch_1f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/server/TimaService;->access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;

    move-result-object v1

    if-eqz v1, :cond_95

    if-nez v0, :cond_2e

    goto :goto_95

    :cond_2e
    const-string v1, "MSG="

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_8d

    :cond_3d
    sget-boolean v2, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v2, :cond_49

    const-string v2, "TimaService"

    const-string v3, "TimaServiceHandler(): iBootCompleted==false"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_49
    :try_start_49
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x1080027

    iput v5, v2, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "TIMA security measurement"

    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/server/TimaService;->access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;

    move-result-object v5

    const/16 v6, 0x1b58

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_83} :catch_84

    goto :goto_9e

    :catch_84
    move-exception v2

    const-string v3, "TimaService"

    const-string v4, "Exception in handleMessage"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :cond_8d
    :goto_8d
    const-string v2, "TimaService"

    const-string v3, "Invalid TIMA message!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_95
    :goto_95
    const-string v1, "TimaService"

    const-string v2, "Notification or Bundle is not ready!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_9d
    nop

    :goto_9e
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_1f
    .end packed-switch
.end method
