.class Lcom/android/server/notification/NotificationManagerService$13$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$13;->removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$13;

.field final synthetic val$notificationId:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$13;Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->this$1:Lcom/android/server/notification/NotificationManagerService$13;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->val$notificationId:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->this$1:Lcom/android/server/notification/NotificationManagerService$13;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->this$1:Lcom/android/server/notification/NotificationManagerService$13;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->this$1:Lcom/android/server/notification/NotificationManagerService$13;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->val$notificationId:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->val$userId:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/notification/NotificationManagerService$13;->removeForegroundServiceFlagByListLocked(Ljava/util/ArrayList;Ljava/lang/String;IIZ)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$13;->access$7000(Lcom/android/server/notification/NotificationManagerService$13;Ljava/util/ArrayList;Ljava/lang/String;IIZ)V

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->this$1:Lcom/android/server/notification/NotificationManagerService$13;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->this$1:Lcom/android/server/notification/NotificationManagerService$13;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->val$pkg:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->val$notificationId:I

    iget v11, p0, Lcom/android/server/notification/NotificationManagerService$13$1;->val$userId:I

    const/4 v12, 0x1

    # invokes: Lcom/android/server/notification/NotificationManagerService$13;->removeForegroundServiceFlagByListLocked(Ljava/util/ArrayList;Ljava/lang/String;IIZ)V
    invoke-static/range {v7 .. v12}, Lcom/android/server/notification/NotificationManagerService$13;->access$7000(Lcom/android/server/notification/NotificationManagerService$13;Ljava/util/ArrayList;Ljava/lang/String;IIZ)V

    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v1
.end method
