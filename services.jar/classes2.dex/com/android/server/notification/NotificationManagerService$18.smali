.class Lcom/android/server/notification/NotificationManagerService$18;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$count:I

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rank:I

.field final synthetic val$reason:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZII)V
    .registers 15

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$userId:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$mustHaveFlags:I

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$mustNotHaveFlags:I

    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$reason:I

    iput-boolean p12, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$sendDelete:Z

    iput p13, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$rank:I

    iput p14, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_7
    move-object v11, v0

    goto :goto_12

    :cond_9
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :goto_12
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$callingUid:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$callingPid:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$pkg:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$id:I

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$tag:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$userId:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$mustHaveFlags:I

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$mustNotHaveFlags:I

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$reason:I

    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2c
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$pkg:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$tag:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$id:I

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$userId:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_93

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$reason:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4a

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    :cond_4a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$mustHaveFlags:I

    and-int/2addr v3, v4

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$mustHaveFlags:I

    if-eq v3, v4, :cond_59

    monitor-exit v2

    return-void

    :cond_59
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$mustNotHaveFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_66

    monitor-exit v2

    return-void

    :cond_66
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->access$7100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v5, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$sendDelete:Z

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$reason:I

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$rank:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$count:I

    move-object v4, v0

    move-object v10, v11

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    invoke-static/range {v3 .. v10}, Lcom/android/server/notification/NotificationManagerService;->access$9300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v14, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$callingUid:I

    iget v15, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$callingPid:I

    iget-boolean v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$sendDelete:Z

    const/16 v18, 0x0

    move-object v13, v0

    move-object/from16 v16, v11

    move/from16 v17, v3

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    invoke-static/range {v12 .. v18}, Lcom/android/server/notification/NotificationManagerService;->access$9400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    goto :goto_b2

    :cond_93
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$reason:I

    const/16 v4, 0x12

    if-eq v3, v4, :cond_b2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$4500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v3

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$userId:I

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$pkg:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$tag:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$18;->val$id:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    :cond_b2
    :goto_b2
    monitor-exit v2

    return-void

    :catchall_b4
    move-exception v0

    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_2c .. :try_end_b6} :catchall_b4

    throw v0
.end method
