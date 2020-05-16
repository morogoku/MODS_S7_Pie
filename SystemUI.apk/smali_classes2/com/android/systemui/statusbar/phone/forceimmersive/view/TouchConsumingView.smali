.class public Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;
.super Landroid/widget/FrameLayout;
.source "TouchConsumingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x3

    invoke-direct {v0, v1, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const/16 v2, 0x8e1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, 0x80108

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-string v2, "NavBarTouchConsumer"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;->update(Z)V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;->getConsumerWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;->getConsumerHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;->getConsumerGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0
.end method


# virtual methods
.method public updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/TouchConsumingView;->getWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    return-object v0
.end method
