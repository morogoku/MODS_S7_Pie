.class Lcom/android/systemui/HardwareUiLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HardwareUiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/HardwareUiLayout;->animateChild(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/HardwareUiLayout;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout$1;->this$0:Lcom/android/systemui/HardwareUiLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/HardwareUiLayout;->access$002(Lcom/android/systemui/HardwareUiLayout;Z)Z

    return-void
.end method
