.class Lcom/android/systemui/statusbar/ExpandableOutlineView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableOutlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$000(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$100(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$200(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$300(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$400(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mShouldTranslateContents:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getTranslation()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v4, v4, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$500(Lcom/android/systemui/statusbar/ExpandableOutlineView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getWidth()I

    move-result v5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v5, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getActualHeight()I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v6, v6, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipBottomAmount:I

    sub-int/2addr v2, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p2, v3, v4, v5, v2}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$600(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isHeadsUp()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isHeadsUpOutlineAndRound()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$700(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F

    move-result v1

    :goto_2
    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
