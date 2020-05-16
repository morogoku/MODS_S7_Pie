.class Lcom/android/systemui/statusbar/SecNotificationInfo$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecNotificationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SecNotificationInfo;->swapContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/SecNotificationInfo;

.field final synthetic val$prompt:Landroid/view/View;

.field final synthetic val$showPrompt:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/SecNotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo$1;->val$prompt:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo$1;->val$showPrompt:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo$1;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo$1;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo$1;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo$1;->val$prompt:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo$1;->val$showPrompt:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
