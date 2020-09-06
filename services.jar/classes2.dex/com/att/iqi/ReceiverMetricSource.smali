.class public abstract Lcom/att/iqi/ReceiverMetricSource;
.super Ljava/lang/Object;
.source "ReceiverMetricSource.java"


# instance fields
.field protected mClient:Lcom/att/iqi/lib/IQIManager;

.field private mListening:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/att/iqi/ReceiverMetricSource;->mListening:Z

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/ReceiverMetricSource;->mClient:Lcom/att/iqi/lib/IQIManager;

    return-void
.end method

.method private logMetricIds(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverMetricSource.wantMetrics( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v2}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_27
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method private wantMetrics(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    invoke-direct {p0, p1}, Lcom/att/iqi/ReceiverMetricSource;->logMetricIds(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/lib/Metric$ID;

    iget-object v3, p0, Lcom/att/iqi/ReceiverMetricSource;->mClient:Lcom/att/iqi/lib/IQIManager;

    invoke-virtual {v3, v2}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReceiverMetricSource wants metric "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_3c
    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    goto :goto_a

    :cond_3f
    :goto_3f
    return v0
.end method


# virtual methods
.method protected abstract beginListening()V
.end method

.method protected abstract endListening()V
.end method

.method protected abstract getMetricList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;"
        }
    .end annotation
.end method

.method public onProfileChanged()V
    .registers 3

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ReceiverMetricSource.onProfileChanged()"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/att/iqi/ReceiverMetricSource;->getMetricList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/att/iqi/ReceiverMetricSource;->wantMetrics(Ljava/util/List;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/att/iqi/ReceiverMetricSource;->mListening:Z

    if-eq v1, v0, :cond_25

    iget-boolean v1, p0, Lcom/att/iqi/ReceiverMetricSource;->mListening:Z

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/att/iqi/ReceiverMetricSource;->stopListen()V

    goto :goto_25

    :cond_1f
    invoke-virtual {p0}, Lcom/att/iqi/ReceiverMetricSource;->beginListening()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/att/iqi/ReceiverMetricSource;->mListening:Z

    :cond_25
    :goto_25
    return-void
.end method

.method public startListen()V
    .registers 2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ReceiverMetricSource.startListen()"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/att/iqi/ReceiverMetricSource;->onProfileChanged()V

    return-void
.end method

.method public stopListen()V
    .registers 2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ReceiverMetricSource.stopListen()"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    iget-boolean v0, p0, Lcom/att/iqi/ReceiverMetricSource;->mListening:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/att/iqi/ReceiverMetricSource;->endListening()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/att/iqi/ReceiverMetricSource;->mListening:Z

    :cond_15
    return-void
.end method
