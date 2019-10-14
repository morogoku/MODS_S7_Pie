.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$1;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha(F)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mCurrentBehindAlpha:F

    return v0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mBlankScreen:Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mAnimationDuration:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mAnimationDuration:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xdc

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mAnimationDuration:J

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mCurrentBehindAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mCurrentInFrontAlpha:F

    return-void
.end method
