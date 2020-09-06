.class abstract Lcom/android/server/location/ContextHubServiceTransaction;
.super Ljava/lang/Object;
.source "ContextHubServiceTransaction.java"


# instance fields
.field private mIsComplete:Z

.field private final mTransactionId:I

.field private final mTransactionType:I


# direct methods
.method constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mIsComplete:Z

    iput p1, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionId:I

    iput p2, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionType:I

    return-void
.end method


# virtual methods
.method getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    iget v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionType:I

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getTransactionId()I
    .registers 2

    iget v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionId:I

    return v0
.end method

.method getTransactionType()I
    .registers 2

    iget v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionType:I

    return v0
.end method

.method isComplete()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mIsComplete:Z

    return v0
.end method

.method onQueryResponse(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method abstract onTransact()I
.end method

.method onTransactionComplete(I)V
    .registers 2

    return-void
.end method

.method setComplete()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mIsComplete:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionType:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transaction (ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/ContextHubServiceTransaction;->mTransactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
