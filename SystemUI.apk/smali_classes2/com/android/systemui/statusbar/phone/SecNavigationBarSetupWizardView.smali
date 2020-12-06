.class public Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "SecNavigationBarSetupWizardView.java"


# static fields
.field static final DEBUG:Z

.field private static final IS_FACTORY_BINARY:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHints:I

.field private mImeBtn:Landroid/widget/ImageView;

.field private mImeBtnLayout:Landroid/widget/LinearLayout;

.field private mPrevBtn:Landroid/widget/ImageView;

.field private mPrevBtnLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    nop

    :cond_0
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->DEBUG:Z

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->IS_FACTORY_BINARY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mHints:I

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->sendEvent(III)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->sendEvent(III)V

    return-void
.end method

.method private sendEvent(III)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->sendEvent(IIIJ)V

    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 15

    new-instance v13, Landroid/view/KeyEvent;

    or-int/lit8 v0, p3, 0x8

    or-int/lit8 v11, v0, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object v0, v13

    move-wide/from16 v1, p4

    move-wide/from16 v3, p4

    move/from16 v5, p2

    move/from16 v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateResources()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    const v2, 0x7f0802ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    const v2, 0x7f0802f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b3b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->updateResources()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    const v0, 0x7f0a0364

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mCurrentView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarSetupWizardView$Tg6mC_M_xLI0zBrN6CKih2WtrpQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SecNavigationBarSetupWizardView$Tg6mC_M_xLI0zBrN6CKih2WtrpQ;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mCurrentView:Landroid/view/View;

    const v2, 0x7f0a03f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mCurrentView:Landroid/view/View;

    const v2, 0x7f0a03f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mCurrentView:Landroid/view/View;

    const v2, 0x7f0a03f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mCurrentView:Landroid/view/View;

    const v2, 0x7f0a0229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->updateResources()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPanelExpandedChange(Z)V
    .locals 0

    return-void
.end method

.method public reorient()V
    .locals 0

    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 0

    return-void
.end method

.method public setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 0

    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 0

    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 5

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mHints:I

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    move v1, v3

    nop

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected updateCurrentView()V
    .locals 0

    return-void
.end method

.method protected updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 0

    return-void
.end method

.method protected updateSlippery()V
    .locals 0

    return-void
.end method

.method public updateStates()V
    .locals 0

    return-void
.end method
