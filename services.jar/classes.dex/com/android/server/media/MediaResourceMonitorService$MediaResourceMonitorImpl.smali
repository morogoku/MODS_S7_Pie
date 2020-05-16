.class Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
.super Landroid/media/IMediaResourceMonitor$Stub;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaResourceMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaResourceMonitorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaResourceMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaResourceMonitorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-direct {p0}, Landroid/media/IMediaResourceMonitor$Stub;-><init>()V

    return-void
.end method

.method private getErrorType(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_14

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_7
    const-string v0, "Resolution Limit"

    return-object v0

    :pswitch_a
    const-string v0, "Unsupported Codec"

    return-object v0

    :pswitch_d
    const-string v0, "Invalid File"

    return-object v0

    :pswitch_10
    const-string v0, "No Error"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private getMediaType(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_18

    const-string/jumbo v0, "unKnown"

    return-object v0

    :pswitch_7
    const-string v0, "Hyper Motion"

    return-object v0

    :pswitch_a
    const-string v0, "Fast Motion"

    return-object v0

    :pswitch_d
    const-string v0, "Slow Motion"

    return-object v0

    :pswitch_10
    const-string v0, "SECRecording"

    return-object v0

    :pswitch_13
    const-string v0, "NonSECRecording"

    return-object v0

    nop

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private getPackageNamesFromPid(I)[Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1f

    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_21

    return-object v0

    :cond_1f
    goto :goto_c

    :cond_20
    goto :goto_29

    :catch_21
    move-exception v0

    const-string v1, "MediaResourceMonitor"

    const-string v2, "ActivityManager.getRunningAppProcesses() failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private getProtocolType(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_14

    const-string/jumbo v0, "unKnown"

    return-object v0

    :pswitch_7
    const-string v0, "RTSP"

    return-object v0

    :pswitch_a
    const-string v0, "HLS"

    return-object v0

    :pswitch_d
    const-string v0, "HTTP"

    return-object v0

    :pswitch_10
    const-string v0, "LocalPlayback"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public checkVersionOfDMA(Landroid/content/Context;)Z
    .registers 9

    const-string v0, "com.sec.android.diagmonagent"

    const v1, 0x202fbf00

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v4, "MediaResourceMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dma version code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_2e

    if-lt v4, v1, :cond_2d

    const/4 v2, 0x1

    nop

    :cond_2d
    return v2

    :catch_2e
    move-exception v3

    const-string v4, "MediaResourceMonitor"

    const-string v5, "MediaInfo DMA failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public notifyMediaError(ILjava/lang/String;IILjava/lang/String;)V
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const-string v8, ", "
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_144
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_135
    .catchall {:try_start_c .. :try_end_13} :catchall_131

    move/from16 v9, p3

    :try_start_15
    invoke-direct {v1, v9}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getErrorType(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_20

    const/4 v11, 0x0

    aget-object v11, v0, v11

    move-object v7, v11

    goto :goto_24

    :cond_20
    const-string/jumbo v11, "no Package"

    move-object v7, v11

    :goto_24
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$100()Z

    move-result v12

    if-eqz v12, :cond_8a

    const-string v12, "MediaResourceMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "notifyMediaError (package="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", mime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", errorType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", fourcc="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", errorDetails="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$200()Z

    move-result v12

    if-eqz v12, :cond_128

    iget-object v12, v1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v12}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->checkVersionOfDMA(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_dc

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v13, "tracking_id"

    const-string v14, "4H9-399-505457"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "feature"

    const-string v14, "MMER"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "extra"

    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "type"

    const-string/jumbo v14, "ev"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string v14, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v14, "com.sec.android.diagmonagent"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v14}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_128

    :cond_dc
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "app_id"

    const-string v14, "MMFW"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "feature"

    const-string v14, "MMER"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "extra"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "data"

    invoke-virtual {v13, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v28

    move-object/from16 v17, v13

    invoke-interface/range {v15 .. v28}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_128
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_128} :catch_12f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_128} :catch_12d
    .catchall {:try_start_15 .. :try_end_128} :catchall_153

    :cond_128
    :goto_128
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catch_12d
    move-exception v0

    goto :goto_138

    :catch_12f
    move-exception v0

    goto :goto_147

    :catchall_131
    move-exception v0

    move/from16 v9, p3

    goto :goto_154

    :catch_135
    move-exception v0

    move/from16 v9, p3

    :goto_138
    :try_start_138
    const-string v7, "MediaResourceMonitor"

    const-string/jumbo v8, "sendBroadcast fail"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_138 .. :try_end_140} :catchall_153

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_144
    move-exception v0

    move/from16 v9, p3

    :goto_147
    :try_start_147
    const-string v7, "MediaResourceMonitor"

    const-string/jumbo v8, "sendBroadcast(ClassCastException) fail"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catchall {:try_start_147 .. :try_end_14f} :catchall_153

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_153
    move-exception v0

    :goto_154
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public notifyMediaInfo(ILjava/lang/String;IIJ)V
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getProtocolType(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v4}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getMediaType(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, ", "

    if-eqz v0, :cond_24

    const/4 v13, 0x0

    aget-object v13, v0, v13

    move-object v11, v13

    goto :goto_28

    :cond_24
    const-string/jumbo v13, "no Package"

    move-object v11, v13

    :goto_28
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_8f

    const-string v14, "MediaResourceMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "notifyMediaInfo (pid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5b
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_5b} :catch_15f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_5b} :catch_150
    .catchall {:try_start_e .. :try_end_5b} :catchall_14c

    move-object/from16 v17, v9

    move/from16 v9, p1

    :try_start_5f
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", protocol="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mediaType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", playTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :cond_8f
    move-object/from16 v16, v0

    move-object/from16 v17, v9

    move/from16 v9, p1

    :goto_95
    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_143

    iget-object v0, v1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->checkVersionOfDMA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ed

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v14, "tracking_id"

    const-string v15, "4H9-399-505457"

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "feature"

    const-string v15, "MMIF"

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "extra"

    invoke-virtual {v0, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "value"

    invoke-virtual {v0, v14, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v14, "type"

    const-string/jumbo v15, "ev"

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v15, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v14, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v15, "com.sec.android.diagmonagent"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v15, v1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v15}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_143

    :cond_ed
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "app_id"

    const-string v15, "MMFW"

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "feature"

    const-string v15, "MMIF"

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "extra"

    invoke-virtual {v0, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "value"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "data"

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v31

    move-object/from16 v20, v14

    invoke-interface/range {v18 .. v31}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_143
    .catch Ljava/lang/ClassCastException; {:try_start_5f .. :try_end_143} :catch_14a
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_143} :catch_148
    .catchall {:try_start_5f .. :try_end_143} :catchall_16e

    :cond_143
    :goto_143
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catch_148
    move-exception v0

    goto :goto_153

    :catch_14a
    move-exception v0

    goto :goto_162

    :catchall_14c
    move-exception v0

    move/from16 v9, p1

    goto :goto_16f

    :catch_150
    move-exception v0

    move/from16 v9, p1

    :goto_153
    :try_start_153
    const-string v10, "MediaResourceMonitor"

    const-string/jumbo v11, "sendBroadcast fail"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catchall {:try_start_153 .. :try_end_15b} :catchall_16e

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_15f
    move-exception v0

    move/from16 v9, p1

    :goto_162
    :try_start_162
    const-string v10, "MediaResourceMonitor"

    const-string/jumbo v11, "sendBroadcast(ClassCastException) fail"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16a
    .catchall {:try_start_162 .. :try_end_16a} :catchall_16e

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16e
    move-exception v0

    :goto_16f
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public notifyResourceGranted(II)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    iget-object v1, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    # setter for: Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0, v1}, Lcom/android/server/media/MediaResourceMonitorService;->access$002(Lcom/android/server/media/MediaResourceMonitorService;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/media/MediaResourceMonitorService;->access$000(Lcom/android/server/media/MediaResourceMonitorService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "MediaResourceMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyResourceGranted(pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4c
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_a5

    if-nez v2, :cond_56

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_56
    :try_start_56
    iget-object v3, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    if-eqz v4, :cond_a1

    array-length v5, v4

    if-nez v5, :cond_73

    goto :goto_a1

    :cond_73
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.extra.PACKAGES"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_86
    if-ge v7, v6, :cond_9c

    aget v8, v4, v7

    iget-object v9, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v9}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const-string v11, "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

    invoke-virtual {v9, v5, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_56 .. :try_end_99} :catchall_a5

    add-int/lit8 v7, v7, 0x1

    goto :goto_86

    :cond_9c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :cond_a1
    :goto_a1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_a5
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
