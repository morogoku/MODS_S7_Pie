.class public Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;
.super Landroid/widget/RelativeLayout;
.source "SideScreenMenuHandlerButtonsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/view/GestureDetector;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonsWrapper:Landroid/view/View;

.field private mController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mRippleView:Landroid/view/View;

.field private mVisibilityStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtons:Landroid/util/ArrayMap;

    new-instance v0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenMenuHandlerButtonsView$L9zqe2eDrEgrzQlyfngWn8AYZWk;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenMenuHandlerButtonsView$L9zqe2eDrEgrzQlyfngWn8AYZWk;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenMenuHandlerButtonsView$psQ3UaKLJRVz4TtuX0wf_DKjTaA;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenMenuHandlerButtonsView$psQ3UaKLJRVz4TtuX0wf_DKjTaA;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenMenuHandlerButtonsView$IR9izVjMZar-Bbsn2vhjEPlt-_8;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenMenuHandlerButtonsView$IR9izVjMZar-Bbsn2vhjEPlt-_8;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mVisibilityStates:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->playTouchSound()V

    return-void
.end method

.method private createGestureDetector(I)Landroid/view/GestureDetector$SimpleOnGestureListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$2;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;I)V

    return-object v0
.end method

.method private drawRipple(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mRippleView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07076d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtonsWrapper:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtonsWrapper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v6, v2, v4, v3, v5}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    iget-object v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mRippleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mRippleView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setPressed(Z)V

    nop

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->drawRipple(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$new$1(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->drawRipple(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$2(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->showToast(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method private playTouchSound()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method private updateVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mVisibilityStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;

    invoke-interface {v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;->isDocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public hideView(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView$1;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string v0, "SideScreenMenuHandlerButtonsView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0520

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtonsWrapper:Landroid/view/View;

    const v0, 0x7f0a051e

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mRippleView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mRippleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtons:Landroid/util/ArrayMap;

    const v1, 0x7f0a051f

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtons:Landroid/util/ArrayMap;

    const v2, 0x7f0a051d

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtons:Landroid/util/ArrayMap;

    const v4, 0x7f0a051b

    invoke-virtual {p0, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtons:Landroid/util/ArrayMap;

    const v5, 0x7f0a051c

    invoke-virtual {p0, v5}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mVisibilityStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/util/Pair;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v3, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mVisibilityStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mVisibilityStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mVisibilityStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mButtons:Landroid/util/ArrayMap;

    new-instance v3, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->createGestureDetector(I)Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->semSetHoverPopupType(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->hideView(Z)V

    return v0
.end method

.method showToast(Landroid/view/View;)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x2

    new-array v2, v0, [I

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "status_bar_height"

    const-string v6, "dimen"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const-string v7, "navigation_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    iget-object v10, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mContext:Landroid/content/Context;

    const-string v11, "display"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/display/DisplayManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v13

    if-nez v13, :cond_0

    iget v13, v9, Landroid/graphics/Point;->x:I

    aget v14, v2, v11

    sub-int/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/2addr v14, v0

    sub-int/2addr v13, v14

    goto :goto_0

    :cond_0
    aget v13, v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/2addr v14, v0

    add-int/2addr v13, v14

    :goto_0
    move v0, v13

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    sub-int/2addr v0, v8

    :cond_1
    move v13, v0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    aget v14, v2, v14

    const-wide v15, 0x3ff199999999999aL    # 1.1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v2

    int-to-double v1, v11

    mul-double/2addr v1, v15

    double-to-int v1, v1

    add-int/2addr v14, v1

    sub-int/2addr v14, v6

    const v1, 0x800035

    :try_start_1
    invoke-virtual {v0, v1, v13, v14}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public showView(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->updateVisibility()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
