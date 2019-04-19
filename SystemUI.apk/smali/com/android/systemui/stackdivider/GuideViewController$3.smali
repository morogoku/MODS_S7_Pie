.class Lcom/android/systemui/stackdivider/GuideViewController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuideViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/GuideViewController;->scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/GuideViewController;

.field final synthetic val$dividerView:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$isHorizontalDivision:Z

.field final synthetic val$positionX:I

.field final synthetic val$positionY:I

.field final synthetic val$scrollEndPosition:I


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->this$0:Lcom/android/systemui/stackdivider/GuideViewController;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$isHorizontalDivision:Z

    iput-object p3, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$dividerView:Lcom/android/systemui/stackdivider/DividerView;

    iput p4, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$positionX:I

    iput p5, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$scrollEndPosition:I

    iput p6, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$positionY:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$isHorizontalDivision:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->this$0:Lcom/android/systemui/stackdivider/GuideViewController;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$dividerView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$positionX:I

    iget v5, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$scrollEndPosition:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->this$0:Lcom/android/systemui/stackdivider/GuideViewController;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$dividerView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$scrollEndPosition:I

    iget v5, p0, Lcom/android/systemui/stackdivider/GuideViewController$3;->val$positionY:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    :goto_0
    return-void
.end method
