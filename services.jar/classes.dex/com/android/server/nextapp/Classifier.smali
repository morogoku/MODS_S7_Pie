.class Lcom/android/server/nextapp/Classifier;
.super Ljava/lang/Object;
.source "Classifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/nextapp/Classifier$Data;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field static final FEATURE_NUM:I = 0x8

.field private static final NOTFOUND_STATE:I = 0x2

.field private static final READY_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-Classifier"

.field private static final TRAIN_STATE:I = 0x1

.field private static ready:I


# instance fields
.field public mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

.field public mStructure:Lcom/android/server/nextapp/DataStructure;

.field public version:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    new-instance v0, Lcom/android/server/nextapp/ml/RandomForest;

    invoke-direct {v0}, Lcom/android/server/nextapp/ml/RandomForest;-><init>()V

    iput-object v0, p0, Lcom/android/server/nextapp/Classifier;->mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

    new-instance v0, Lcom/android/server/nextapp/DataStructure;

    invoke-direct {v0}, Lcom/android/server/nextapp/DataStructure;-><init>()V

    iput-object v0, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    const/4 v0, 0x2

    sput v0, Lcom/android/server/nextapp/Classifier;->ready:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    :try_start_7
    invoke-static {p1}, Lcom/android/server/nextapp/Classifier;->loadClassifier(Ljava/lang/String;)Lcom/android/server/nextapp/ml/RandomForest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/nextapp/Classifier;->mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

    invoke-static {p2}, Lcom/android/server/nextapp/Classifier;->loadDataStructure(Ljava/lang/String;)Lcom/android/server/nextapp/DataStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/nextapp/Classifier;->ready:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_35

    :catch_17
    move-exception v0

    const-string v1, "PkgPredictorService-Classifier"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/android/server/nextapp/ml/RandomForest;

    invoke-direct {v1}, Lcom/android/server/nextapp/ml/RandomForest;-><init>()V

    iput-object v1, p0, Lcom/android/server/nextapp/Classifier;->mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

    new-instance v1, Lcom/android/server/nextapp/DataStructure;

    invoke-direct {v1}, Lcom/android/server/nextapp/DataStructure;-><init>()V

    iput-object v1, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    const/4 v1, 0x2

    sput v1, Lcom/android/server/nextapp/Classifier;->ready:I

    :goto_35
    return-void
.end method

.method private checkReady()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lcom/android/server/nextapp/Classifier;->ready:I

    if-eqz v0, :cond_1d

    const-string v0, ""

    sget v1, Lcom/android/server/nextapp/Classifier;->ready:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    sget v1, Lcom/android/server/nextapp/Classifier;->ready:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    const-string/jumbo v0, "the classifier is training... wait..."

    goto :goto_17

    :cond_14
    const-string/jumbo v0, "no classifier found..."

    :cond_17
    :goto_17
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    return-void
.end method

.method private getDataset(J)Lcom/android/server/nextapp/Classifier$Data;
    .registers 36

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/nextapp/DBManager;->isDBClosed()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    const-string v2, "PkgPredictorService-Classifier"

    const-string/jumbo v4, "get Dataset failed! db is closed!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p1

    const/4 v2, 0x0

    const/4 v8, -0x1

    move v9, v8

    move v10, v8

    move v11, v8

    const/4 v12, 0x0

    move v13, v12

    move v14, v12

    move v15, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/nextapp/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v17, v2

    const/4 v12, 0x0

    invoke-virtual {v1, v3, v12}, Lcom/android/server/nextapp/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v7, Lcom/android/server/nextapp/Classifier$Data;

    invoke-direct {v7, v0, v6}, Lcom/android/server/nextapp/Classifier$Data;-><init>(Lcom/android/server/nextapp/Classifier;I)V

    const/16 v12, 0x8

    iput v12, v7, Lcom/android/server/nextapp/Classifier$Data;->featureNum:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    const-string/jumbo v2, "select * from "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/nextapp/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " where launch_time > "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/nextapp/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_1e7

    :goto_7e
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_1d7

    const-string/jumbo v12, "running_pkg"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v1

    const-string/jumbo v1, "previous_one"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v2

    const-string/jumbo v2, "previous_two"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v21, v4

    const-string/jumbo v4, "previous_three"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v5, v12}, Lcom/android/server/nextapp/DataStructure;->checkUninstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1af

    iget-object v5, v0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v5, v1}, Lcom/android/server/nextapp/DataStructure;->checkUninstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1af

    iget-object v5, v0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v5, v2}, Lcom/android/server/nextapp/DataStructure;->checkUninstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1af

    iget-object v5, v0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v5, v4}, Lcom/android/server/nextapp/DataStructure;->checkUninstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1af

    const-string v5, "day_of_week"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v23, v6

    const-string/jumbo v6, "hour_of_day"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v24, v8

    const-string/jumbo v8, "screen_orientation"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string/jumbo v8, "wifi_status"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v8, "bt_status"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iget-object v8, v0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    move/from16 v25, v9

    const/4 v9, 0x2

    invoke-virtual {v8, v12, v9}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, v0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    move/from16 v26, v10

    const/4 v10, 0x1

    invoke-virtual {v9, v1, v10}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v1, v2, v10}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v11

    iget-object v1, v0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v1, v4, v10}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v1

    iget-object v10, v7, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    aget-object v10, v10, v17

    move-object/from16 v29, v2

    move-object/from16 v28, v3

    int-to-double v2, v6

    const/16 v16, 0x0

    aput-wide v2, v10, v16

    iget-object v2, v7, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    aget-object v2, v2, v17

    move-object/from16 v30, v4

    int-to-double v3, v5

    const/4 v10, 0x1

    aput-wide v3, v2, v10

    iget-object v2, v7, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    aget-object v2, v2, v17

    int-to-double v3, v9

    const/4 v10, 0x2

    aput-wide v3, v2, v10

    iget-object v2, v7, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    aget-object v2, v2, v17

    const/4 v3, 0x3

    move/from16 v31, v5

    int-to-double v4, v11

    aput-wide v4, v2, v3

    iget-object v2, v7, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    aget-object v2, v2, v17

    const/4 v3, 0x4

    int-to-double v4, v1

    aput-wide v4, v2, v3

    iget-object v2, v7, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    aget-object v2, v2, v17

    const/4 v3, 0x5

    int-to-double v4, v15

    aput-wide v4, v2, v3

    iget-object v2, v7, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    aget-object v2, v2, v17

    const/4 v3, 0x6

    int-to-double v4, v14

    aput-wide v4, v2, v3

    iget-object v2, v7, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    aget-object v2, v2, v17

    const/4 v3, 0x7

    int-to-double v4, v13

    aput-wide v4, v2, v3

    iget-object v2, v7, Lcom/android/server/nextapp/Classifier$Data;->labels:[D

    int-to-double v3, v8

    aput-wide v3, v2, v17

    sget-boolean v2, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    if-eqz v2, :cond_1a6

    const-string v2, "PkgPredictorService-Classifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    aget-object v4, v4, v17

    invoke-static {v4}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/nextapp/Classifier$Data;->labels:[D

    aget-wide v4, v4, v17

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a6
    add-int/lit8 v17, v17, 0x1

    move v10, v1

    move/from16 v32, v9

    move v9, v8

    move/from16 v8, v32

    goto :goto_1c7

    :cond_1af
    move-object/from16 v27, v1

    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    const/16 v16, 0x0

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v10, v26

    :goto_1c7
    move-object/from16 v1, v28

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-object v3, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-wide/from16 v4, v21

    move/from16 v6, v23

    goto/16 :goto_7e

    :cond_1d7
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object v1, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1f6

    :cond_1e7
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object v1, v3

    move-wide/from16 v21, v4

    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    :goto_1f6
    iget-object v2, v0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v2}, Lcom/android/server/nextapp/DataStructure;->getClassValsNum()I

    move-result v2

    iput v2, v7, Lcom/android/server/nextapp/Classifier$Data;->itemNum:I

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v7
.end method

.method protected static hasPersist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_28

    :cond_13
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_27

    :cond_25
    const/4 v2, 0x1

    return v2

    :cond_27
    :goto_27
    return v2

    :cond_28
    :goto_28
    return v2
.end method

.method protected static loadClassifier(Ljava/lang/String;)Lcom/android/server/nextapp/ml/RandomForest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/nextapp/ml/RandomForest;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    return-object v2

    :cond_21
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no classifier is found at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static loadDataStructure(Ljava/lang/String;)Lcom/android/server/nextapp/DataStructure;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    return-object v2

    :cond_21
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no data structure is found at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static persist(Lcom/android/server/nextapp/Classifier;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/nextapp/Classifier;->mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "data structure:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v0}, Lcom/android/server/nextapp/DataStructure;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected predict(Lcom/android/server/nextapp/Record;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/nextapp/Classifier;->checkReady()V

    const/16 v0, 0x8

    new-array v0, v0, [D

    iget v1, p1, Lcom/android/server/nextapp/Record;->hourOfDay:I

    int-to-double v1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget v1, p1, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    int-to-double v1, v1

    const/4 v4, 0x1

    aput-wide v1, v0, v4

    iget-object v1, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v2, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    iget-object v1, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v2, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2, v4}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    const/4 v5, 0x3

    aput-wide v1, v0, v5

    iget-object v1, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v2, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    const/4 v4, 0x4

    aput-wide v1, v0, v4

    iget v1, p1, Lcom/android/server/nextapp/Record;->screenOrientation:I

    int-to-double v1, v1

    const/4 v4, 0x5

    aput-wide v1, v0, v4

    iget v1, p1, Lcom/android/server/nextapp/Record;->wifiStatus:I

    int-to-double v1, v1

    const/4 v4, 0x6

    aput-wide v1, v0, v4

    iget v1, p1, Lcom/android/server/nextapp/Record;->btStatus:I

    int-to-double v1, v1

    const/4 v4, 0x7

    aput-wide v1, v0, v4

    iget-object v1, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

    invoke-virtual {v2, v0}, Lcom/android/server/nextapp/ml/RandomForest;->predict([D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/nextapp/DataStructure;->Nominal2String(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v2, v1}, Lcom/android/server/nextapp/DataStructure;->checkUninstalled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_65

    return-object v1

    :cond_65
    const/4 v2, 0x0

    return-object v2
.end method

.method protected predict3apps(Lcom/android/server/nextapp/Record;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/nextapp/Record;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/nextapp/Classifier;->checkReady()V

    const/16 v0, 0x8

    new-array v0, v0, [D

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p1, Lcom/android/server/nextapp/Record;->hourOfDay:I

    int-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    iget v2, p1, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    int-to-double v2, v2

    const/4 v5, 0x1

    aput-wide v2, v0, v5

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const/4 v6, 0x2

    aput-wide v2, v0, v6

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const/4 v7, 0x3

    aput-wide v2, v0, v7

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3, v5}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const/4 v8, 0x4

    aput-wide v2, v0, v8

    iget v2, p1, Lcom/android/server/nextapp/Record;->screenOrientation:I

    int-to-double v2, v2

    const/4 v8, 0x5

    aput-wide v2, v0, v8

    iget v2, p1, Lcom/android/server/nextapp/Record;->wifiStatus:I

    int-to-double v2, v2

    const/4 v8, 0x6

    aput-wide v2, v0, v8

    iget v2, p1, Lcom/android/server/nextapp/Record;->btStatus:I

    int-to-double v2, v2

    const/4 v8, 0x7

    aput-wide v2, v0, v8

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

    invoke-virtual {v2, v0}, Lcom/android/server/nextapp/ml/RandomForest;->predict3([D)[D

    move-result-object v2

    move v3, v4

    :goto_5b
    if-ge v3, v7, :cond_8f

    iget-object v8, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    aget-wide v9, v2, v3

    double-to-int v9, v9

    invoke-virtual {v8, v9, v6}, Lcom/android/server/nextapp/DataStructure;->Nominal2String(II)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v9, v8}, Lcom/android/server/nextapp/DataStructure;->checkUninstalled(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_72

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    :cond_72
    sget-boolean v9, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    if-eqz v9, :cond_8c

    const-string v9, "PkgPredictorService-Classifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " uninstalled"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    :goto_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_8f
    sget-boolean v3, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    if-eqz v3, :cond_cc

    const-string v3, "PkgPredictorService-Classifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "predict result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v2, v5

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v2, v6

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    return-object v1
.end method

.method protected predict5apps(Lcom/android/server/nextapp/Record;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/nextapp/Record;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/nextapp/Classifier;->checkReady()V

    const/16 v0, 0x8

    new-array v0, v0, [D

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p1, Lcom/android/server/nextapp/Record;->hourOfDay:I

    int-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    iget v2, p1, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    int-to-double v2, v2

    const/4 v5, 0x1

    aput-wide v2, v0, v5

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const/4 v6, 0x2

    aput-wide v2, v0, v6

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const/4 v7, 0x3

    aput-wide v2, v0, v7

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3, v5}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const/4 v8, 0x4

    aput-wide v2, v0, v8

    iget v2, p1, Lcom/android/server/nextapp/Record;->screenOrientation:I

    int-to-double v2, v2

    const/4 v9, 0x5

    aput-wide v2, v0, v9

    iget v2, p1, Lcom/android/server/nextapp/Record;->wifiStatus:I

    int-to-double v2, v2

    const/4 v10, 0x6

    aput-wide v2, v0, v10

    iget v2, p1, Lcom/android/server/nextapp/Record;->btStatus:I

    int-to-double v2, v2

    const/4 v10, 0x7

    aput-wide v2, v0, v10

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

    invoke-virtual {v2, v0}, Lcom/android/server/nextapp/ml/RandomForest;->predict5([D)[D

    move-result-object v2

    move v3, v4

    :goto_5b
    if-ge v3, v9, :cond_98

    aget-wide v10, v2, v3

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_66

    goto :goto_95

    :cond_66
    iget-object v10, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    aget-wide v11, v2, v3

    double-to-int v11, v11

    invoke-virtual {v10, v11, v6}, Lcom/android/server/nextapp/DataStructure;->Nominal2String(II)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v11, v10}, Lcom/android/server/nextapp/DataStructure;->checkUninstalled(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7b

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_7b
    sget-boolean v11, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    if-eqz v11, :cond_95

    const-string v11, "PkgPredictorService-Classifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " uninstalled"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_98
    sget-boolean v3, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    if-eqz v3, :cond_e9

    const-string v3, "PkgPredictorService-Classifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "predict result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v2, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v2, v5

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v2, v6

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v2, v7

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v2, v8

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e9
    return-object v1
.end method

.method protected predictNapps(Lcom/android/server/nextapp/Record;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/nextapp/Record;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/nextapp/Classifier;->checkReady()V

    const/16 v0, 0x8

    new-array v0, v0, [D

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p1, Lcom/android/server/nextapp/Record;->hourOfDay:I

    int-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    iget v2, p1, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    int-to-double v2, v2

    const/4 v5, 0x1

    aput-wide v2, v0, v5

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const/4 v6, 0x2

    aput-wide v2, v0, v6

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const/4 v7, 0x3

    aput-wide v2, v0, v7

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3, v5}, Lcom/android/server/nextapp/DataStructure;->String2Nominal(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const/4 v5, 0x4

    aput-wide v2, v0, v5

    iget v2, p1, Lcom/android/server/nextapp/Record;->screenOrientation:I

    int-to-double v2, v2

    const/4 v5, 0x5

    aput-wide v2, v0, v5

    iget v2, p1, Lcom/android/server/nextapp/Record;->wifiStatus:I

    int-to-double v2, v2

    const/4 v5, 0x6

    aput-wide v2, v0, v5

    iget v2, p1, Lcom/android/server/nextapp/Record;->btStatus:I

    int-to-double v2, v2

    const/4 v5, 0x7

    aput-wide v2, v0, v5

    iget-object v2, p0, Lcom/android/server/nextapp/Classifier;->mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/nextapp/ml/RandomForest;->predictN([DI)[D

    move-result-object v2

    move v3, v4

    :goto_5b
    if-ge v3, p2, :cond_98

    aget-wide v7, v2, v3

    const-wide/16 v9, 0x0

    cmpg-double v5, v7, v9

    if-gez v5, :cond_66

    goto :goto_95

    :cond_66
    iget-object v5, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    aget-wide v7, v2, v3

    double-to-int v7, v7

    invoke-virtual {v5, v7, v6}, Lcom/android/server/nextapp/DataStructure;->Nominal2String(II)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v7, v5}, Lcom/android/server/nextapp/DataStructure;->checkUninstalled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_7b
    sget-boolean v7, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    if-eqz v7, :cond_95

    const-string v7, "PkgPredictorService-Classifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " uninstalled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_98
    sget-boolean v3, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    if-eqz v3, :cond_d7

    const-string v3, "Predict result: "

    nop

    :goto_9f
    if-ge v4, p2, :cond_ba

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v2, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_9f

    :cond_ba
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PkgPredictorService-Classifier"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    return-object v1
.end method

.method protected train()Z
    .registers 11

    sget v0, Lcom/android/server/nextapp/Classifier;->ready:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    sput v1, Lcom/android/server/nextapp/Classifier;->ready:I

    sget-boolean v3, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "PkgPredictorService-Classifier"

    const-string/jumbo v4, "start training..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-wide v3, 0x39ef8b000L

    invoke-direct {p0, v3, v4}, Lcom/android/server/nextapp/Classifier;->getDataset(J)Lcom/android/server/nextapp/Classifier$Data;

    move-result-object v3

    iget v4, v3, Lcom/android/server/nextapp/Classifier$Data;->itemNum:I

    if-lez v4, :cond_43

    const-string v4, "PkgPredictorService-Classifier- start training"

    const-wide/16 v5, 0x40

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/nextapp/Classifier;->mClassifier:Lcom/android/server/nextapp/ml/RandomForest;

    iget v7, v3, Lcom/android/server/nextapp/Classifier$Data;->featureNum:I

    iget-object v8, v3, Lcom/android/server/nextapp/Classifier$Data;->features:[[D

    iget-object v9, v3, Lcom/android/server/nextapp/Classifier$Data;->labels:[D

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/nextapp/ml/RandomForest;->train(I[[D[D)V

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    sget-boolean v4, Lcom/android/server/nextapp/Classifier;->DEBUG:Z

    if-eqz v4, :cond_40

    const-string v4, "PkgPredictorService-Classifier"

    const-string/jumbo v5, "finish training."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    sput v2, Lcom/android/server/nextapp/Classifier;->ready:I

    return v1

    :cond_43
    const-string v1, "PkgPredictorService-Classifier"

    const-string/jumbo v4, "stop training... no data in db."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lcom/android/server/nextapp/Classifier;->ready:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_4e

    return v2

    :catch_4e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "PkgPredictorService-Classifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "train err: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lcom/android/server/nextapp/Classifier;->ready:I

    return v2
.end method
