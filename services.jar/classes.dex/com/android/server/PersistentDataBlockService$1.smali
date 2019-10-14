.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method

.method private enforcePersistentDataBlockAccess()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1600(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    :cond_17
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 6

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_46

    nop

    nop

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_32
    .catchall {:try_start_1b .. :try_end_22} :catchall_30

    :try_start_22
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v3, v1}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2d

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v3
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_30} :catch_32
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    goto :goto_42

    :catch_32
    move-exception v2

    :try_start_33
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "error reading data block size"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_30

    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_42
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_46
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "partition not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getFlashLockState()I
    .registers 6

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1400(Lcom/android/server/PersistentDataBlockService;)V

    const-string/jumbo v0, "ro.boot.flash.locked"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_34

    goto :goto_2b

    :pswitch_17
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v3

    goto :goto_2c

    :pswitch_21
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v1, v4

    :goto_2c
    packed-switch v1, :pswitch_data_3c

    return v4

    :pswitch_30
    return v3

    :pswitch_31
    return v2

    nop

    nop

    :pswitch_data_34
    .packed-switch 0x30
        :pswitch_21
        :pswitch_17
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
    .end packed-switch
.end method

.method public getMaximumDataBlockSize()J
    .registers 3

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doGetMaximumDataBlockSize()J
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOemUnlockEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1400(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public hasFrpCredentialHandle()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    :try_start_3
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1700(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_d} :catch_13

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "error reading frp handle"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "cannot read frp credential"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEnabled()Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_2e

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not allowed to access PST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2e
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v2

    if-nez v2, :cond_37

    return v3

    :cond_37
    :try_start_37
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_4c} :catch_ba

    nop

    nop

    :try_start_4e
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_55} :catch_8d
    .catchall {:try_start_4e .. :try_end_55} :catchall_8b

    :try_start_55
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$1;->getOemUnlockEnabled()Z

    move-result v5

    move v0, v5

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v5, v2}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v5

    move v1, v5

    if-lez v1, :cond_77

    if-nez v0, :cond_77

    const/4 v5, 0x1

    monitor-exit v4
    :try_end_67
    .catchall {:try_start_55 .. :try_end_67} :catchall_88

    :try_start_67
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_76

    :catch_6b
    move-exception v3

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    return v5

    :cond_77
    :try_start_77
    monitor-exit v4
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_88

    :try_start_78
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_87

    :catch_7c
    move-exception v4

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_87
    return v3

    :catchall_88
    move-exception v5

    :try_start_89
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v5
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8b} :catch_8d
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v3

    goto :goto_a9

    :catch_8d
    move-exception v4

    :try_start_8e
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to read statues"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_8e .. :try_end_98} :catchall_8b

    nop

    :try_start_99
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_a8

    :catch_9d
    move-exception v5

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a8
    return v3

    :goto_a9
    nop

    :try_start_aa
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_b9

    :catch_ae
    move-exception v4

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b9
    throw v3

    :catch_ba
    move-exception v2

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public read()[B
    .registers 10

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    new-array v0, v1, [B

    return-object v0

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2b} :catch_cc

    nop

    nop

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_9f
    .catchall {:try_start_2d .. :try_end_34} :catchall_9d

    :try_start_34
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v4, v2}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v4

    if-nez v4, :cond_4f

    new-array v1, v1, [B

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_9a

    :try_start_3f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_4e

    :catch_43
    move-exception v0

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "failed to close OutputStream"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return-object v1

    :cond_4f
    :try_start_4f
    new-array v5, v4, [B

    invoke-virtual {v2, v5, v1, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    if-ge v1, v4, :cond_89

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "failed to read entire data block. bytes read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_4f .. :try_end_79} :catchall_9a

    :try_start_79
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_88

    :catch_7d
    move-exception v3

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    return-object v0

    :cond_89
    :try_start_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_9a

    :try_start_8a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_99

    :catch_8e
    move-exception v0

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_99
    return-object v5

    :catchall_9a
    move-exception v1

    :try_start_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v1
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9d} :catch_9f
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception v0

    goto :goto_bb

    :catch_9f
    move-exception v1

    :try_start_a0
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "failed to read data"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_9d

    nop

    :try_start_ab
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_ba

    :catch_af
    move-exception v3

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "failed to close OutputStream"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    return-object v0

    :goto_bb
    nop

    :try_start_bc
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_cb

    :catch_c0
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "failed to close OutputStream"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cb
    throw v0

    :catch_cc
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "partition not available?"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockWritePermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$900(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceIsAdmin()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1100(Lcom/android/server/PersistentDataBlockService;)V

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_oem_unlock"

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$1200(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_factory_reset"

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$1200(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    :cond_23
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2a
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V
    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->access$1300(Lcom/android/server/PersistentDataBlockService;Z)V

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v1
.end method

.method public wipe()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockWritePermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$900(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/android/server/PersistentDataBlockService;->access$1000(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_25

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "failed to wipe persistent partition"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_25
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z
    invoke-static {v2, v3}, Lcom/android/server/PersistentDataBlockService;->access$502(Lcom/android/server/PersistentDataBlockService;Z)Z

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persistent partition now wiped and unwritable"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_37

    throw v1
.end method

.method public write([B)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doGetMaximumDataBlockSize()J
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_18

    neg-long v2, v0

    long-to-int v2, v2

    return v2

    :cond_18
    const/4 v2, -0x1

    :try_start_19
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2e} :catch_95

    nop

    nop

    array-length v4, p1

    add-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const v5, 0x19901873

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_4b
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-nez v6, :cond_58

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v5
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_92

    return v2

    :cond_58
    const/16 v6, 0x20

    :try_start_5a
    new-array v7, v6, [B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6a} :catch_7d
    .catchall {:try_start_5a .. :try_end_6a} :catchall_7b

    :try_start_6a
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-eqz v6, :cond_79

    array-length v2, p1

    monitor-exit v5

    return v2

    :cond_79
    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_6a .. :try_end_7a} :catchall_92

    return v2

    :catchall_7b
    move-exception v2

    goto :goto_8e

    :catch_7d
    move-exception v6

    :try_start_7e
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "failed writing to the persistent data block"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_7b

    nop

    :try_start_89
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v5

    return v2

    :goto_8e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :catchall_92
    move-exception v2

    monitor-exit v5
    :try_end_94
    .catchall {:try_start_89 .. :try_end_94} :catchall_92

    throw v2

    :catch_95
    move-exception v3

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method
