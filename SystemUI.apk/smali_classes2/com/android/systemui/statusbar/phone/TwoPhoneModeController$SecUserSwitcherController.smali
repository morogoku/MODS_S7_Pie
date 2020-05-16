.class public final Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;
.super Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.source "TwoPhoneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecUserSwitcherController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissUserSwitchingDialog(Landroid/os/Handler;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->dismissUserSwitchingDialog(Landroid/os/Handler;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    return-void
.end method

.method public registerTwoPhoneHelpers(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public showDoneToast(Landroid/os/Handler;I)V
    .locals 0

    return-void
.end method

.method public updateTwoPhoneIcons()V
    .locals 0

    return-void
.end method

.method public userSwitched()V
    .locals 0

    return-void
.end method
