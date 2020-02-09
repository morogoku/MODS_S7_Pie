.class final Lcom/android/server/am/Pageboost$PageboostPredictor;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostPredictor"
.end annotation


# static fields
.field private static final MAX_TARGET_PREDO_APP_NUM:I = 0x3

.field private static final MEM_PREPARATION_SIZE:Ljava/lang/String;

.field private static mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

.field private static mGhostAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.memprepare.size"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->MEM_PREPARATION_SIZE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mGhostAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/Pageboost$LRUPolicy;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$LRUPolicy;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    new-instance v0, Lcom/android/server/am/Pageboost$SIPolicy;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$SIPolicy;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mGhostAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    return-void
.end method

.method public static HaltPredict()V
    .registers 2

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->removeMessages(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$PageboostdProxy;->executeCmd(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->MEM_PREPARATION_SIZE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public CheckPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .registers 4

    if-gtz p2, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mGhostAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->JudgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->JudgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result v0

    return v0
.end method

.method public FinalizePredict()V
    .registers 2

    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->FinalizePredict()V

    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mGhostAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->FinalizePredict()V

    return-void
.end method

.method public MemPreparation()V
    .registers 3

    const-string v0, "0"

    sget-object v1, Lcom/android/server/am/Pageboost$PageboostPredictor;->MEM_PREPARATION_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemPreparation disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const/4 v0, 0x3

    sget-object v1, Lcom/android/server/am/Pageboost$PageboostPredictor;->MEM_PREPARATION_SIZE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$PageboostdProxy;->executeCmd(ILjava/lang/String;)V

    return-void
.end method

.method public predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V
    .registers 9

    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mGhostAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->AppFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;

    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->AppFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    const-string v1, ""

    iget-object v2, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_11
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->execute()Z

    move-result v5

    if-eqz v5, :cond_3e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    :cond_3e
    goto :goto_15

    :cond_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_11 .. :try_end_40} :catchall_55

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefetch,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    return-void

    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v3
.end method
