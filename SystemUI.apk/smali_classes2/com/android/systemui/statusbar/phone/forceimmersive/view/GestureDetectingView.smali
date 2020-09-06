.class public Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;
.super Landroid/widget/FrameLayout;
.source "GestureDetectingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static mSPayHintRect:Landroid/graphics/Rect;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mFloatingButtonType:I

.field private mFloatingViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mHeight:I

.field private mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

.field private mInsetsChangedListener:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mOriginTouchableRegion:Landroid/graphics/Region;

.field private mRestartButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

.field private mRestartButtonRect:Landroid/graphics/Rect;

.field private mRotateButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

.field private mRotationButtonRect:Landroid/graphics/Rect;

.field private mShowFloatingButton:Z

.field private mTouchableRegion:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->DEBUG:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mSPayHintRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mOriginTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRotationButtonRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRestartButtonRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$1;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$2;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mFloatingViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mDisplay:Landroid/view/Display;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRotateButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRestartButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Landroid/graphics/Region;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRotationButtonRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRestartButtonRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->updateTouchableRegionByButtonType()V

    return-void
.end method

.method private getFloatingButtonRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mFloatingButtonType:I

    sget v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_FLOATING_ROTATION:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRotationButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mFloatingButtonType:I

    sget v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_FLOATING_RESTART:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRestartButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$update$0(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getLongPressAction()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method private setTouchableRegion(Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :goto_0
    return-void
.end method

.method private updateTouchableRegionByButtonType()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mShowFloatingButton:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getFloatingButtonRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->setTouchableRegion(Landroid/graphics/Region;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mOriginTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mSPayHintRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "GestureDetectingView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHintVisibilityChanged - payVisible : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " + payRect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mSPayHintRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mInsetsChangedListener:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mInsetsChangedListener:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;

    sget-object v2, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mSPayHintRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mSPayHintRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;->onSPayHintVisibilityChanged(ZI)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method public onAttach()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->requestLayout()V

    return-void
.end method

.method public onRemove()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->setDarkIntensity(F)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->setDarkIntensity(F)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFloatingButtonVisibility(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mFloatingButtonType:I

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mShowFloatingButton:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mFloatingButtonType:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mShowFloatingButton:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->updateTouchableRegionByButtonType()V

    return-void
.end method

.method public setInsetsChangedListener(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mInsetsChangedListener:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$OnInsetsChangedListener;

    return-void
.end method

.method public update(Ljava/util/List;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v4, "GestureDetectingView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->removeAllViews()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mOriginTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRotateButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->clear()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRestartButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->clear()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mContext:Landroid/content/Context;

    const v5, 0x7f0a01d6

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->getLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mFloatingViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRotateButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRotateButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0442

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->getLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mFloatingViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureFloatingButtonView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRestartButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mRestartButtonDispatcher:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isDisabledByPolicy()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getCueSize()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getLongPressAction()Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    new-instance v15, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getId()I

    move-result v12

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getCueSize()I

    move-result v13

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getSideMargin()I

    move-result v14

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;III)V

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isFixedOrientation()Z

    move-result v10

    move/from16 v11, p3

    invoke-virtual {v9, v2, v11, v10}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->updateGestureHintLayout(IZZ)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v8, :cond_2

    new-instance v10, Lcom/android/systemui/statusbar/phone/forceimmersive/view/-$$Lambda$GestureDetectingView$aPs56Q0871NKaIApWZ5XK7vCfcs;

    invoke-direct {v10, v6}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/-$$Lambda$GestureDetectingView$aPs56Q0871NKaIApWZ5XK7vCfcs;-><init>(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)V

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_1
    move/from16 v11, p3

    :cond_2
    :goto_2
    new-instance v8, Landroid/graphics/Region;

    invoke-direct {v8}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isFixedOrientation()Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v2, :cond_5

    const/4 v9, 0x2

    if-ne v2, v9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x3

    if-ne v2, v9, :cond_4

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_4

    :cond_4
    if-ne v2, v7, :cond_6

    iget v7, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mHeight:I

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v9

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mHeight:I

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v7, v9, v10, v12}, Landroid/graphics/Region;->set(IIII)Z

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v9, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mHeight:I

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mHeight:I

    invoke-virtual {v8, v7, v9, v10, v12}, Landroid/graphics/Region;->set(IIII)Z

    :cond_6
    :goto_4
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->setTouchableRegion(Landroid/graphics/Region;Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_7
    move/from16 v11, p3

    :goto_5
    goto/16 :goto_0

    :cond_8
    move/from16 v11, p3

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mOriginTouchableRegion:Landroid/graphics/Region;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public updateWindowLayout(Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x3

    invoke-direct {v0, v1, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const/16 v1, 0x8e2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-string v2, "NavbarGestureHandler"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;->update(Z)V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;->getConsumerWidth()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;->getConsumerHeight()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;->getConsumerGravity()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/HideProviderBase;->getConsumerBreadth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->mHeight:I

    if-nez p2, :cond_0

    const/4 v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->DEBUG:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x4dff0000    # 5.3477376E8f

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->setBackgroundColor(I)V

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_1
    return-object v0
.end method
