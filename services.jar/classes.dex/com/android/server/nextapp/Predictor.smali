.class public Lcom/android/server/nextapp/Predictor;
.super Ljava/lang/Object;
.source "Predictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/nextapp/Predictor$PkgComparator;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-Predictor"

.field public static final classifierfs:Ljava/lang/String; = "/data/system/predictor-model"

.field public static final structurefs:Ljava/lang/String; = "/data/system/predictor-structure"


# instance fields
.field private mClassifier:Lcom/android/server/nextapp/Classifier;

.field private mContext:Landroid/content/Context;

.field private mSummary:Lcom/android/server/nextapp/Summary;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    iput-object p1, p0, Lcom/android/server/nextapp/Predictor;->mContext:Landroid/content/Context;

    const-string v0, "/data/system/predictor-model"

    const-string v1, "/data/system/predictor-structure"

    invoke-static {v0, v1}, Lcom/android/server/nextapp/Classifier;->hasPersist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/android/server/nextapp/Classifier;

    const-string v1, "/data/system/predictor-model"

    const-string v2, "/data/system/predictor-structure"

    invoke-direct {v0, v1, v2}, Lcom/android/server/nextapp/Classifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    const-string v0, "PkgPredictorService-Predictor"

    const-string/jumbo v1, "has built model"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_27
    const-string v0, "PkgPredictorService-Predictor"

    const-string/jumbo v1, "not has built model"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/nextapp/Classifier;

    invoke-direct {v0}, Lcom/android/server/nextapp/Classifier;-><init>()V

    iput-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    :goto_36
    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/nextapp/TrainService;->schedule(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/nextapp/Predictor;->getSummary()Lcom/android/server/nextapp/Summary;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    return-void
.end method

.method private getSummary()Lcom/android/server/nextapp/Summary;
    .registers 7

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "PkgPredictorService-Predictor"

    const-string/jumbo v2, "get Summary failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/nextapp/Summary;

    invoke-direct {v1}, Lcom/android/server/nextapp/Summary;-><init>()V

    return-object v1

    :cond_18
    new-instance v1, Lcom/android/server/nextapp/Summary;

    invoke-direct {v1}, Lcom/android/server/nextapp/Summary;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by id desc limit 0,1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/nextapp/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string v4, "build_time"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/nextapp/Summary;->buildtime:J

    :cond_4d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private saveSummary(Lcom/android/server/nextapp/Summary;)V
    .registers 11

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "PkgPredictorService-Predictor"

    const-string/jumbo v2, "save Summary failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where build_time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/server/nextapp/Summary;->buildtime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/nextapp/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5e

    iget v4, p1, Lcom/android/server/nextapp/Summary;->total:I

    const-string/jumbo v5, "total_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/nextapp/Summary;->total:I

    iget v4, p1, Lcom/android/server/nextapp/Summary;->right:I

    const-string/jumbo v5, "right_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/nextapp/Summary;->right:I

    const/4 v1, 0x1

    :cond_5e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_bf

    sget-object v4, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v4

    :try_start_66
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->beginTransaction()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_bc

    :try_start_69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " set right_num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/nextapp/Summary;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", total_num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/nextapp/Summary;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " where build_time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/nextapp/Summary;->buildtime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v0, v2}, Lcom/android/server/nextapp/DBManager;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->setTransactionSuccessful()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_a2} :catch_a8
    .catchall {:try_start_69 .. :try_end_a2} :catchall_a6

    :try_start_a2
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_bc

    goto :goto_b5

    :catchall_a6
    move-exception v5

    goto :goto_b8

    :catch_a8
    move-exception v5

    :try_start_a9
    const-string v6, "PkgPredictorService-Predictor"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_a6

    :try_start_b2
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    :goto_b5
    nop

    monitor-exit v4

    goto :goto_116

    :goto_b8
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    throw v5

    :catchall_bc
    move-exception v5

    monitor-exit v4
    :try_end_be
    .catchall {:try_start_b2 .. :try_end_be} :catchall_bc

    throw v5

    :cond_bf
    sget-object v4, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c2
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->beginTransaction()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_11b

    :try_start_c5
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "build_time"

    iget-wide v7, p1, Lcom/android/server/nextapp/Summary;->buildtime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "total_num"

    iget v7, p1, Lcom/android/server/nextapp/Summary;->total:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "right_num"

    iget v7, p1, Lcom/android/server/nextapp/Summary;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "train_time"

    iget-wide v7, p1, Lcom/android/server/nextapp/Summary;->trainTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, v0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/nextapp/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->setTransactionSuccessful()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_101} :catch_107
    .catchall {:try_start_c5 .. :try_end_101} :catchall_105

    :try_start_101
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_11b

    goto :goto_114

    :catchall_105
    move-exception v5

    goto :goto_117

    :catch_107
    move-exception v5

    :try_start_108
    const-string v6, "PkgPredictorService-Predictor"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_105

    :try_start_111
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    :goto_114
    nop

    monitor-exit v4

    :goto_116
    return-void

    :goto_117
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    throw v5

    :catchall_11b
    move-exception v5

    monitor-exit v4
    :try_end_11d
    .catchall {:try_start_111 .. :try_end_11d} :catchall_11b

    throw v5
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    invoke-virtual {v0, p1}, Lcom/android/server/nextapp/Classifier;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Lcom/android/server/nextapp/Summary;

    iget-object v1, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-direct {v0, v1}, Lcom/android/server/nextapp/Summary;-><init>(Lcom/android/server/nextapp/Summary;)V

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where build_time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iget-wide v3, v3, Lcom/android/server/nextapp/Summary;->buildtime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/nextapp/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5b

    iget v4, v0, Lcom/android/server/nextapp/Summary;->total:I

    const-string/jumbo v5, "total_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/nextapp/Summary;->total:I

    iget v4, v0, Lcom/android/server/nextapp/Summary;->right:I

    const-string/jumbo v5, "right_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/nextapp/Summary;->right:I

    :cond_5b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "dump summary: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "------------------------------"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected predict(Lcom/android/server/nextapp/Record;)Ljava/util/List;
    .registers 5
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

    :try_start_0
    sget-boolean v0, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "PkgPredictorService-Predictor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start predicting...\n ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/nextapp/Record;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    invoke-virtual {v0, p1}, Lcom/android/server/nextapp/Classifier;->predict3apps(Lcom/android/server/nextapp/Record;)Ljava/util/List;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    const-string v1, "PkgPredictorService-Predictor"

    iget-object v2, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected predictWithHitRatio(Lcom/android/server/nextapp/Record;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/nextapp/Record;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "PkgPredictorService-Predictor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start predicting...\n ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/nextapp/Record;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    sget v1, Lcom/android/server/nextapp/PkgPredictorService;->candidateNum:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/nextapp/Classifier;->predictNapps(Lcom/android/server/nextapp/Record;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/nextapp/BigDataService;->getPkgAccuracyMap()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/android/server/nextapp/Predictor$PkgComparator;

    invoke-direct {v2, p0, v1}, Lcom/android/server/nextapp/Predictor$PkgComparator;-><init>(Lcom/android/server/nextapp/Predictor;Ljava/util/HashMap;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_41
    sget v5, Lcom/android/server/nextapp/PkgPredictorService;->candidateNum:I

    if-ge v4, v5, :cond_7f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7f

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v5, :cond_7c

    const-string v5, "PkgPredictorService-Predictor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get ratio top"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_80

    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_7f
    return-object v3

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    const-string v1, "PkgPredictorService-Predictor"

    iget-object v2, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected save()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-direct {p0, v1}, Lcom/android/server/nextapp/Predictor;->saveSummary(Lcom/android/server/nextapp/Summary;)V

    sget-boolean v1, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v1, :cond_14

    const-string v1, "PkgPredictorService-Predictor"

    const-string/jumbo v2, "save summary successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_83

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_17
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/predictor-structure"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    iget-object v2, v2, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    sget-boolean v2, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v2, :cond_3b

    const-string v2, "PkgPredictorService-Predictor"

    const-string/jumbo v3, "save data structure successful."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_3b} :catch_5e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3b} :catch_4f
    .catchall {:try_start_17 .. :try_end_3b} :catchall_4d

    :cond_3b
    nop

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_42

    :catch_40
    move-exception v2

    goto :goto_47

    :goto_42
    nop

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_46} :catch_40

    goto :goto_4c

    :goto_47
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    :cond_4c
    :goto_4c
    goto :goto_6d

    :catchall_4d
    move-exception v2

    goto :goto_6e

    :catch_4f
    move-exception v2

    :try_start_50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_58
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5d} :catch_40

    goto :goto_4c

    :catch_5e
    move-exception v2

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_4d

    if-eqz v1, :cond_67

    :try_start_64
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_67
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6c} :catch_40

    goto :goto_4c

    :goto_6d
    return-void

    :goto_6e
    nop

    if-eqz v1, :cond_77

    :try_start_71
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_77

    :catch_75
    move-exception v3

    goto :goto_7d

    :cond_77
    :goto_77
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7c} :catch_75

    goto :goto_82

    :goto_7d
    nop

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_82
    :goto_82
    throw v2

    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1
.end method

.method protected trainModel()V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    invoke-virtual {v2}, Lcom/android/server/nextapp/Classifier;->train()Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    iput-wide v0, v2, Lcom/android/server/nextapp/Classifier;->version:J

    :try_start_10
    const-string v2, "PkgPredictorService-Predictor- start persisting after traing"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    const-string v5, "/data/system/predictor-model"

    const-string v6, "/data/system/predictor-structure"

    invoke-static {v2, v5, v6}, Lcom/android/server/nextapp/Classifier;->persist(Lcom/android/server/nextapp/Classifier;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    monitor-enter v3
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_27} :catch_7f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_27} :catch_7a

    :try_start_27
    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/nextapp/Summary;->trainTime:J

    new-instance v4, Lcom/android/server/nextapp/Summary;

    iget-object v5, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-direct {v4, v5}, Lcom/android/server/nextapp/Summary;-><init>(Lcom/android/server/nextapp/Summary;)V

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iget-object v5, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    iget-wide v5, v5, Lcom/android/server/nextapp/Classifier;->version:J

    iput-wide v5, v4, Lcom/android/server/nextapp/Summary;->buildtime:J

    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/nextapp/Summary;->total:I

    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iput v5, v4, Lcom/android/server/nextapp/Summary;->right:I

    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/server/nextapp/Summary;->trainTime:J

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_27 .. :try_end_50} :catchall_77

    nop

    :try_start_51
    invoke-direct {p0, v2}, Lcom/android/server/nextapp/Predictor;->saveSummary(Lcom/android/server/nextapp/Summary;)V

    sget-boolean v3, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v3, :cond_83

    const-string v3, "PkgPredictorService-Predictor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finish training... ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_76} :catch_7f
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_76} :catch_7a

    goto :goto_83

    :catchall_77
    move-exception v4

    :try_start_78
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw v4
    :try_end_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_7a} :catch_7f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7a} :catch_7a

    :catch_7a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83

    :catch_7f
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_83
    :goto_83
    goto :goto_8c

    :cond_84
    const-string v2, "PkgPredictorService-Predictor"

    const-string/jumbo v3, "training failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8c
    return-void
.end method

.method protected updateSummary(Lcom/android/server/nextapp/Record;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iget v2, v1, Lcom/android/server/nextapp/Summary;->total:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/nextapp/Summary;->total:I

    iget-object v1, p1, Lcom/android/server/nextapp/Record;->prediction:Ljava/util/List;

    if-eqz v1, :cond_21

    iget-object v1, p1, Lcom/android/server/nextapp/Record;->prediction:Ljava/util/List;

    iget-object v2, p1, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iget v2, v1, Lcom/android/server/nextapp/Summary;->right:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/nextapp/Summary;->right:I

    :cond_21
    sget-boolean v1, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v1, :cond_2d

    const-string v1, "PkgPredictorService-Predictor"

    const-string/jumbo v2, "update summary success."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method
