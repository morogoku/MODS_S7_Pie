.class Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;
.super Ljava/lang/Object;
.source "AppStateBroadcasterA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppStateBroadcasterA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationState"
.end annotation


# instance fields
.field private mInstanceID:I

.field private mIsPidRemoved:Z

.field private mProcessIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStopReason:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mIsPidRemoved:Z

    iput v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mInstanceID:I

    iput v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mStopReason:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mProcessIds:Ljava/util/HashSet;

    iput v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mStopReason:I

    # invokes: Lcom/android/server/am/AppStateBroadcasterA;->nextApplicationInstanceID()I
    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mInstanceID:I

    return-void
.end method


# virtual methods
.method public addProcess(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStopReason(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mStopReason:I

    if-le p1, v0, :cond_6

    iput p1, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mStopReason:I

    :cond_6
    return-void
.end method

.method public getRunAppId()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mInstanceID:I

    return v0
.end method

.method public getTermReason()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->APP_TERM_REASONS:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mStopReason:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public removeProcess(II)Z
    .registers 5

    iget v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mStopReason:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mStopReason:I

    iget-object v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mIsPidRemoved:Z

    iget-object v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method shouldNotify()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->mIsPidRemoved:Z

    return v0
.end method
