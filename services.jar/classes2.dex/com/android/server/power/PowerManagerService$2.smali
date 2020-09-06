.class Lcom/android/server/power/PowerManagerService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$opUid:I

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$reasonNum:I

.field final synthetic val$reasonUid:I


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$2;->val$reasonNum:I

    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/power/PowerManagerService$2;->val$reasonUid:I

    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$2;->val$opPackageName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/power/PowerManagerService$2;->val$opUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v13, v5

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeUpHistory:Lcom/android/internal/util/RingBuffer;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2000()Lcom/android/internal/util/RingBuffer;

    move-result-object v12

    new-instance v11, Lcom/android/server/power/PowerManagerService$WakeUpHistory;

    iget v6, v0, Lcom/android/server/power/PowerManagerService$2;->val$reasonUid:I

    iget v10, v0, Lcom/android/server/power/PowerManagerService$2;->val$reasonNum:I

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService$2;->val$opPackageName:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v5, v11

    move-object/from16 v18, v7

    move-wide v7, v14

    move-object/from16 v19, v9

    move-object/from16 v9, v16

    move-object/from16 v20, v11

    move-object/from16 v11, v19

    move-object/from16 v21, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    move-object v13, v2

    move-wide/from16 v22, v14

    move-object v14, v3

    move-object/from16 v15, v17

    invoke-direct/range {v5 .. v15}, Lcom/android/server/power/PowerManagerService$WakeUpHistory;-><init>(IJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/PowerManagerService$1;)V

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    invoke-virtual {v5, v6}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method
