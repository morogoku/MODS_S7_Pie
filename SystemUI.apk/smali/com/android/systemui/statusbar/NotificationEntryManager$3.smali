.class Lcom/android/systemui/statusbar/NotificationEntryManager$3;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field final synthetic val$dummyHunView:Lcom/android/systemui/statusbar/DummyHunView;

.field final synthetic val$iconBitmap:Landroid/graphics/Bitmap;


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$3;->val$dummyHunView:Lcom/android/systemui/statusbar/DummyHunView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$3;->val$iconBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationEntryManager$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationEntryManager$3$1;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager$3;)V

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->create(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;I)Lcom/android/systemui/shared/dnd/DragAndDropHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/dnd/DragAndDropHelper;->show()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$3;->val$dummyHunView:Lcom/android/systemui/statusbar/DummyHunView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DummyHunView;->performHapticFeedback(I)Z

    return-void
.end method
