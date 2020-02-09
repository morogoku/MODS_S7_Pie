.class Lcom/android/systemui/statusbar/phone/StatusBar$25;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startUnlockAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clockOriginalScaleX:F

.field clockOriginalScaleY:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$bottomArea:Landroid/view/View;

.field final synthetic val$clock:Landroid/view/View;

.field final synthetic val$keyguardHeader:Landroid/view/View;

.field final synthetic val$notification:Landroid/view/View;

.field final synthetic val$wallpaper:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$clock:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$notification:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$keyguardHeader:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$bottomArea:Landroid/view/View;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$wallpaper:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->clockOriginalScaleX:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->clockOriginalScaleY:F

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$clock:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$clock:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->clockOriginalScaleX:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$clock:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->clockOriginalScaleY:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$notification:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "StatusBar"

    const-string v2, "NSSL is visible again by unlock animation end..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$keyguardHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$bottomArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$wallpaper:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$wallpaper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$wallpaper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$wallpaper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMascotView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1502(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    const-string v0, "StatusBar"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$clock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->clockOriginalScaleX:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$clock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->clockOriginalScaleY:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToNotificationShade()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->val$notification:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIconContainer()Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIconContainer()Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setVisibility(I)V

    :cond_1
    const-string v0, "StatusBar"

    const-string v1, "NSSL is gone by unlock animation start..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
