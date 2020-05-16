.class Lcom/android/server/notification/SmartAlertController$2;
.super Ljava/lang/Object;
.source "SmartAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController;->checkMissedEvent(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;

.field final synthetic val$notiList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    iput-object p2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/SmartAlertController;->access$402(Lcom/android/server/notification/SmartAlertController;Z)Z

    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    :goto_14
    if-ge v3, v2, :cond_45

    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    if-eqz v5, :cond_42

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->semMissedCount:I

    if-lez v5, :cond_42

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v0, v5, :cond_42

    const-string v5, "SmartAlertController"

    const-string v6, "SmartAlert - Found Missed Event"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z
    invoke-static {v5, v6}, Lcom/android/server/notification/SmartAlertController;->access$402(Lcom/android/server/notification/SmartAlertController;Z)Z

    goto :goto_45

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_45
    :goto_45
    iget-object v3, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/notification/SmartAlertController;->access$500(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v3

    if-nez v3, :cond_5a

    iget-object v3, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z
    invoke-static {v3}, Lcom/android/server/notification/SmartAlertController;->access$400(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {v3}, Lcom/android/server/notification/SmartAlertController;->registerListener()V

    :cond_5a
    monitor-exit v1

    return-void

    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_5c

    throw v2
.end method
