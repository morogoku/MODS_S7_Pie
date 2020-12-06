.class public final Lcom/android/server/stats/StatsCompanionService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mStatsCompanionService:Lcom/android/server/stats/StatsCompanionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x258

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->mStatsCompanionService:Lcom/android/server/stats/StatsCompanionService;

    # invokes: Lcom/android/server/stats/StatsCompanionService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->access$600(Lcom/android/server/stats/StatsCompanionService;)V

    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 4

    new-instance v0, Lcom/android/server/stats/StatsCompanionService;

    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/stats/StatsCompanionService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->mStatsCompanionService:Lcom/android/server/stats/StatsCompanionService;

    :try_start_b
    const-string/jumbo v0, "statscompanion"

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->mStatsCompanionService:Lcom/android/server/stats/StatsCompanionService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "StatsCompanionService"

    const-string v2, "Failed to publishBinderService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method
