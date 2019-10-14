.class Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrinterDiscoverySessionMediator"
.end annotation


# instance fields
.field private final mDiscoveryObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/print/IPrinterDiscoveryObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDestroyed:Z

.field private final mPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartedPrinterDiscoveryTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateTrackedPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;-><init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$Ou3LUs53hzSrIma0FHPj2g3gePc;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$Ou3LUs53hzSrIma0FHPj2g3gePc;

    new-instance v2, Ljava/util/ArrayList;

    # getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {p1}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method private handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintService;->destroyPrinterDiscoverySession()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    invoke-virtual {p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onDestroyed()V

    return-void
.end method

.method private handleDispatchPrintersAdded(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    invoke-direct {p0, v2, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private handleDispatchPrintersRemoved(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    invoke-direct {p0, v2, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v2, p2}, Lcom/android/server/print/RemotePrintService;->startPrinterDiscovery(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method private handleDispatchStopPrinterDiscovery(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintService;->stopPrinterDiscovery()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method private handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    const-string v1, "UserState"

    const-string v2, "Error sending added printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method private handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    const-string v1, "UserState"

    const-string v2, "Error sending removed printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method private handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method private handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method private handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/print/RemotePrintService;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->validatePrinters(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$CjemUQP8s7wG-dq-pIggj9Oze6I(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersRemoved(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$MT8AtQ4cegoEAucY7Fm8C8TCrjo(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$Ou3LUs53hzSrIma0FHPj2g3gePc(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$Sqq0rjax7wbbY4ugrdxXopSyMNM(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$TAWPnRTK22Veu2-mmKNSJCvnBoU(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$TNeLGO1RKf0CucB-BMQ_M0UyoRs(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStopPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$_XymASnzhemmGwK4Nu5RUIT0ahk(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic lambda$iQrjLK8luujjjp1uW3VGCsAZK_g(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic lambda$lfSsgTy_1NLRRkjOH_yL2Tk_x2w(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$vhz2AcQkYu3SdMlMt9bsncMGW7E(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$y51cj-jOuPNqkjzP4R89xJuclvo(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method private removePrintersForServiceLocked(Landroid/content/ComponentName;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    :goto_13
    if-ge v0, v1, :cond_35

    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    if-nez v3, :cond_2f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    :cond_2f
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_35
    if-eqz v3, :cond_57

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    nop

    :goto_3c
    if-ge v2, v0, :cond_4a

    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4a
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    sget-object v4, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$CjemUQP8s7wG-dq-pIggj9Oze6I;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$CjemUQP8s7wG-dq-pIggj9Oze6I;

    invoke-static {v4, p0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_57
    return-void
.end method


# virtual methods
.method public addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_25
    return-void
.end method

.method public destroyLocked()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not destroying - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_29

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-virtual {v4, v3}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_29
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    :goto_30
    if-ge v1, v2, :cond_44

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_44
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    sget-object v3, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$TAWPnRTK22Veu2-mmKNSJCvnBoU;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$TAWPnRTK22Veu2-mmKNSJCvnBoU;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 14

    const-string v0, "is_destroyed"

    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mDestroyed:Z
    invoke-static {v1}, Lcom/android/server/print/UserState;->access$800(Lcom/android/server/print/UserState;)Z

    move-result v1

    const-wide v2, 0x10800000001L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string v0, "is_printer_discovery_in_progress"

    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2a
    if-ge v2, v0, :cond_46

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/print/IPrinterDiscoveryObserver;

    const-string/jumbo v4, "printer_discovery_observers"

    const-wide v5, 0x20900000003L

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_46
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_52
    if-ge v3, v2, :cond_6d

    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string v5, "discovery_requests"

    const-wide v6, 0x20900000004L

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_6d
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_74
    if-ge v4, v3, :cond_8c

    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterId;

    const-string/jumbo v6, "tracked_printer_requests"

    const-wide v7, 0x20b00000005L

    invoke-static {p1, v6, v7, v8, v5}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    :cond_8c
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    nop

    :goto_93
    if-ge v1, v4, :cond_b3

    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/print/UserState;->access$900(Lcom/android/server/print/UserState;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "printer"

    const-wide v9, 0x20b00000006L

    move-object v7, p1

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/print/DumpUtils;->writePrinterInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_b3
    return-void
.end method

.method public onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not updating printer - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    if-eqz v0, :cond_3e

    new-instance v1, Landroid/print/PrinterInfo$Builder;

    invoke-direct {v1, v0}, Landroid/print/PrinterInfo$Builder;-><init>(Landroid/print/PrinterInfo;)V

    invoke-virtual {v1}, Landroid/print/PrinterInfo$Builder;->incCustomPrinterIconGen()Landroid/print/PrinterInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterInfo$Builder;->build()Landroid/print/PrinterInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$y51cj-jOuPNqkjzP4R89xJuclvo;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$y51cj-jOuPNqkjzP4R89xJuclvo;

    invoke-static {v4, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3e
    return-void
.end method

.method public onDestroyed()V
    .registers 1

    return-void
.end method

.method public onPrintersAddedLocked(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not adding printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_3c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    if-eqz v4, :cond_2e

    invoke-virtual {v4, v3}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    :cond_2e
    if-nez v0, :cond_36

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_36
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_3c
    if-eqz v0, :cond_4b

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$lfSsgTy_1NLRRkjOH_yL2Tk_x2w;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$lfSsgTy_1NLRRkjOH_yL2Tk_x2w;

    invoke-static {v3, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4b
    return-void
.end method

.method public onPrintersRemovedLocked(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not removing printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_30

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2d

    if-nez v0, :cond_2a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    :cond_2a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_30
    if-eqz v0, :cond_3f

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$CjemUQP8s7wG-dq-pIggj9Oze6I;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$CjemUQP8s7wG-dq-pIggj9Oze6I;

    invoke-static {v3, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3f
    return-void
.end method

.method public onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not updating added service - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;->INSTANCE:Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$gs6W8Li-g_ih6LLUIbTqHmyAoh0;->INSTANCE:Lcom/android/server/print/-$$Lambda$gs6W8Li-g_ih6LLUIbTqHmyAoh0;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2f
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v0, :cond_5e

    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;->INSTANCE:Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;

    invoke-static {v4, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_5e
    return-void
.end method

.method public onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # invokes: Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    invoke-static {v0, p1}, Lcom/android/server/print/UserState;->access$700(Lcom/android/server/print/UserState;Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method

.method public onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not updating removed service - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removePrintersForServiceLocked(Landroid/content/ComponentName;)V

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    return-void
.end method

.method public removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    :cond_10
    return-void
.end method

.method public final startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not starting dicovery - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2d

    if-eqz p2, :cond_2d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-virtual {v1, p2}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V

    return-void

    :cond_2d
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_36

    return-void

    :cond_36
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$MT8AtQ4cegoEAucY7Fm8C8TCrjo;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$MT8AtQ4cegoEAucY7Fm8C8TCrjo;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, p0, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not starting printer state tracking - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_23

    return-void

    :cond_23
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    if-nez v1, :cond_36

    return-void

    :cond_36
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;

    invoke-static {v3, p0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not stopping dicovery - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$TNeLGO1RKf0CucB-BMQ_M0UyoRs;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$TNeLGO1RKf0CucB-BMQ_M0UyoRs;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not stopping printer state tracking - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    if-nez v0, :cond_31

    return-void

    :cond_31
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$_XymASnzhemmGwK4Nu5RUIT0ahk;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$_XymASnzhemmGwK4Nu5RUIT0ahk;

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public validatePrintersLocked(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    const-string v0, "UserState"

    const-string v1, "Not validating pritners - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    if-eqz v4, :cond_50

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_50

    :cond_40
    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_50
    :goto_50
    goto :goto_21

    :cond_51
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/RemotePrintService;

    if-eqz v4, :cond_6c

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v5

    sget-object v6, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$Sqq0rjax7wbbY4ugrdxXopSyMNM;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$Sqq0rjax7wbbY4ugrdxXopSyMNM;

    invoke-static {v6, p0, v4, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6c
    goto :goto_11

    :cond_6d
    return-void
.end method
