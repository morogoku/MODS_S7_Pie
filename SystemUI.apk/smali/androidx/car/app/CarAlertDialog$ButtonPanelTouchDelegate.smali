.class final Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "CarAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/CarAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonPanelTouchDelegate"
.end annotation


# instance fields
.field private mNegativeButtonDelegate:Landroid/view/TouchDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPositiveButtonDelegate:Landroid/view/TouchDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v3, p0, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;->mPositiveButtonDelegate:Landroid/view/TouchDelegate;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;->mPositiveButtonDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v3, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    iget-object v3, p0, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;->mNegativeButtonDelegate:Landroid/view/TouchDelegate;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;->mNegativeButtonDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v3, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_1
    return v0
.end method

.method setNegativeButtonDelegate(Landroid/view/TouchDelegate;)V
    .locals 0
    .param p1    # Landroid/view/TouchDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;->mNegativeButtonDelegate:Landroid/view/TouchDelegate;

    return-void
.end method

.method setPositiveButtonDelegate(Landroid/view/TouchDelegate;)V
    .locals 0
    .param p1    # Landroid/view/TouchDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/car/app/CarAlertDialog$ButtonPanelTouchDelegate;->mPositiveButtonDelegate:Landroid/view/TouchDelegate;

    return-void
.end method
