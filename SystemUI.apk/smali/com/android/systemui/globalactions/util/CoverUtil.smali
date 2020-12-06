.class public Lcom/android/systemui/globalactions/util/CoverUtil;
.super Ljava/lang/Object;
.source "CoverUtil.java"


# instance fields
.field private mClearCoverListener:Lcom/samsung/android/globalactions/util/ClearCoverStateListener;

.field private final mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/globalactions/util/CoverUtil$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/util/CoverUtil$1;-><init>(Lcom/android/systemui/globalactions/util/CoverUtil;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/globalactions/util/CoverUtil;)Lcom/samsung/android/globalactions/util/LogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/globalactions/util/CoverUtil;)Lcom/samsung/android/globalactions/util/ClearCoverStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mClearCoverListener:Lcom/samsung/android/globalactions/util/ClearCoverStateListener;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "CoverUtil"

    const-string v2, "dispose"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mClearCoverListener:Lcom/samsung/android/globalactions/util/ClearCoverStateListener;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    return-void
.end method

.method public isClearCoverClosed()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v3, "CoverUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isClearCoverClosed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "CoverUtil"

    const-string v3, "isClearCoverClosed: no cover or not a clear cover."

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public registerClearCoverStateListener(Lcom/samsung/android/globalactions/util/ClearCoverStateListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "CoverUtil"

    const-string/jumbo v2, "registerClearCoverStateListener"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mClearCoverListener:Lcom/samsung/android/globalactions/util/ClearCoverStateListener;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/CoverUtil;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    return-void
.end method
