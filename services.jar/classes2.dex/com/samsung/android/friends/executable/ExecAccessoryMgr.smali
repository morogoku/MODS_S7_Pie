.class public Lcom/samsung/android/friends/executable/ExecAccessoryMgr;
.super Ljava/lang/Object;
.source "ExecAccessoryMgr.java"

# interfaces
.implements Lcom/samsung/android/friends/action/ActionExecutable;
.implements Lcom/samsung/android/friends/common/Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecAccessoryMgr"

.field private static final USE_ACCESSORY_KEY_WITH_EXTRA_DATA:Z = false


# instance fields
.field private final mAccessories:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasMappedAccessory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mLastVerificationId:Ljava/lang/String;

.field private final mLogger:Lcom/samsung/android/friends/common/Logger;

.field private final mSvcOperation:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/friends/common/Logger;Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;Ljava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/friends/common/Logger;",
            "Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    iput-object p2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mSvcOperation:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mHasMappedAccessory:Ljava/util/function/Function;

    return-void
.end method

.method private static getAccessoryKey([B[B)Ljava/lang/String;
    .registers 4

    move-object v0, p0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getHexString([BII)Ljava/lang/String;
    .registers 10

    add-int v0, p1, p2

    const/4 v1, 0x0

    if-eqz p0, :cond_3f

    array-length v2, p0

    if-ge v2, v0, :cond_9

    goto :goto_3f

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, p1

    :goto_f
    if-ge v3, v0, :cond_2b

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    mul-int/lit8 v4, p2, 0x2

    if-eq v3, v4, :cond_34

    return-object v1

    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3f
    :goto_3f
    return-object v1
.end method

.method private static getLength([B)I
    .registers 2

    if-eqz p0, :cond_4

    array-length v0, p0

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0
.end method

.method private getMappedAccessoryId(Ljava/lang/String;[[B)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;

    nop

    :cond_23
    if-eqz v3, :cond_5b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    # getter for: Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->access$300(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    # getter for: Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->access$000(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_53

    if-eqz p2, :cond_53

    array-length v4, p2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_53

    const/4 v4, 0x0

    const-string v5, "data"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, p2, v4

    const/4 v4, 0x1

    const-string v5, "extraData"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, p2, v4

    :cond_53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    monitor-exit v0

    return-object v4

    :cond_5b
    goto :goto_d

    :cond_5c
    monitor-exit v0

    return-object v3

    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private handleAccessoryStateChanged(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v1, "attached"

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v1, "data"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "extraData"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v13, 0x1

    if-eqz v1, :cond_199

    array-length v3, v1

    if-nez v3, :cond_23

    move-object/from16 v19, v1

    goto/16 :goto_19b

    :cond_23
    const/4 v3, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B[B)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v5, 0x0

    const v6, 0x110001

    if-eq v7, v6, :cond_4d

    const v6, 0x12000a

    if-eq v7, v6, :cond_42

    const v6, 0x140001

    if-eq v7, v6, :cond_42

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    goto/16 :goto_106

    :cond_42
    const/4 v5, 0x1

    nop

    :goto_44
    move-object/from16 v19, v1

    move-object v12, v2

    move-object/from16 v20, v3

    move-object v11, v4

    move v9, v5

    goto/16 :goto_109

    :cond_4d
    iget-object v6, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mHasMappedAccessory:Ljava/util/function/Function;

    if-eqz v6, :cond_102

    if-eqz v10, :cond_bb

    iget-object v6, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mHasMappedAccessory:Ljava/util/function/Function;

    invoke-interface {v6, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    if-eqz v6, :cond_ba

    const-string v11, "data"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    if-eqz v11, :cond_75

    array-length v12, v11

    if-lez v12, :cond_75

    invoke-static {v1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-nez v12, :cond_75

    move-object v1, v11

    const-string v12, "data"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v5, 0x1

    :cond_75
    const-string v12, "extraData"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    if-eqz v11, :cond_8d

    array-length v12, v11

    if-lez v12, :cond_8d

    invoke-static {v2, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-nez v12, :cond_8d

    move-object v2, v11

    const-string v12, "extraData"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v5, 0x1

    :cond_8d
    if-eqz v5, :cond_b6

    move-object v3, v4

    invoke-static {v1, v2}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B[B)Ljava/lang/String;

    move-result-object v4

    iget-object v12, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string v9, "ExecAccessoryMgr"

    move-object/from16 v16, v1

    const-string/jumbo v1, "mapped accessory %s true"

    move-object/from16 v17, v2

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v13, 0x0

    aput-object v18, v2, v13

    invoke-static {v9, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-interface {v12, v14, v15, v1, v2}, Lcom/samsung/android/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_ba

    :cond_b6
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    :cond_ba
    :goto_ba
    goto :goto_44

    :cond_bb
    const/4 v6, 0x2

    new-array v9, v6, [[B

    invoke-direct {v0, v4, v9}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getMappedAccessoryId(Ljava/lang/String;[[B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_102

    const/4 v11, 0x0

    aget-object v12, v9, v11

    if-eqz v12, :cond_102

    move-object v4, v6

    const-string v12, "data"

    aget-object v13, v9, v11

    invoke-virtual {v8, v12, v13}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v11, "extraData"

    const/4 v12, 0x1

    aget-object v13, v9, v12

    invoke-virtual {v8, v11, v13}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v5, 0x1

    iget-object v11, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string v13, "ExecAccessoryMgr"

    move-object/from16 v19, v1

    const-string/jumbo v1, "mapped accessory %s false"

    move-object/from16 v20, v3

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v4

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-static {v13, v1, v3}, Lcom/samsung/android/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v11, v14, v15, v1, v3}, Lcom/samsung/android/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    move-object v12, v2

    move v9, v5

    move-object/from16 v11, v21

    goto :goto_109

    :cond_102
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    :goto_106
    move-object v12, v2

    move-object v11, v4

    move v9, v5

    :goto_109
    if-eqz v9, :cond_11d

    const-string/jumbo v1, "paramStr0"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->setLastVerificationId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11d
    const-string/jumbo v1, "timeStamp"

    invoke-virtual {v8, v1, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "paramInt0"

    invoke-virtual {v8, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    nop

    if-eqz v10, :cond_139

    new-instance v13, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;

    const/4 v6, 0x0

    move-object v1, v13

    move v2, v7

    move v3, v9

    move-object v4, v8

    move-object/from16 v5, v20

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(IZLandroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/friends/executable/ExecAccessoryMgr$1;)V

    goto :goto_13a

    :cond_139
    const/4 v13, 0x0

    :goto_13a
    invoke-direct {v0, v11, v13}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->update(Ljava/lang/String;Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_169

    iget-object v1, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string v3, "ExecAccessoryMgr"

    const-string v4, "ignored due to failure of updating accessory state: %s %s 0x%x"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v11}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v2, v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x2

    aput-object v5, v2, v13

    invoke-static {v3, v4, v2}, Lcom/samsung/android/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v14, v15, v2, v3}, Lcom/samsung/android/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1

    :cond_169
    const/4 v6, 0x0

    iget-object v1, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string v3, "ExecAccessoryMgr"

    const-string v4, "accessory state changed: %s %s 0x%x"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v11}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v2, v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x2

    aput-object v5, v2, v13

    invoke-static {v3, v4, v2}, Lcom/samsung/android/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v14, v15, v2, v3}, Lcom/samsung/android/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mSvcOperation:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    const v2, 0x210001

    invoke-interface {v1, v2, v8}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;->perform(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_199
    move-object/from16 v19, v1

    :goto_19b
    iget-object v1, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string v3, "ExecAccessoryMgr"

    const-string/jumbo v4, "wrong parameter %s %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-static {v2}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getLength([B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v5, v11

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private handleGetAccessoryList()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$MIBLFp5qnsjcSjjzYsGKI6D3dqI;->INSTANCE:Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$MIBLFp5qnsjcSjjzYsGKI6D3dqI;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$lALTGgvRRoLaqDg0BfXmq_Dk-rU;->INSTANCE:Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$lALTGgvRRoLaqDg0BfXmq_Dk-rU;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v2

    const-string v3, "accessoryList"

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method private handleHasAccessory(Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, "extraData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->hasAccessory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private handleVerifyFakeAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLastVerificationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLastVerificationId:Ljava/lang/String;

    const-string/jumbo v1, "paramStr0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private isAccessibleAction(I)Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;

    if-eqz v3, :cond_24

    # getter for: Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I
    invoke-static {v3}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->access$100(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v4

    if-eq v4, p1, :cond_24

    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    goto :goto_e

    :cond_25
    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_33

    if-nez v0, :cond_32

    const-string v1, "ExecAccessoryMgr"

    const-string v2, "action[0x%x] is denied !!!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_32
    return v0

    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method public static synthetic lambda$MIBLFp5qnsjcSjjzYsGKI6D3dqI(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$handleGetAccessoryList$0(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;
    .registers 2

    # getter for: Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->access$000(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private setLastVerificationId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLastVerificationId:Ljava/lang/String;

    return-object p1
.end method

.method private update(Ljava/lang/String;Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Z
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p2, :cond_19

    if-nez v2, :cond_21

    iget-object v3, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_21

    :cond_19
    if-eqz v2, :cond_21

    iget-object v3, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_21
    :goto_21
    monitor-exit v1

    return v0

    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v2
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 9

    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_52

    goto :goto_50

    :sswitch_5
    const-string v1, "ExecAccessoryMgr"

    const-string v2, "ActionHasAccessory"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->handleHasAccessory(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_17
    const-string v1, "ExecAccessoryMgr"

    const-string v2, "ActionVerifyFakeAccessory"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->handleVerifyFakeAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_25
    const-string v1, "ExecAccessoryMgr"

    const-string v2, "ActionGetAccessory"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->handleGetAccessoryList()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_33
    const-string v1, "ExecAccessoryMgr"

    const-string v2, "ActionAccessoryStateChanged 0x%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_50

    invoke-direct {p0, p3}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->isAccessibleAction(I)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->handleAccessoryStateChanged(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_50
    :goto_50
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_52
    .sparse-switch
        0x110001 -> :sswitch_33
        0x120001 -> :sswitch_25
        0x12000a -> :sswitch_33
        0x120012 -> :sswitch_17
        0x140001 -> :sswitch_33
        0x140002 -> :sswitch_5
    .end sparse-switch
.end method

.method public executeOnSameThread(I)Z
    .registers 3

    const v0, 0x140001

    if-eq p1, v0, :cond_11

    const v0, 0x110001

    if-eq p1, v0, :cond_11

    const v0, 0x12000a

    if-eq p1, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public getAccessoryCount()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

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

.method public getDump(Ljava/lang/StringBuilder;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "\n---- active accessory info.\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_c
    iget-object v0, v1, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v4, :cond_25

    goto :goto_16

    :cond_25
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;

    if-eqz v5, :cond_32

    # getter for: Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;
    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->access$000(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_33

    :cond_32
    const/4 v6, 0x0

    :goto_33
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v5, :cond_16

    if-nez v7, :cond_3e

    goto :goto_16

    :cond_3e
    const-string/jumbo v8, "timeStamp"

    const-wide/16 v9, -0x1

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_50

    invoke-static {v11, v12}, Lcom/samsung/android/friends/util/LogFrs;->getDateString(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_56

    :cond_50
    const/16 v8, 0x2d

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    :goto_56
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I
    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->access$100(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v8

    const v9, 0x110001

    const/4 v10, 0x0

    const/4 v13, 0x1

    if-eq v8, v9, :cond_85

    const-string v8, " [0x%x]"

    new-array v9, v13, [Ljava/lang/Object;

    # getter for: Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I
    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->access$100(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v10

    invoke-static {v8, v9}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_85
    # getter for: Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mVerifyRequired:Z
    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->access$200(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Z

    move-result v8

    if-eqz v8, :cond_a0

    # getter for: Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->access$300(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9b

    const-string v8, " M"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    :cond_9b
    const-string v8, " *"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a0
    :goto_a0
    const/4 v8, 0x2

    new-array v8, v8, [[B

    const-string v9, "data"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v8, v10

    const-string v9, "extraData"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v8, v13

    const-string v9, "\n\tdata: "

    const-string v13, "\n\textra: "

    filled-new-array {v9, v13}, [Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    array-length v14, v8

    move v15, v13

    move v13, v10

    :goto_bf
    if-ge v13, v14, :cond_ee

    aget-object v16, v8, v13

    move-object/from16 v17, v16

    move-object/from16 v10, v17

    if-eqz v10, :cond_e1

    move-object/from16 v18, v0

    array-length v0, v10

    if-lez v0, :cond_e3

    aget-object v0, v9, v15

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v10

    const/4 v1, 0x0

    invoke-static {v10, v1, v0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getHexString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e4

    :cond_e1
    move-object/from16 v18, v0

    :cond_e3
    const/4 v1, 0x0

    :goto_e4
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, 0x1

    move v10, v1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    goto :goto_bf

    :cond_ee
    move-object/from16 v18, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    nop

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    goto/16 :goto_16

    :cond_fc
    monitor-exit v3

    return-void

    :catchall_fe
    move-exception v0

    monitor-exit v3
    :try_end_100
    .catchall {:try_start_c .. :try_end_100} :catchall_fe

    throw v0
.end method

.method public hasAccessory(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

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

.method public preExecute(Landroid/os/Bundle;II)Z
    .registers 6

    const/4 v0, 0x1

    const v1, 0x110001

    if-eq p3, v1, :cond_11

    const v1, 0x12000a

    if-eq p3, v1, :cond_11

    const v1, 0x140001

    if-eq p3, v1, :cond_11

    goto :goto_15

    :cond_11
    invoke-direct {p0, p3}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->isAccessibleAction(I)Z

    move-result v0

    :goto_15
    return v0
.end method
