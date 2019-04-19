.class public Lcom/android/systemui/aod/AODParameters;
.super Ljava/lang/Object;
.source "AODParameters.java"


# instance fields
.field private mAODOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/aod/AODParameters;->mAODOn:Z

    return-void
.end method


# virtual methods
.method public isAODOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/aod/AODParameters;->mAODOn:Z

    return v0
.end method

.method public setAODOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/aod/AODParameters;->mAODOn:Z

    return-void
.end method
