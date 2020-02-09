.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAllNotificationColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field final synthetic val$N:I

.field final synthetic val$ncp:Lcom/android/systemui/statusbar/NotificationColorPicker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;ILcom/android/systemui/statusbar/NotificationColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;->val$N:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;->val$ncp:Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;->val$N:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;->val$ncp:Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->update(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderForExpansion(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
