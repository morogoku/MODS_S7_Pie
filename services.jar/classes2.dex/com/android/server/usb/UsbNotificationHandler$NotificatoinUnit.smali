.class Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
.super Ljava/lang/Object;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificatoinUnit"
.end annotation


# instance fields
.field private mCurrentNofication:Z

.field private final mDismissable:Z

.field private mExpandedIcon1:I

.field private mExpandedIcon2:I

.field private mExpandedIntent1:Landroid/app/PendingIntent;

.field private mExpandedIntent2:Landroid/app/PendingIntent;

.field private mExpandedTitleId1:I

.field private mExpandedTitleId2:I

.field private final mIcon:I

.field private final mId:I

.field private final mMessageId:I

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mStayNofiBar:Z

.field private final mTitleId:I

.field private final mVisible:Z

.field private final mszId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V
    .registers 30

    move-object v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mCurrentNofication:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    iput-object v3, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    iput v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    iput v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    iput v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    iput v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    iput-object v3, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v3, p2

    iput v3, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    move/from16 v4, p3

    iput v4, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    move/from16 v5, p4

    iput v5, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    move/from16 v6, p5

    iput-boolean v6, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mVisible:Z

    move/from16 v7, p6

    iput-boolean v7, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    move-object/from16 v8, p14

    iput-object v8, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mCurrentNofication:Z

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mId:I

    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    move/from16 v11, p9

    iput v11, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    move/from16 v12, p10

    iput v12, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    move/from16 v13, p11

    iput v13, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    move/from16 v14, p12

    iput v14, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    return-void
.end method

.method private declared-synchronized setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V
    .registers 30

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p12

    monitor-enter p0

    if-nez p4, :cond_1a

    :try_start_11
    iget-object v7, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_17

    if-nez v7, :cond_1a

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    goto/16 :goto_171

    :cond_1a
    :try_start_1a
    iget-object v7, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbNotificationHandler;->access$400(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_17

    if-nez v7, :cond_2d

    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    iget-object v8, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v9, 0x0

    if-eqz v8, :cond_60

    if-eqz p4, :cond_60

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->hashCode()I

    move-result v8

    iget-object v10, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v9, v8, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_60
    if-eqz p4, :cond_ff

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v10, p1

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    if-nez v0, :cond_70

    const/4 v12, 0x0

    goto :goto_74

    :cond_70
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    :goto_74
    new-instance v13, Landroid/app/Notification$Builder;

    iget-object v14, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/usb/UsbNotificationHandler;->access$400(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v14

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    invoke-direct {v13, v14, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v13, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v13, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/4 v13, 0x1

    if-eqz p5, :cond_99

    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto :goto_a5

    :cond_99
    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :goto_a5
    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v13, p3

    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    if-eqz v2, :cond_f2

    if-eqz v3, :cond_f2

    const/4 v0, 0x0

    const/4 v9, 0x0

    if-eqz v4, :cond_da

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object v0, v15

    :cond_da
    if-eqz v5, :cond_e1

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object v9, v15

    :cond_e1
    iget-object v4, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v5, p10

    invoke-virtual {v4, v5, v0, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v4, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v16, v0

    move/from16 v0, p11

    invoke-virtual {v4, v0, v9, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_107

    :cond_f2
    move/from16 v5, p10

    move/from16 v0, p11

    if-eqz v2, :cond_fe

    iget-object v4, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_107

    :cond_fe
    goto :goto_107

    :cond_ff
    move/from16 v10, p1

    move/from16 v13, p3

    move/from16 v5, p10

    move/from16 v0, p11

    :goto_107
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget-object v8, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", device = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v4, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    if-eqz p4, :cond_16f

    iget-object v8, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setUsbObserverNotification : notify id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", title = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v4, v8, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_16f
    .catchall {:try_start_2d .. :try_end_16f} :catchall_17

    :cond_16f
    monitor-exit p0

    return-void

    :goto_171
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .registers 14

    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    iget-boolean v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    iget v9, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    iget v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    iget v11, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    iget-object v12, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V

    return-void
.end method

.method public getNotificationStayed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    return v0
.end method

.method public getStringId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setNotificationStayed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    return-void
.end method

.method public setObserverNotification()V
    .registers 14

    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    iget-boolean v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    iget v9, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    iget v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    iget v11, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    iget-object v12, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V

    return-void
.end method
