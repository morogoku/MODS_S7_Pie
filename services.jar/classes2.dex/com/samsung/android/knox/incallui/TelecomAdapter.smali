.class public Lcom/samsung/android/knox/incallui/TelecomAdapter;
.super Ljava/lang/Object;
.source "TelecomAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TelecomAdapter"

.field private static sInstance:Lcom/samsung/android/knox/incallui/TelecomAdapter;


# instance fields
.field private mCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/incallui/TelecomAdapter;->mCallList:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/incallui/TelecomAdapter;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/incallui/TelecomAdapter;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/incallui/TelecomAdapter;->sInstance:Lcom/samsung/android/knox/incallui/TelecomAdapter;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/knox/incallui/TelecomAdapter;

    invoke-direct {v1}, Lcom/samsung/android/knox/incallui/TelecomAdapter;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/incallui/TelecomAdapter;->sInstance:Lcom/samsung/android/knox/incallui/TelecomAdapter;

    :cond_e
    sget-object v1, Lcom/samsung/android/knox/incallui/TelecomAdapter;->sInstance:Lcom/samsung/android/knox/incallui/TelecomAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getOutgoingOrActiveCall()Landroid/telecom/Call;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/incallui/TelecomAdapter;->mCallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_22

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22

    const/4 v3, 0x4

    if-ne v2, v3, :cond_21

    goto :goto_22

    :cond_21
    goto :goto_6

    :cond_22
    :goto_22
    return-object v1

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method onCallAdded(Landroid/telecom/Call;)V
    .registers 5

    const-string v0, "TelecomAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/incallui/TelecomAdapter;->mCallList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method onCallRemoved(Landroid/telecom/Call;)V
    .registers 5

    const-string v0, "TelecomAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/incallui/TelecomAdapter;->mCallList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public playDtmfTone(Landroid/telecom/Call;C)V
    .registers 6

    if-eqz p1, :cond_1d

    const-string v0, "TelecomAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playDtmfTone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/telecom/Call;->playDtmfTone(C)V

    goto :goto_24

    :cond_1d
    const-string v0, "TelecomAdapter"

    const-string v1, "call is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public stopDtmfTone(Landroid/telecom/Call;)V
    .registers 5

    if-eqz p1, :cond_1d

    const-string v0, "TelecomAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopDtmfTone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telecom/Call;->stopDtmfTone()V

    goto :goto_24

    :cond_1d
    const-string v0, "TelecomAdapter"

    const-string v1, "call is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method
