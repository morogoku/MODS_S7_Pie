.class Lcom/android/server/EngineeringModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method constructor <init>(Lcom/android/server/EngineeringModeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18

    move-object v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v0, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast received:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.server.em.EM_SYNC_SERVER_DATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/EngineeringModeService;->access$002(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_af

    :cond_2b
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/EngineeringModeService;->mBootCompleted:Z
    invoke-static {v0, v3}, Lcom/android/server/EngineeringModeService;->access$102(Lcom/android/server/EngineeringModeService;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.em.EM_SYNC_SERVER_DATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    # getter for: Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$200()Landroid/content/Context;

    move-result-object v0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    # getter for: Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v14, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    # getter for: Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$200()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$200()Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/AlarmManager;

    const/4 v7, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    move-object v6, v5

    move-object v12, v13

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/32 v10, 0xdbba0

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    # invokes: Lcom/android/server/EngineeringModeService;->notifyTokenStatus()V
    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$300(Lcom/android/server/EngineeringModeService;)V

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    # getter for: Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$400(Lcom/android/server/EngineeringModeService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_90
    # getter for: Lcom/android/server/EngineeringModeService;->mVersion:I
    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$500()I

    move-result v0

    const/16 v7, 0x14

    if-ne v0, v7, :cond_9d

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    # invokes: Lcom/android/server/EngineeringModeService;->nativeEM20Init()V
    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$600(Lcom/android/server/EngineeringModeService;)V

    :cond_9d
    monitor-exit v6

    goto :goto_af

    :catchall_9f
    move-exception v0

    monitor-exit v6
    :try_end_a1
    .catchall {:try_start_90 .. :try_end_a1} :catchall_9f

    throw v0

    :cond_a2
    const-string v0, "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$1;->this$0:Lcom/android/server/EngineeringModeService;

    # invokes: Lcom/android/server/EngineeringModeService;->notifyTokenStatus()V
    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$300(Lcom/android/server/EngineeringModeService;)V

    :cond_af
    :goto_af
    return-void
.end method
