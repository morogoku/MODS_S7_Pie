.class Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
.super Ljava/lang/Object;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationWorking"
.end annotation


# instance fields
.field mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

.field mDisplayedTime:J

.field private final mId:I

.field mList:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mszId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    iput-object p2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mszId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    return-void
.end method

.method private pop()Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_1b

    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    monitor-exit v1

    return-object v2

    :cond_16
    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v1

    return-object v0
.end method


# virtual methods
.method public checkVaild()Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    const/4 v2, 0x1

    return v2

    :cond_12
    const/4 v2, 0x0

    return v2
.end method

.method public clearAll()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public countLists()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getStringId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mszId:Ljava/lang/String;

    return-object v0
.end method

.method public notStayNofication()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setNotificationStayed(Z)V

    goto :goto_23

    :cond_16
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v1, :cond_23

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setNotificationStayed(Z)V

    :cond_23
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2d

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v1, 0x1

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/usb/UsbNotificationHandler;->access$300(Lcom/android/server/usb/UsbNotificationHandler;III)V

    return-void

    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public push(Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_19

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v4, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;->access$300(Lcom/android/server/usb/UsbNotificationHandler;III)V

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public reflash()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->clearNotification()V

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_25

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v3, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->access$300(Lcom/android/server/usb/UsbNotificationHandler;III)V

    return-void

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public remove()V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->checkVaild()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->clearNotification()V

    const/4 v0, 0x0

    :cond_1c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    monitor-exit v1

    goto :goto_28

    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw v2

    :cond_28
    :goto_28
    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v4, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;->access$300(Lcom/android/server/usb/UsbNotificationHandler;III)V

    :cond_33
    return-void
.end method

.method public update()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->pop()Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    move-result-object v0

    if-eqz v0, :cond_16

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setObserverNotification()V

    goto :goto_23

    :cond_16
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unit is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    :goto_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_8f

    :try_start_26
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mCurrentNoficationUnit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->getNotificationStayed()Z

    move-result v1

    if-nez v1, :cond_8a

    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    const-wide/16 v5, 0xbb8

    add-long/2addr v3, v5

    sub-long v3, v1, v3

    iget-object v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send the timeout : current  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", vailed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", displayed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mDisplayedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x2

    if-gez v5, :cond_82

    iget-object v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    iget v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const-wide/16 v8, -0x1

    mul-long/2addr v8, v3

    long-to-int v8, v8

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/usb/UsbNotificationHandler;->access$300(Lcom/android/server/usb/UsbNotificationHandler;III)V

    goto :goto_8a

    :cond_82
    iget-object v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    iget v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->mId:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/usb/UsbNotificationHandler;->access$300(Lcom/android/server/usb/UsbNotificationHandler;III)V

    :cond_8a
    :goto_8a
    monitor-exit v0

    goto :goto_90

    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_26 .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v1
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8f} :catch_8f

    :catch_8f
    move-exception v0

    :goto_90
    return-void
.end method
