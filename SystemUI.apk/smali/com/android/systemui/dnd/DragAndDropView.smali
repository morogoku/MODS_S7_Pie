.class public Lcom/android/systemui/dnd/DragAndDropView;
.super Landroid/widget/FrameLayout;
.source "DragAndDropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;,
        Lcom/android/systemui/dnd/DragAndDropView$DnDDropTarget;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mCurrentTarget:I
    .annotation build Lcom/android/systemui/dnd/DragAndDropView$DnDDropTarget;
    .end annotation
.end field

.field mDeltaPoint:Landroid/graphics/Point;

.field mDownPoint:Landroid/graphics/Point;

.field mDragTargetView:Landroid/widget/ImageView;

.field mDropTargets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFullscreenTv:Landroid/widget/TextView;

.field mIam:Landroid/app/IActivityManager;

.field mIsDragEndCalled:Z

.field mIsPortrait:Z

.field mLastPoint:Landroid/graphics/Point;

.field mMovePoint:Landroid/graphics/Point;

.field mPassedInitialSlop:Z

.field mRequesterType:I
    .annotation build Lcom/android/systemui/shared/dnd/DragAndDropHelper$RequesterType;
    .end annotation
.end field

.field mRequesterWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field

.field mService:Lcom/android/systemui/dnd/IDragService;

.field mSideFullTv:Landroid/widget/TextView;

.field mSidePrimaryTv:Landroid/widget/TextView;

.field mSideSecondaryTv:Landroid/widget/TextView;

.field mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

.field mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MW_DND_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/dnd/DragAndDropView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/dnd/DragAndDropView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mLastPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDeltaPoint:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mCurrentTarget:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDropTargets:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/dnd/StackVisibility;

    invoke-direct {v0}, Lcom/android/systemui/dnd/StackVisibility;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mLastPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDeltaPoint:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mCurrentTarget:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDropTargets:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/dnd/StackVisibility;

    invoke-direct {v0}, Lcom/android/systemui/dnd/StackVisibility;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/dnd/DragAndDropView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->animateDragStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/dnd/DragAndDropView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/dnd/DragAndDropView;->changeDropTarget(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/dnd/DragAndDropView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->animateDragEnd()V

    return-void
.end method

.method private animateDragEnd()V
    .locals 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    invoke-virtual {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x0

    aput v6, v5, v1

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    iget-object v10, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getAlpha()F

    move-result v10

    aput v10, v9, v7

    aput v6, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v5, v7

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v4, [F

    iget-object v10, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getScaleX()F

    move-result v10

    aput v10, v9, v7

    aput v6, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v5, v1

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v4, [F

    iget-object v10, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getScaleY()F

    move-result v10

    aput v10, v9, v7

    aput v6, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v7

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/dnd/DragAndDropView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/dnd/DragAndDropView$2;-><init>(Lcom/android/systemui/dnd/DragAndDropView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private animateDragStart()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget-object v5, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aput v5, v4, v7

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v3, [F

    iget-object v8, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleX()F

    move-result v8

    aput v8, v4, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    iget-object v8, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleY()F

    move-result v8

    aput v8, v4, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private changeDropTarget(I)V
    .locals 6
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/DragAndDropView$DnDDropTarget;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mCurrentTarget:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/dnd/DragAndDropView;->TAG:Ljava/lang/String;

    const-string v1, "changeDropTarget to %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mCurrentTarget:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mCurrentTarget:I

    invoke-direct {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->getDragAreaInfo(I)Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->setFocus(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/dnd/DragAndDropView;->getDragAreaInfo(I)Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->setFocus(Z)V

    :cond_2
    iput p1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mCurrentTarget:I

    return-void
.end method

.method private getDragAreaInfo(I)Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;
    .locals 2
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/DragAndDropView$DnDDropTarget;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDropTargets:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    return-object v0
.end method

.method private getDropTargetsVisibility()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v1}, Lcom/android/systemui/dnd/StackVisibility;->isSplit()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mRequesterType:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v1}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result v1

    const/16 v2, 0x66

    if-nez v1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v1}, Lcom/android/systemui/dnd/StackVisibility;->isTwoUp()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mRequesterType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v1}, Lcom/android/systemui/dnd/StackVisibility;->isThreeUp()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    iget v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mRequesterType:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mRequesterWindowingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method private getSideSnapTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getSideSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    return-object v1
.end method

.method private getStackBounds(II)Landroid/graphics/Rect;
    .locals 4
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/dnd/DragAndDropView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method private getWindowingModeFromArea()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mCurrentTarget:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x65

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    nop

    :goto_0
    nop

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mFullscreenTv:Landroid/widget/TextView;

    const v0, 0x7f0a0515

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSidePrimaryTv:Landroid/widget/TextView;

    const v0, 0x7f0a0527

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSideSecondaryTv:Landroid/widget/TextView;

    const v0, 0x7f0a0514

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSideFullTv:Landroid/widget/TextView;

    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mTouchSlop:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mPassedInitialSlop:Z

    iput-boolean v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIsDragEndCalled:Z

    return-void
.end method

.method private initDragTarget(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    new-instance v0, Lcom/android/systemui/dnd/DragAndDropView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dnd/DragAndDropView$1;-><init>(Lcom/android/systemui/dnd/DragAndDropView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private initDropTargets()V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getDropTargetsVisibility()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDropTargets:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDropTargets:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/systemui/dnd/DragAndDropView;->createDropTargetInfo(I)Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mCurrentTarget:I

    return-void
.end method

.method private isStackVisible(II)Z
    .locals 4
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/app/ActivityManager$StackInfo;->visible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/dnd/DragAndDropView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateDragAreaText()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mRequesterType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f120b99

    goto :goto_0

    :cond_0
    const v0, 0x7f120b98

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mFullscreenTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSidePrimaryTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSideSecondaryTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSideFullTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/graphics/Bitmap;II)V
    .locals 8

    iput p2, p0, Lcom/android/systemui/dnd/DragAndDropView;->mRequesterType:I

    iput p3, p0, Lcom/android/systemui/dnd/DragAndDropView;->mRequesterWindowingMode:I

    nop

    invoke-virtual {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIsPortrait:Z

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/dnd/DragAndDropView;->isStackVisible(II)Z

    move-result v4

    const/16 v5, 0x64

    invoke-direct {p0, v5, v2}, Lcom/android/systemui/dnd/DragAndDropView;->isStackVisible(II)Z

    move-result v6

    const/16 v7, 0x65

    invoke-direct {p0, v7, v2}, Lcom/android/systemui/dnd/DragAndDropView;->isStackVisible(II)Z

    move-result v7

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/dnd/DragAndDropView;->isStackVisible(II)Z

    move-result v5

    invoke-virtual {v0, v4, v6, v7, v5}, Lcom/android/systemui/dnd/StackVisibility;->set(ZZZZ)V

    const-string/jumbo v0, "requesterType=%d, windowingMode=%d / splitP=%b, sideRecents=%b, sideP=%b, sideS=%b, isSidescreenOpen=%b, twoUp=%b, threeUp=%b"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    iget-boolean v2, v2, Lcom/android/systemui/dnd/StackVisibility;->isSplitPrimaryVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    iget-boolean v2, v2, Lcom/android/systemui/dnd/StackVisibility;->isSideRecentsVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    iget-boolean v1, v1, Lcom/android/systemui/dnd/StackVisibility;->isSidePrimaryVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    iget-boolean v2, v2, Lcom/android/systemui/dnd/StackVisibility;->isSideSecondaryVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v2}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v2}, Lcom/android/systemui/dnd/StackVisibility;->isTwoUp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v2}, Lcom/android/systemui/dnd/StackVisibility;->isThreeUp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->updateDragAreaText()V

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->initDropTargets()V

    invoke-direct {p0, p1}, Lcom/android/systemui/dnd/DragAndDropView;->initDragTarget(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method createDropTargetInfo(I)Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;
    .locals 8
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/DragAndDropView$DnDDropTarget;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getSideSnapTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->scaleRectCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v1}, Lcom/android/systemui/dnd/StackVisibility;->isThreeUp()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIsPortrait:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :goto_1
    new-instance v7, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSideFullTv:Landroid/widget/TextView;

    const/16 v4, 0x66

    move-object v1, v7

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;-><init>(Lcom/android/systemui/dnd/DragAndDropView;Landroid/widget/TextView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v7

    :pswitch_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getSideSnapTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIsPortrait:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/DragAndDropView;->scaleRectCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/DragAndDropView;->scaleRectCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    :goto_3
    new-instance v1, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    iget-object v4, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSideSecondaryTv:Landroid/widget/TextView;

    const/16 v5, 0x65

    move-object v2, v1

    move-object v3, p0

    move-object v7, v6

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;-><init>(Lcom/android/systemui/dnd/DragAndDropView;Landroid/widget/TextView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v1

    :pswitch_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getSideSnapTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIsPortrait:Z

    if-eqz v1, :cond_3

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/DragAndDropView;->scaleRectCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    :goto_4
    move-object v6, v1

    goto :goto_5

    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/DragAndDropView;->scaleRectCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_4

    :goto_5
    new-instance v1, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    iget-object v4, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSidePrimaryTv:Landroid/widget/TextView;

    const/16 v5, 0x64

    move-object v2, v1

    move-object v3, p0

    move-object v7, v6

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;-><init>(Lcom/android/systemui/dnd/DragAndDropView;Landroid/widget/TextView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v1

    :pswitch_3
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/dnd/DragAndDropView;->getStackBounds(II)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    iget-object v4, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSideSecondaryTv:Landroid/widget/TextView;

    const/4 v5, 0x4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/dnd/DragAndDropView;->scaleRectCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v1

    move-object v3, p0

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;-><init>(Lcom/android/systemui/dnd/DragAndDropView;Landroid/widget/TextView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v1

    :pswitch_4
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/dnd/DragAndDropView;->getStackBounds(II)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    iget-object v4, p0, Lcom/android/systemui/dnd/DragAndDropView;->mSidePrimaryTv:Landroid/widget/TextView;

    const/4 v5, 0x3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/dnd/DragAndDropView;->scaleRectCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v1

    move-object v3, p0

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;-><init>(Lcom/android/systemui/dnd/DragAndDropView;Landroid/widget/TextView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v1

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getSideSnapTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->scaleRectCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    new-instance v7, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView;->mFullscreenTv:Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v5, v0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;-><init>(Lcom/android/systemui/dnd/DragAndDropView;Landroid/widget/TextView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDropTargets:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->init()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mDropTargets:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    invoke-virtual {v1}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public performDragEnd()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIsDragEndCalled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/dnd/DragAndDropView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performDragEnd : mCurrentTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/dnd/DragAndDropView;->mCurrentTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mService:Lcom/android/systemui/dnd/IDragService;

    invoke-interface {v0}, Lcom/android/systemui/dnd/IDragService;->getClient()Lcom/samsung/android/multiwindow/IDragAndDropClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/dnd/DragAndDropView;->getWindowingModeFromArea()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onDragEnd(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/DragAndDropView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/dnd/DragAndDropView;->mIsDragEndCalled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method scaleRectCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method public setParent(Lcom/android/systemui/dnd/IDragService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dnd/DragAndDropView;->mService:Lcom/android/systemui/dnd/IDragService;

    return-void
.end method
