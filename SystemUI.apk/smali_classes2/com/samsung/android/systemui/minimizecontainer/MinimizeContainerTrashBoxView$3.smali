.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$3;
.super Ljava/lang/Object;
.source "MinimizeContainerTrashBoxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToBounceTrashBoxIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->access$700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
