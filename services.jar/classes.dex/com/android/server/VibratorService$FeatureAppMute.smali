.class Lcom/android/server/VibratorService$FeatureAppMute;
.super Lcom/android/server/VibratorService$SecFeature;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureAppMute"
.end annotation


# instance fields
.field private mAppList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/VibratorService$FeatureAppMute;->this$0:Lcom/android/server/VibratorService;

    const-string v0, "FeatureAppMute"

    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService$SecFeature;-><init>(Lcom/android/server/VibratorService;Ljava/lang/String;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/server/VibratorService$FeatureAppMute;->update()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "VibratorService"

    const-string v0, "VibrationAppList is created sucessfully."

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_1c
    const-string p1, "VibratorService"

    const-string v0, "VibrationAppList is not created."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/server/VibratorService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_6
    const-string v1, "    Info:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mute="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public isMute(I)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/VibratorService$FeatureAppMute;->isOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_a
    iget-object v2, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_20

    iget-object v1, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_20
    monitor-exit v0

    return v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    return v1
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    invoke-virtual {p0}, Lcom/android/server/VibratorService$FeatureAppMute;->off()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/VibratorService$FeatureAppMute;->setUri(Landroid/net/Uri;)V

    return-void

    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public update()Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_be

    const/4 v2, 0x0

    :try_start_a
    iget-object v3, p0, Lcom/android/server/VibratorService$FeatureAppMute;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/VibratorService$FeatureAppMute;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_3b

    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update, cur.getCount() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_3b
    const-string v3, "VibratorService"

    const-string/jumbo v4, "update, cur is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    const/4 v3, 0x1

    if-eqz v1, :cond_8f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    const-string/jumbo v4, "uid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v5, "mute"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_65

    goto :goto_66

    :cond_65
    move v3, v2

    :goto_66
    iget-object v5, p0, Lcom/android/server/VibratorService$FeatureAppMute;->mAppList:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mList.put(uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", on:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_8e} :catch_98
    .catchall {:try_start_a .. :try_end_8e} :catchall_96

    goto :goto_43

    :cond_8f
    if-eqz v1, :cond_94

    :try_start_91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_be

    return v3

    :catchall_96
    move-exception v2

    goto :goto_b8

    :catch_98
    move-exception v3

    :try_start_99
    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_99 .. :try_end_b0} :catchall_96

    nop

    if-eqz v1, :cond_b6

    :try_start_b3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b6
    monitor-exit v0

    return v2

    :goto_b8
    if-eqz v1, :cond_bd

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bd
    throw v2

    :catchall_be
    move-exception v1

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_b3 .. :try_end_c0} :catchall_be

    throw v1
.end method
