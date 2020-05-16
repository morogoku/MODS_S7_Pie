.class Landroid/support/design/bottomappbar/BottomAppBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/bottomappbar/BottomAppBar;

.field final synthetic val$actionMenuView:Landroid/support/v7/widget/ActionMenuView;

.field final synthetic val$targetAttached:Z

.field final synthetic val$targetMode:I


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->val$actionMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v2, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->val$targetMode:I

    iget-boolean v3, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->val$targetAttached:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/design/bottomappbar/BottomAppBar;->access$400(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V

    return-void
.end method
