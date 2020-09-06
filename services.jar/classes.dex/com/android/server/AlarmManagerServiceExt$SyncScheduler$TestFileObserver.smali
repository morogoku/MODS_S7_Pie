.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;
.super Landroid/os/FileObserver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestFileObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private cmd(CLjava/lang/String;I)V
    .registers 7

    :try_start_0
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_15

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_11

    goto :goto_19

    :cond_11
    invoke-interface {v0, p2, p3}, Lcom/android/server/AlarmManagerInternal;->disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z

    goto :goto_19

    :cond_15
    invoke-interface {v0, p2, p3}, Lcom/android/server/AlarmManagerInternal;->enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    nop

    :goto_19
    goto :goto_22

    :catch_1a
    move-exception v0

    const-string v1, "AlarmManagerEXT"

    const-string v2, "Test module Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method private parseUserId(Ljava/lang/String;)I
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    const/high16 v1, -0x80000000

    return v1
.end method

.method private readFile(Ljava/lang/String;)V
    .registers 12

    if-nez p1, :cond_a

    const-string v0, "AlarmManagerEXT"

    const-string v1, "PATH NULL on readFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "AlarmManagerEXT"

    const-string v2, "No exist test interface file : /data/system/app_sync_log_enable on readFile"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1f
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v3

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    :goto_2b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_9a

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_53

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to read line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_53
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->parseUserId(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_75

    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_68

    goto :goto_75

    :cond_68
    aget-object v7, v3, v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->cmd(CLjava/lang/String;I)V

    goto :goto_2b

    :cond_75
    :goto_75
    const-string v7, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fail to read datas "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_99} :catch_b5
    .catchall {:try_start_1f .. :try_end_99} :catchall_b3

    goto :goto_2b

    :cond_9a
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_a6

    :catch_9e
    move-exception v3

    const-string v4, "AlarmManagerEXT"

    const-string v5, "Test module : br"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a6
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_d0

    :catch_aa
    move-exception v3

    const-string v4, "AlarmManagerEXT"

    const-string v5, "Test module : fr"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d0

    :catchall_b3
    move-exception v3

    goto :goto_d1

    :catch_b5
    move-exception v3

    :try_start_b6
    const-string v4, "AlarmManagerEXT"

    const-string v5, "Test module"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_b3

    if-eqz v2, :cond_cb

    :try_start_bf
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_cb

    :catch_c3
    move-exception v3

    const-string v4, "AlarmManagerEXT"

    const-string v5, "Test module : br"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cb
    :goto_cb
    if-eqz v1, :cond_d0

    :try_start_cd
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_aa

    :cond_d0
    :goto_d0
    return-void

    :goto_d1
    if-eqz v2, :cond_df

    :try_start_d3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_df

    :catch_d7
    move-exception v4

    const-string v5, "AlarmManagerEXT"

    const-string v6, "Test module : br"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_df
    :goto_df
    if-eqz v1, :cond_ed

    :try_start_e1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_e5

    goto :goto_ed

    :catch_e5
    move-exception v4

    const-string v5, "AlarmManagerEXT"

    const-string v6, "Test module : fr"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ed
    :goto_ed
    throw v3
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 6

    const-string v0, "AlarmManagerEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_40

    const/16 v0, 0x200

    if-eq p1, v0, :cond_30

    const/16 v0, 0x400

    if-eq p1, v0, :cond_30

    const/16 v0, 0x800

    if-eq p1, v0, :cond_30

    goto :goto_45

    :cond_30
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3702(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    goto :goto_45

    :cond_40
    const-string v0, "/data/system/app_sync_log_enable"

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->readFile(Ljava/lang/String;)V

    :goto_45
    return-void
.end method
