.class public Lcom/android/systemui/qs/QSScrollLayout;
.super Landroid/support/v4/widget/NestedScrollView;
.source "QSScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;
    }
.end annotation


# static fields
.field private static final CONTENT_TRANS_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/qs/QSScrollLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentTranslationY:F

.field private final mOverScrollHelper:Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;

.field private final mSwipeDetector:Lcom/android/systemui/qs/touch/SwipeDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/QSScrollLayout$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "qsScrollLayoutContentTransY"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/QSScrollLayout$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/QSScrollLayout;->CONTENT_TRANS_Y:Landroid/util/Property;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSScrollLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSScrollLayout;->mContentTranslationY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSScrollLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSScrollLayout;->setContentTranslationY(F)V

    return-void
.end method

.method static synthetic access$300()Landroid/util/Property;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSScrollLayout;->CONTENT_TRANS_Y:Landroid/util/Property;

    return-object v0
.end method

.method private setContentTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSScrollLayout;->mContentTranslationY:F

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSScrollLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/QSScrollLayout;->mContentTranslationY:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/systemui/qs/QSScrollLayout;->mContentTranslationY:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSScrollLayout;->canScrollVertically(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSScrollLayout;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSScrollLayout;->mSwipeDetector:Lcom/android/systemui/qs/touch/SwipeDetector;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSScrollLayout;->mOverScrollHelper:Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->isInOverScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSScrollLayout;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSScrollLayout;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSScrollLayout;->mSwipeDetector:Lcom/android/systemui/qs/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
