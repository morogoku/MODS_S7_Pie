.class Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;
.super Lcom/android/server/net/NetworkStatsManagerInternal;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->advisePersistThreshold(J)V
    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->access$1800(Lcom/android/server/net/NetworkStatsService;J)V

    return-void
.end method

.method public forceUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsService;->forceUpdate()V

    return-void
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 15

    const-string/jumbo v0, "getNetworkTotalBytes"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$1600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v3
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v3

    :catchall_16
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 15

    const-string/jumbo v0, "getNetworkUidBytes"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$1700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_16
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public setUidForeground(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->setUidForeground(IZ)V

    return-void
.end method
