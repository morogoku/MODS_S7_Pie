.class public Lcom/android/systemui/bar/ScrollableBarItemView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "ScrollableBarItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bar/ScrollableBarItemView$ScrollableBarItemViewState;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bar."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/ScrollableBarItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bar/ScrollableBarItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/ScrollableBarItemView;->clipBottom()V

    return-void
.end method

.method private clipBottom()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/bar/ScrollableBarItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/bar/ScrollableBarItemView;->setClipBottomAmount(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v3

    invoke-static {p0}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/bar/ScrollableBarItemView;->getTranslationY()F

    move-result v6

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/bar/ScrollableBarItemView;->isInShelf()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v3

    goto :goto_1

    :cond_4
    move v7, v3

    sub-float v8, v7, v6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_5

    nop

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v6

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/bar/ScrollableBarItemView;->getTranslationY()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/bar/ScrollableBarItemView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    cmpl-float v9, v8, v7

    if-lez v9, :cond_6

    sub-float v2, v8, v7

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/bar/ScrollableBarItemView;->setClipBottomAmount(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/bar/ScrollableBarItemView;->setClipBottomAmount(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1

    new-instance v0, Lcom/android/systemui/bar/ScrollableBarItemView$ScrollableBarItemViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/bar/ScrollableBarItemView$ScrollableBarItemViewState;-><init>(Lcom/android/systemui/bar/ScrollableBarItemView;)V

    return-object v0
.end method

.method public performAddAnimation(JJZ)V
    .locals 0

    return-void
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    return-void
.end method
