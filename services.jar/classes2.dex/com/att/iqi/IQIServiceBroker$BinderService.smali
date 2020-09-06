.class Lcom/att/iqi/IQIServiceBroker$BinderService;
.super Lcom/att/iqi/IIQIBroker$Stub;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method private constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Lcom/att/iqi/IIQIBroker$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker$BinderService;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0}, Lcom/att/iqi/IIQIService;->getTimestamp()J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    :catch_b
    move-exception v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "IQIServiceBroker"

    const-string v2, "getTimestamp failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_4d

    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_2d

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_2d
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_4a

    if-eqz v0, :cond_49

    :try_start_40
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4d

    :cond_49
    goto :goto_5c

    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "registerMetricQueryCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_4d

    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_2d

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_2d
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_4a

    if-eqz v0, :cond_49

    :try_start_40
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4d

    :cond_49
    goto :goto_5c

    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "registerMetricSourcingCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_3a

    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_37

    if-eqz v0, :cond_36

    :try_start_2d
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_3a

    :cond_36
    goto :goto_49

    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "registerProfileChangedCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    return-void
.end method

.method public registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Ljava/util/Set;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1500(Lcom/att/iqi/IQIServiceBroker;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Ljava/util/Set;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1500(Lcom/att/iqi/IQIServiceBroker;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_18
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    goto :goto_27

    :catchall_16
    move-exception v2

    goto :goto_56

    :catch_18
    move-exception v2

    :try_start_19
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "IQIServiceBroker"

    const-string/jumbo v4, "registerServiceChangedCallback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_16

    if-eqz v0, :cond_55

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "IQIServiceBroker"

    const-string v2, "Call service changed callback now"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1600(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IIQIService;

    move-result-object v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    invoke-interface {p1, v1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_45} :catch_46

    goto :goto_55

    :catch_46
    move-exception v1

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "IQIServiceBroker"

    const-string/jumbo v3, "notifyServiceState failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_55
    :goto_55
    return-void

    :goto_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_16

    throw v2
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "shouldSubmitMetric failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_19

    :catch_a
    move-exception v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "submitMetric failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void
.end method

.method public unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_2a

    :try_start_10
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_25

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_25
    monitor-exit v0

    goto :goto_39

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "unregisterMetricQueryCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_2a

    :try_start_10
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_25

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_25
    monitor-exit v0

    goto :goto_39

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "unregisterMetricSourcingCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_1e

    :try_start_10
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    goto :goto_2d

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "unregisterProfileChangedCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    return-void
.end method

.method public unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Ljava/util/Set;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1500(Lcom/att/iqi/IQIServiceBroker;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Ljava/util/Set;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1500(Lcom/att/iqi/IQIServiceBroker;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
