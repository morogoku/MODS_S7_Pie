.class Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenshotInfo"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mScreenshotDisplay:I

.field private mScreenshotOrigin:I

.field private mShotType:I

.field private mSweepDirection:I


# direct methods
.method constructor <init>(IIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mShotType:I

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mSweepDirection:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mScreenshotDisplay:I

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mScreenshotOrigin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mShotType:I

    iput p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mSweepDirection:I

    iput p3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mScreenshotDisplay:I

    iput p4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mScreenshotOrigin:I

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScreenshotDisplay()I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mScreenshotDisplay:I

    return v0
.end method

.method public getScreenshotOrigin()I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mScreenshotOrigin:I

    return v0
.end method

.method public getShotType()I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mShotType:I

    return v0
.end method

.method public getSweepDirection()I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mSweepDirection:I

    return v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setScreenshotDisplay(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mScreenshotDisplay:I

    return-void
.end method

.method public setScreenshotOrigin(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mScreenshotOrigin:I

    return-void
.end method

.method public setShotType(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mShotType:I

    return-void
.end method

.method public setSweepDirection(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->mSweepDirection:I

    return-void
.end method
