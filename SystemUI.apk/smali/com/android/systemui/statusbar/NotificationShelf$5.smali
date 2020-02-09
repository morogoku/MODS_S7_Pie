.class Lcom/android/systemui/statusbar/NotificationShelf$5;
.super Ljava/lang/Object;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;

.field final synthetic val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$5;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf$5;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf$5;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$5;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$5;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const v1, 0x7f0a011f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf$5;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf$5;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf$5;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$5;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const v2, 0x7f0a011e

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
