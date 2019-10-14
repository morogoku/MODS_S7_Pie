.class Lcom/android/server/nextapp/BigData;
.super Ljava/lang/Object;
.source "BigDataService.java"


# static fields
.field private static final DATA_PERIOD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-BigDataService"


# instance fields
.field private appDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/nextapp/AppData;",
            ">;"
        }
    .end annotation
.end field

.field private totalAccuracy:Ljava/lang/String;

.field private totalBenefit:Ljava/lang/String;

.field private totalPreloadRatio:Ljava/lang/String;


# direct methods
.method public constructor <init>(DJDLjava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DJD",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/nextapp/AppData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v6, p1, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/nextapp/BigData;->totalAccuracy:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/nextapp/BigData;->totalBenefit:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    mul-double/2addr v4, p5

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/nextapp/BigData;->totalPreloadRatio:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/nextapp/BigData;->appDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public static SendBigData(Landroid/content/Context;Z)Z
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string v2, "PkgPredictorService-BigDataService"

    const-string v3, "context == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    const-string v2, "HqmManagerService"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SemHqmManager;

    if-nez v2, :cond_20

    const-string v3, "PkgPredictorService-BigDataService"

    const-string/jumbo v4, "get shm == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_20
    invoke-static {}, Lcom/android/server/nextapp/BigData;->getBigData()Lcom/android/server/nextapp/BigData;

    move-result-object v13

    if-nez v13, :cond_2f

    const-string v3, "PkgPredictorService-BigDataService"

    const-string/jumbo v4, "get BigData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2f
    invoke-virtual {v13}, Lcom/android/server/nextapp/BigData;->toStringList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_42

    const-string v3, "PkgPredictorService-BigDataService"

    const-string/jumbo v4, "get BigData list == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_42
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v12, 0x1

    if-lt v3, v12, :cond_a6

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v3, :cond_69

    const-string v3, "PkgPredictorService-BigDataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DWPD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    if-eqz p1, :cond_a6

    const/4 v4, 0x0

    const-string v5, "Sluggish"

    const-string v6, "DWPD"

    const-string/jumbo v7, "ph"

    const-string v8, "0.0"

    const-string/jumbo v9, "sec"

    const-string v10, ""

    const-string v15, ""

    move-object v3, v2

    move-object v11, v1

    move/from16 v16, v12

    move-object v12, v15

    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v4, "PkgPredictorService-BigDataService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send DWPD failed: + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_9e
    const-string v4, "PkgPredictorService-BigDataService"

    const-string v5, "Send DWPD successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_a6
    move/from16 v16, v12

    :goto_a8
    move/from16 v1, v16

    :goto_aa
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_111

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v3, :cond_d9

    const-string v3, "PkgPredictorService-BigDataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAPD item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    if-eqz p1, :cond_10c

    const/4 v4, 0x0

    const-string v5, "Sluggish"

    const-string v6, "NAPD"

    const-string/jumbo v7, "ph"

    const-string v8, "0.0"

    const-string/jumbo v9, "sec"

    const-string v10, ""

    const-string v15, ""

    move-object v3, v2

    move-object v11, v12

    move-object v0, v12

    move-object v12, v15

    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10c

    const-string v4, "PkgPredictorService-BigDataService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send NAPD failed: + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    goto :goto_aa

    :cond_111
    return v16
.end method

.method public static getBigData()Lcom/android/server/nextapp/BigData;
    .registers 57

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->isDBClosed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    const-string v1, "PkgPredictorService-BigDataService"

    const-string/jumbo v3, "get Dataset failed! db is closed!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xf731400

    sub-long v5, v3, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select running_pkg,activity_name,predict_time,apk_version,consume_time,success,is_preloaded from "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/nextapp/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " where launch_time > "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " and launch_time < "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/nextapp/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_169

    :goto_50
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_169

    const-string/jumbo v8, "running_pkg"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "activity_name"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "apk_version"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "predict_time"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v11, "consume_time"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string/jumbo v11, "success"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string/jumbo v11, "is_preloaded"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-ltz v17, :cond_157

    const/4 v11, -0x1

    if-eq v15, v11, :cond_157

    const-string/jumbo v11, "unknown"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b8

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v22, v14

    move/from16 v23, v15

    goto/16 :goto_15f

    :cond_b8
    const-string v11, "\\."

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v11, 0x1

    if-eqz v13, :cond_c8

    array-length v12, v13

    if-lez v12, :cond_c8

    array-length v12, v13

    sub-int/2addr v12, v11

    aget-object v9, v13, v12

    :cond_c8
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12f

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_112

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/android/server/nextapp/BigData$1ActInfo;

    move-object/from16 v20, v0

    iget v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->successCnt:I

    add-int v0, v0, v18

    iput v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->successCnt:I

    iget v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    add-int/2addr v0, v14

    iput v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    iget v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->predict_time:I

    add-int v0, v0, v17

    iput v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->predict_time:I

    iget v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->cnt:I

    move-object/from16 v21, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->cnt:I

    if-ne v14, v1, :cond_105

    iget v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->hit_consume_time:I

    add-int/2addr v0, v15

    iput v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->hit_consume_time:I

    goto :goto_10a

    :cond_105
    iget v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->nohit_consume_time:I

    add-int/2addr v0, v15

    iput v0, v11, Lcom/android/server/nextapp/BigData$1ActInfo;->nohit_consume_time:I

    :goto_10a
    nop

    move-object/from16 v19, v13

    move/from16 v22, v14

    move/from16 v23, v15

    goto :goto_12e

    :cond_112
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    new-instance v0, Lcom/android/server/nextapp/BigData$1ActInfo;

    move-object v11, v0

    move-object v1, v12

    move-object v12, v10

    move-object/from16 v19, v13

    move/from16 v13, v17

    move/from16 v22, v14

    move v14, v15

    move/from16 v23, v15

    move/from16 v15, v18

    move/from16 v16, v22

    invoke-direct/range {v11 .. v16}, Lcom/android/server/nextapp/BigData$1ActInfo;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v1, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12e
    goto :goto_153

    :cond_12f
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v19, v13

    move/from16 v22, v14

    move/from16 v23, v15

    new-instance v0, Lcom/android/server/nextapp/BigData$1ActInfo;

    move-object v11, v0

    move-object v12, v10

    move/from16 v13, v17

    move/from16 v14, v23

    move/from16 v15, v18

    move/from16 v16, v22

    invoke-direct/range {v11 .. v16}, Lcom/android/server/nextapp/BigData$1ActInfo;-><init>(Ljava/lang/String;IIII)V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_153
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_163

    :cond_157
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v22, v14

    move/from16 v23, v15

    :goto_15f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    nop

    :goto_163
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    goto/16 :goto_50

    :cond_169
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-wide v14, v10

    move v10, v9

    move v9, v8

    move v8, v1

    move v1, v0

    const/4 v0, 0x0

    :goto_186
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v0, v11, :cond_285

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v30, v2

    move-object/from16 v2, v16

    check-cast v2, Landroid/util/ArrayMap;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v10

    move v10, v1

    const/4 v1, 0x0

    move-wide/from16 v55, v14

    move v14, v8

    move v15, v9

    move/from16 v8, v16

    move/from16 v9, v17

    move-wide/from16 v16, v55

    :goto_1ae
    move-wide/from16 v31, v3

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_25e

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/nextapp/BigData$1ActInfo;

    move-object/from16 v33, v2

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->successCnt:I

    add-int/2addr v8, v2

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->cnt:I

    add-int/2addr v9, v2

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->cnt:I

    add-int/2addr v10, v2

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->successCnt:I

    add-int/2addr v14, v2

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    add-int/2addr v15, v2

    const/4 v2, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move/from16 v34, v2

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->cnt:I

    move-wide/from16 v35, v5

    iget v5, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    if-eq v2, v5, :cond_1eb

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->nohit_consume_time:I

    iget v5, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->cnt:I

    iget v6, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    sub-int/2addr v5, v6

    div-int v22, v2, v5

    :cond_1eb
    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    if-eqz v2, :cond_1f5

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->hit_consume_time:I

    iget v5, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    div-int v19, v2, v5

    :cond_1f5
    if-eqz v19, :cond_206

    if-eqz v22, :cond_206

    sub-int v2, v22, v19

    iget v5, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    add-int v18, v18, v5

    iget v5, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    add-long v16, v16, v5

    goto :goto_208

    :cond_206
    move/from16 v2, v34

    :goto_208
    iget v5, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->successCnt:I

    int-to-double v5, v5

    move/from16 v46, v2

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->cnt:I

    move-object/from16 v47, v7

    move/from16 v48, v8

    int-to-double v7, v2

    div-double/2addr v5, v7

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    int-to-double v7, v2

    iget v2, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->cnt:I

    move/from16 v49, v9

    move/from16 v50, v10

    int-to-double v9, v2

    div-double/2addr v7, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/android/server/nextapp/AppData;

    iget-object v10, v4, Lcom/android/server/nextapp/BigData$1ActInfo;->apk_version:Ljava/lang/String;

    move-object/from16 v37, v9

    move-object/from16 v38, v2

    move-object/from16 v39, v10

    move-wide/from16 v40, v5

    move-wide/from16 v42, v7

    move/from16 v44, v19

    move/from16 v45, v22

    invoke-direct/range {v37 .. v45}, Lcom/android/server/nextapp/AppData;-><init>(Ljava/lang/String;Ljava/lang/String;DDII)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v3, v31

    move-object/from16 v2, v33

    move-wide/from16 v5, v35

    move-object/from16 v7, v47

    move/from16 v8, v48

    move/from16 v9, v49

    move/from16 v10, v50

    goto/16 :goto_1ae

    :cond_25e
    move-object/from16 v33, v2

    move-wide/from16 v35, v5

    move-object/from16 v47, v7

    const-wide/16 v1, 0x0

    if-lez v9, :cond_272

    int-to-double v3, v8

    int-to-double v5, v9

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v13, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_272
    add-int/lit8 v0, v0, 0x1

    move v1, v10

    move v8, v14

    move v9, v15

    move-wide/from16 v14, v16

    move/from16 v10, v18

    move-object/from16 v2, v30

    move-wide/from16 v3, v31

    move-wide/from16 v5, v35

    move-object/from16 v7, v47

    goto/16 :goto_186

    :cond_285
    move-object/from16 v30, v2

    move-wide/from16 v31, v3

    move-wide/from16 v35, v5

    move-object/from16 v47, v7

    invoke-static {v13}, Lcom/android/server/nextapp/BigDataService;->updatePkgAccuracyMap(Ljava/util/HashMap;)V

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v0, :cond_315

    const-string v0, "PkgPredictorService-BigDataService"

    const-string v2, "----------------------------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PkgPredictorService-BigDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "totalCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PkgPredictorService-BigDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "totalSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PkgPredictorService-BigDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "totalPreload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PkgPredictorService-BigDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "totalPreloadedCompNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PkgPredictorService-BigDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "totalBenefit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PkgPredictorService-BigDataService"

    const-string v2, "----------------------------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_315
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    if-lez v1, :cond_328

    int-to-double v6, v8

    move-wide/from16 v51, v2

    int-to-double v2, v1

    div-double/2addr v6, v2

    int-to-double v2, v9

    move-wide/from16 v53, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    move-wide/from16 v51, v6

    goto :goto_32e

    :cond_328
    move-wide/from16 v51, v2

    move-wide/from16 v53, v4

    move-wide/from16 v2, v53

    :goto_32e
    const-wide/16 v4, 0x0

    if-lez v10, :cond_335

    int-to-long v6, v10

    div-long v4, v14, v6

    :cond_335
    new-instance v0, Lcom/android/server/nextapp/BigData;

    move-object/from16 v22, v0

    move-wide/from16 v23, v51

    move-wide/from16 v25, v4

    move-wide/from16 v27, v2

    move-object/from16 v29, v12

    invoke-direct/range {v22 .. v29}, Lcom/android/server/nextapp/BigData;-><init>(DJDLjava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public toStringList()Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"DWHR\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/nextapp/BigData;->totalAccuracy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"DWLG\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/nextapp/BigData;->totalBenefit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"DWOM\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/nextapp/BigData;->totalPreloadRatio:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    move v1, v2

    :goto_68
    iget-object v4, p0, Lcom/android/server/nextapp/BigData;->appDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_12d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v4, p0, Lcom/android/server/nextapp/BigData;->appDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/nextapp/AppData;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    iget-wide v9, v4, Lcom/android/server/nextapp/AppData;->accuracy:D

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "%.2f"

    new-array v9, v7, [Ljava/lang/Object;

    iget-wide v13, v4, Lcom/android/server/nextapp/AppData;->preRatio:D

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "%s"

    new-array v7, v7, [Ljava/lang/Object;

    iget v10, v4, Lcom/android/server/nextapp/AppData;->benefit:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v2

    invoke-static {v8, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\"NAPN\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/nextapp/AppData;->compName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\"NAHR\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\"NALG\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\"NAOM\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_68

    :cond_12d
    return-object v0
.end method
