.class public Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;
.super Landroid/widget/FrameLayout;
.source "SideScreenDividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mController:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

.field protected mDockSide:I

.field private mDownDelta:Landroid/graphics/PointF;

.field protected mMoving:Z

.field private mShadowView:Landroid/view/View;

.field protected mStartX:I

.field protected mStartY:I

.field private mSupportsSplitScreenWindowingMode:I

.field private mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mDownDelta:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0516

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mShadowView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {p0, p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    nop

    invoke-static {v0}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setShadowViewVisible(I)V

    return-void
.end method

.method public onSideScreenDockSideChanged(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mDockSide:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mDockSide:I

    :cond_0
    return-void
.end method

.method public onSideScreenMinimizedChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    sget-boolean v2, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SideScreenDividerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch : action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mMoving:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mSupportsSplitScreenWindowingMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mStartX:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mStartY:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->startMovingSideScreen(II)V

    iput-boolean v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mMoving:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mDownDelta:Landroid/graphics/PointF;

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mStartX:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mStartY:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mContext:Landroid/content/Context;

    const v5, 0x7f120316

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iput-boolean v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mMoving:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mMoving:Z

    goto :goto_0

    :pswitch_3
    nop

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->isFullscreenSupportsSplitScreenWindowingMode()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mSupportsSplitScreenWindowingMode:I

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mStartX:I

    iput v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mStartY:I

    iput-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mMoving:Z

    nop

    :cond_2
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method setController(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    return-void
.end method

.method setShadowViewVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mShadowView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->mShadowView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method startMovingSideScreen(II)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->startMovingSideScreen(II)V

    return-void
.end method
