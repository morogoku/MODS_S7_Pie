.class Lcom/android/systemui/statusbar/NotificationEntryManager$4;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationEntryManager;->updateAllNotificationColor(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$4;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-class v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getAllEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$4;->val$force:Z

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/NotificationColorPicker;->update(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderForExpansion(Z)V

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->getNotificationViewState(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/ViewState;

    move-result-object v6

    instance-of v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    if-eqz v7, :cond_4

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToRevert(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->invert:Ljava/lang/Boolean;

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
