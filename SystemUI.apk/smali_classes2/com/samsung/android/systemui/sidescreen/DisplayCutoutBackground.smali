.class Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;
.super Ljava/lang/Object;
.source "DisplayCutoutBackground.java"


# instance fields
.field private mBackgroundView:Landroid/widget/FrameLayout;

.field private final mBgColor:I

.field private mMode:I

.field private final mSideScreenController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method private setStatusBarBgDarkDrawn(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mSideScreenController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mSideScreenController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mBgColor:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setIndicatorBgColor(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setStatusBarBgDarkDrawn(Z)V

    const-string v0, "DisplayCutoutBackground"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarBgDarkDrawn: darkDrawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "DisplayCutoutBackground"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarBgDarkDrawn: fail to send drawn status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method onSideScreenModeChanged(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mMode:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->setStatusBarBgDarkDrawn(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->mBackgroundView:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/DisplayCutoutBackground;->setStatusBarBgDarkDrawn(Z)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
