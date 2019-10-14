.class public Landroidx/car/app/CarAlertDialog;
.super Landroid/app/Dialog;
.source "CarAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/CarAlertDialog$Builder;,
        Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;
    }
.end annotation


# instance fields
.field private final mBody:Ljava/lang/CharSequence;

.field private mBodyView:Landroid/widget/TextView;

.field private final mBottomPadding:I

.field private final mButtonMinWidth:I

.field private mButtonPanel:Landroid/view/View;

.field private final mButtonPanelTopMargin:I

.field private mButtonPanelTouchDelegate:Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;

.field private final mButtonSpacing:I

.field private mContentView:Landroid/view/View;

.field private mNegativeButton:Landroid/widget/Button;

.field private final mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButton:Landroid/widget/Button;

.field private final mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mPositiveButtonText:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private final mTopPadding:I


# direct methods
.method private initializeViews()V
    .locals 3

    invoke-virtual {p0}, Landroidx/car/app/CarAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/car/R$id;->content_view:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/CarAlertDialog;->mContentView:Landroid/view/View;

    sget v1, Landroidx/car/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/car/app/CarAlertDialog;->mTitleView:Landroid/widget/TextView;

    sget v1, Landroidx/car/R$id;->body:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/car/app/CarAlertDialog;->mBodyView:Landroid/widget/TextView;

    sget v1, Landroidx/car/R$id;->button_panel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanel:Landroid/view/View;

    new-instance v1, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;

    iget-object v2, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanel:Landroid/view/View;

    invoke-direct {v1, v2}, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanelTouchDelegate:Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;

    iget-object v1, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanel:Landroid/view/View;

    iget-object v2, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanelTouchDelegate:Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    sget v1, Landroidx/car/R$id;->positive_button:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    sget v1, Landroidx/car/R$id;->negative_button:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButton:Landroid/widget/Button;

    iget-object v1, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v2, Landroidx/car/app/-$$Lambda$CarAlertDialog$kbC86cIbi1nKoO9998uxNgATtpo;

    invoke-direct {v2, p0}, Landroidx/car/app/-$$Lambda$CarAlertDialog$kbC86cIbi1nKoO9998uxNgATtpo;-><init>(Landroidx/car/app/CarAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v2, Landroidx/car/app/-$$Lambda$CarAlertDialog$vdLOfbAvr1Rmknh7bEOZ-5Ah7Ic;

    invoke-direct {v2, p0}, Landroidx/car/app/-$$Lambda$CarAlertDialog$vdLOfbAvr1Rmknh7bEOZ-5Ah7Ic;-><init>(Landroidx/car/app/CarAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$initializeViews$1(Landroidx/car/app/CarAlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroidx/car/app/CarAlertDialog;->onPositiveButtonClick()V

    return-void
.end method

.method public static synthetic lambda$initializeViews$2(Landroidx/car/app/CarAlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroidx/car/app/CarAlertDialog;->onNegativeButtonClick()V

    return-void
.end method

.method public static synthetic lambda$updateTargetTargetForButton$0(Landroidx/car/app/CarAlertDialog;Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Landroidx/car/app/CarAlertDialog;->mButtonMinWidth:I

    if-ge v1, v3, :cond_0

    iget v3, p0, Landroidx/car/app/CarAlertDialog;->mButtonMinWidth:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    new-instance v4, Landroid/view/TouchDelegate;

    invoke-direct {v4, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object v2, v4

    :cond_0
    iget-object v3, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanelTouchDelegate:Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;

    invoke-virtual {p1, v2}, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;->setPositiveButtonDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanelTouchDelegate:Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;

    invoke-virtual {p1, v2}, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;->setNegativeButtonDelegate(Landroid/view/TouchDelegate;)V

    :goto_0
    return-void
.end method

.method private onNegativeButtonClick()V
    .locals 2

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/car/app/CarAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private onPositiveButtonClick()V
    .locals 2

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/car/app/CarAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private setBody(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mBodyView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Landroidx/car/app/CarAlertDialog;->updateButtonPanelTopMargin()V

    return-void
.end method

.method private setNegativeButton(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroidx/car/app/CarAlertDialog;->updateTargetTargetForButton(Landroid/view/View;)V

    invoke-direct {p0}, Landroidx/car/app/CarAlertDialog;->updateButtonPanelVisibility()V

    invoke-direct {p0}, Landroidx/car/app/CarAlertDialog;->updateButtonSpacing()V

    return-void
.end method

.method private setPositiveButton(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-direct {p0, v1}, Landroidx/car/app/CarAlertDialog;->updateTargetTargetForButton(Landroid/view/View;)V

    invoke-direct {p0}, Landroidx/car/app/CarAlertDialog;->updateButtonPanelVisibility()V

    invoke-direct {p0}, Landroidx/car/app/CarAlertDialog;->updateButtonSpacing()V

    return-void
.end method

.method private setTitleInternal(Ljava/lang/CharSequence;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroidx/car/app/CarAlertDialog;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iget-object v4, p0, Landroidx/car/app/CarAlertDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroidx/car/app/CarAlertDialog;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    iget v4, p0, Landroidx/car/app/CarAlertDialog;->mTopPadding:I

    :goto_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p0, Landroidx/car/app/CarAlertDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    :goto_4
    iget-object v5, p0, Landroidx/car/app/CarAlertDialog;->mContentView:Landroid/view/View;

    iget-object v6, p0, Landroidx/car/app/CarAlertDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    iget-object v7, p0, Landroidx/car/app/CarAlertDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    invoke-virtual {v5, v6, v4, v7, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private updateButtonPanelTopMargin()V
    .locals 3

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanelTopMargin:I

    nop

    :cond_1
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updateButtonPanelVisibility()V
    .locals 7

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    iget-object v3, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanel:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget v1, p0, Landroidx/car/app/CarAlertDialog;->mBottomPadding:I

    :goto_3
    iget-object v3, p0, Landroidx/car/app/CarAlertDialog;->mContentView:Landroid/view/View;

    iget-object v4, p0, Landroidx/car/app/CarAlertDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Landroidx/car/app/CarAlertDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Landroidx/car/app/CarAlertDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private updateButtonSpacing()V
    .locals 3

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/car/app/CarAlertDialog;->mButtonSpacing:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method

.method private updateTargetTargetForButton(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButton:Landroid/widget/Button;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method must be passed one of mPositiveButton or mNegativeButton"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mButtonPanel:Landroid/view/View;

    new-instance v1, Landroidx/car/app/-$$Lambda$CarAlertDialog$6vm37KRWT-UEjzJ3FicPradX7RE;

    invoke-direct {v1, p0, p1}, Landroidx/car/app/-$$Lambda$CarAlertDialog$6vm37KRWT-UEjzJ3FicPradX7RE;-><init>(Landroidx/car/app/CarAlertDialog;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/car/app/CarAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/car/R$layout;->car_alert_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    invoke-direct {p0}, Landroidx/car/app/CarAlertDialog;->initializeViews()V

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mBody:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/car/app/CarAlertDialog;->setBody(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/car/app/CarAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/car/app/CarAlertDialog;->setNegativeButton(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/car/app/CarAlertDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/car/app/CarAlertDialog;->setTitleInternal(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Title should only be set from the Builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
