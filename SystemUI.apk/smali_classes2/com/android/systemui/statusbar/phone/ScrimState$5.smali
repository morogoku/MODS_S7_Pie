.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$5;
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
.method public isLowPowerState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mDisplayRequiresBlanking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mBlankScreen:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentBehindAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentInFrontAlpha:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentInFrontTint:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mCurrentBehindTint:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$5;->mAnimateChange:Z

    return-void
.end method
