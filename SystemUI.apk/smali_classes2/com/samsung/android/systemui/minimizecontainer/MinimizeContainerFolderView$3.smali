.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$3;
.super Ljava/lang/Object;
.source "MinimizeContainerFolderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->animateToOpenFolderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
