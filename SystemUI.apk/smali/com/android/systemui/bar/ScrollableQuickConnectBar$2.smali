.class Lcom/android/systemui/bar/ScrollableQuickConnectBar$2;
.super Ljava/lang/Object;
.source "ScrollableQuickConnectBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/ScrollableQuickConnectBar;->startSizeChangeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/ScrollableQuickConnectBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$2;->this$0:Lcom/android/systemui/bar/ScrollableQuickConnectBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$2;->this$0:Lcom/android/systemui/bar/ScrollableQuickConnectBar;

    invoke-static {v0}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->access$200(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$2;->this$0:Lcom/android/systemui/bar/ScrollableQuickConnectBar;

    invoke-static {v1}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->access$100(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/bar/ScrollableQuickConnectBar$2;->this$0:Lcom/android/systemui/bar/ScrollableQuickConnectBar;

    invoke-static {v2}, Lcom/android/systemui/bar/ScrollableQuickConnectBar;->access$100(Lcom/android/systemui/bar/ScrollableQuickConnectBar;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
