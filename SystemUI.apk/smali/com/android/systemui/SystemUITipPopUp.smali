.class public Lcom/android/systemui/SystemUITipPopUp;
.super Ljava/lang/Object;
.source "SystemUITipPopUp.java"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;


# instance fields
.field private mActionResId:I

.field private mBodyResId:I

.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mDisplay:Landroid/view/Display;

.field private final mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsAdded:Z

.field private mParent:Landroid/widget/FrameLayout;

.field private mPositionX:I

.field private mPositionY:I

.field private mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

.field private mRelativePositionX:I

.field private mRelativePositionY:I

.field private mShowAgain:Z

.field private mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mTipPopUpWindowManager:Landroid/view/WindowManager;

.field private mTipState:I

.field private mTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mIsAdded:Z

    iput-boolean v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mShowAgain:Z

    iput v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipState:I

    iput v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mCurrentRotation:I

    iput-object p1, p0, Lcom/android/systemui/SystemUITipPopUp;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0223

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mParent:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7e5

    const v5, 0x1000118

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipPopUpWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipPopUpWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SystemUITipPopUp;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SystemUITipPopUp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic lambda$showTipPopUp$0(Lcom/android/systemui/SystemUITipPopUp;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    iget v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionX:I

    iget v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setPopupWindowClippingEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method


# virtual methods
.method public calculateTipPopUpPosition()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mCurrentRotation:I

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mCurrentRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionX:I

    iput v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionX:I

    iget v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionY:I

    iput v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionX:I

    iget v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionX:I

    iput v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionY:I

    iput v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionX:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    nop

    :goto_0
    const/4 v1, 0x5

    const v2, 0x3f19999a    # 0.6f

    iget-object v3, p0, Lcom/android/systemui/SystemUITipPopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_3

    iget v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    :goto_1
    const-string v2, "SystemUITipPopUp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateTipPopUpPosition() - mCurrentRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/SystemUITipPopUp;->mCurrentRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRelativePositionX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRelativePositionY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/SystemUITipPopUp;->mRelativePositionY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dismissTipPopUp()V
    .locals 2

    const-string v0, "SystemUITipPopUp"

    const-string v1, "dismissTipPopUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 6

    const-string v0, "SystemUITipPopUp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChanged() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipState:I

    iput p1, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipState:I

    iget v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipPopUpWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mParent:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mIsAdded:Z

    iget-boolean v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mShowAgain:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mTitleResId:I

    iget v3, p0, Lcom/android/systemui/SystemUITipPopUp;->mBodyResId:I

    iget v4, p0, Lcom/android/systemui/SystemUITipPopUp;->mActionResId:I

    iget-object v5, p0, Lcom/android/systemui/SystemUITipPopUp;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/systemui/SystemUITipPopUp;->setTipPopUp(IIILandroid/content/Intent;)V

    iget v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionX:I

    iget v3, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionY:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/SystemUITipPopUp;->showTipPopUp(II)V

    iput-boolean v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mShowAgain:Z

    :cond_0
    return-void
.end method

.method public setTipPopUp(IIILandroid/content/Intent;)V
    .locals 9

    const-string v0, "SystemUITipPopUp"

    const-string/jumbo v1, "setTipPopUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    iput p1, p0, Lcom/android/systemui/SystemUITipPopUp;->mTitleResId:I

    iput p2, p0, Lcom/android/systemui/SystemUITipPopUp;->mBodyResId:I

    iput p3, p0, Lcom/android/systemui/SystemUITipPopUp;->mActionResId:I

    iput-object p4, p0, Lcom/android/systemui/SystemUITipPopUp;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/SystemUITipPopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/SystemUITipPopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const v5, 0x3f99999a    # 1.2f

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v3, v4, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v4, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    if-nez v4, :cond_3

    const-string v4, "SystemUITipPopUp"

    const-string/jumbo v6, "setTipPopUp() - mProximitySensorTip is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v6, p0, Lcom/android/systemui/SystemUITipPopUp;->mParent:Landroid/widget/FrameLayout;

    invoke-direct {v4, v6, v5}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V

    iput-object v4, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v4, p0}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    iget-object v4, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    const-string v4, "SystemUITipPopUp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setTipPopUp() - title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " body = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/SystemUITipPopUp;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    iget-object v4, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v5, p0, Lcom/android/systemui/SystemUITipPopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/SystemUITipPopUp$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/SystemUITipPopUp$1;-><init>(Lcom/android/systemui/SystemUITipPopUp;)V

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/widget/SemTipPopup;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public showTipPopUp(II)V
    .locals 3

    const-string v0, "SystemUITipPopUp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTipPopup() - x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionX:I

    iput p2, p0, Lcom/android/systemui/SystemUITipPopUp;->mPositionY:I

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/SystemUITipPopUp;->calculateTipPopUpPosition()V

    iget-boolean v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mIsAdded:Z

    if-nez v0, :cond_1

    const-string v0, "SystemUITipPopUp"

    const-string v1, "mIsAdded is flase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipPopUpWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mParent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/SystemUITipPopUp;->mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mIsAdded:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUITipPopUp$VTiTHuQVtOtuRuSw4wd-WQBhJiI;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$SystemUITipPopUp$VTiTHuQVtOtuRuSw4wd-WQBhJiI;-><init>(Lcom/android/systemui/SystemUITipPopUp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public updateTipPopUp()V
    .locals 3

    const-string v0, "SystemUITipPopUp"

    const-string/jumbo v1, "updateTipPopUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/SystemUITipPopUp;->mCurrentRotation:I

    iget-object v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mCurrentRotation:I

    iget v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mCurrentRotation:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mShowAgain:Z

    iget-object v1, p0, Lcom/android/systemui/SystemUITipPopUp;->mProximitySensorTip:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_1
    return-void
.end method
