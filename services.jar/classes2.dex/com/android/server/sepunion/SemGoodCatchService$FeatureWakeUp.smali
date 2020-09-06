.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureWakeUp"
.end annotation


# static fields
.field private static final FUNCTION:Ljava/lang/String; = "wakeup"

.field private static final FUNCTION_WAKEUP_DONE:Ljava/lang/String; = "wakeup_done"

.field private static final MODULE:Ljava/lang/String; = "FeatureWakeUp"


# instance fields
.field private mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field private mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureWakeUp"

    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1200(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;Lcom/android/server/sepunion/SemGoodCatchService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object v0
.end method


# virtual methods
.method public doneTrigger()V
    .registers 9

    const/4 v0, 0x0

    const-string v1, "function LIKE ?"

    const-string/jumbo v2, "wakeup_done"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "module"

    const-string v5, "FeatureWakeUp"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "function"

    const-string/jumbo v5, "wakeup_done"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "on"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_28
    iget-object v4, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1100(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;
    invoke-static {v5}, Lcom/android/server/sepunion/SemGoodCatchService;->access$200(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3b} :catch_3c

    goto :goto_55

    :catch_3c
    move-exception v4

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doneTrigger error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public reset()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->off()V

    return-void
.end method

.method public update()V
    .registers 11

    invoke-static {}, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->getHistory()[Lcom/android/server/power/PowerManagerService$WakeUpHistory;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_51

    const/4 v3, 0x7

    new-array v8, v3, [Ljava/lang/String;

    const-string v3, "FeatureWakeUp"

    aput-object v3, v8, v1

    const-string/jumbo v3, "wakeup"

    const/4 v4, 0x1

    aput-object v3, v8, v4

    const/4 v3, 0x2

    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->packageName:Ljava/lang/String;

    aput-object v4, v8, v3

    const/4 v3, 0x3

    aget-object v4, v0, v2

    iget-wide v4, v4, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->timeMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x4

    aget-object v4, v0, v2

    iget v4, v4, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->reasonNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x5

    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->reasonStr:Ljava/lang/String;

    aput-object v4, v8, v3

    const/4 v3, 0x6

    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->topPackage:Ljava/lang/String;

    aput-object v4, v8, v3

    iget-object v3, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    invoke-static {v3}, Lcom/android/server/sepunion/SemGoodCatchService;->access$400(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v4 .. v9}, Lcom/android/server/sepunion/SemGoodCatchService;->access$500(Landroid/os/Handler;IIILjava/lang/Object;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_51
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$400(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/sepunion/SemGoodCatchService;->access$500(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method
