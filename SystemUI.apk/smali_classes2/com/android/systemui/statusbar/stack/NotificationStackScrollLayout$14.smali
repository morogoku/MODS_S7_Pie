.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkForLongClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->val$view:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    new-array v0, v1, [I

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->val$view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aget v4, v0, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v1

    add-int/2addr v4, v5

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->val$view:Landroid/view/View;

    instance-of v5, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->val$view:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2700(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1118"

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2800(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->val$view:Landroid/view/View;

    invoke-interface {v5, v6, v2, v4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$2902(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z

    return-void
.end method
