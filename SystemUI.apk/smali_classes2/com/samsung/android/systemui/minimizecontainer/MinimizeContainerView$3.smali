.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;
.super Ljava/lang/Object;
.source "MinimizeContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->animateToShowPointerAppIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

.field final synthetic val$pivotX:F

.field final synthetic val$pivotY:F


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iput p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;->val$pivotX:F

    iput p3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;->val$pivotY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;->val$pivotX:F

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;->val$pivotY:F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)V

    return-void
.end method
