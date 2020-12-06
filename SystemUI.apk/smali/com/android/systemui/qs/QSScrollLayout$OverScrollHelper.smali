.class Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;
.super Ljava/lang/Object;
.source "QSScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/touch/SwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverScrollHelper"
.end annotation


# instance fields
.field private mFirstDisplacement:F

.field private mIsInOverScroll:Z

.field final synthetic this$0:Lcom/android/systemui/qs/QSScrollLayout;


# direct methods
.method private getDampedOverScroll(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->this$0:Lcom/android/systemui/qs/QSScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScrollLayout;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/touch/OverScroll;->dampedScroll(FI)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private reset()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->this$0:Lcom/android/systemui/qs/QSScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/QSScrollLayout;->access$100(Lcom/android/systemui/qs/QSScrollLayout;)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->this$0:Lcom/android/systemui/qs/QSScrollLayout;

    invoke-static {}, Lcom/android/systemui/qs/QSScrollLayout;->access$300()Landroid/util/Property;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [F

    aput v1, v4, v2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mIsInOverScroll:Z

    iput v1, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mFirstDisplacement:F

    return-void
.end method


# virtual methods
.method public isInOverScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mIsInOverScroll:Z

    return v0
.end method

.method public onDrag(FF)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mIsInOverScroll:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->this$0:Lcom/android/systemui/qs/QSScrollLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSScrollLayout;->canScrollVertically(I)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    cmpg-float v1, p1, v3

    if-ltz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->this$0:Lcom/android/systemui/qs/QSScrollLayout;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/QSScrollLayout;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    cmpl-float v1, p1, v3

    if-lez v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mIsInOverScroll:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mIsInOverScroll:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->reset()V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mIsInOverScroll:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mFirstDisplacement:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_4

    iput p1, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mFirstDisplacement:F

    :cond_4
    iget v1, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mFirstDisplacement:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->this$0:Lcom/android/systemui/qs/QSScrollLayout;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->getDampedOverScroll(F)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/qs/QSScrollLayout;->access$200(Lcom/android/systemui/qs/QSScrollLayout;F)V

    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->mIsInOverScroll:Z

    return v1
.end method

.method public onDragEnd(FZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSScrollLayout$OverScrollHelper;->reset()V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    return-void
.end method
