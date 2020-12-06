.class public Lcom/android/server/am/BinderTransaction;
.super Ljava/lang/Object;
.source "BinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    }
.end annotation


# static fields
.field static final BINDER_PROCS_COLLECTOR_TIMEOUT:J = 0x7530L

.field private static final BINDER_TRANSACTION_GROUP_DIRECTION:I = 0x1

.field private static final BINDER_TRANSACTION_GROUP_TO_PID:I = 0x6

.field private static LOG_ERROR_HEADER:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String; = null

.field private static final PID_PROC_NATIVE:I = 0x1

.field private static final PID_PROC_UNKNOWN:I = -0x1

.field private static final PID_PROC_VM:I = 0x0

.field private static final REGEX_BINDER_TRANSACTION:Ljava/lang/String; = "\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)"

.field static final TAG:Ljava/lang/String; = "BinderTransaction"

.field static sBinderPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    const-string v0, "ERROR: "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    const-string/jumbo v0, "failed to get the binder transaction info of pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    const-string/jumbo v0, "failed to get the process types, stack traces will not be added"

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    const-string/jumbo v0, "failed to get whole binder transaction info from pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    const-string v0, "binder proc file not exist. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    const-string v0, "binder proc file is not readable. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    const-string v0, "binder proc file not found. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    const-string v0, "binder proc file io error. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    const-string v0, "could not get the pid of zygote"

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    const-string v0, "could not get the process type. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/BinderTransaction;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BinderTransaction;->findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BinderTransaction;Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BinderTransaction;->separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BinderTransaction;->getBinderProcFileName(I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_4c

    const-string v0, "BinderTransaction"

    const-string v1, "Binder proc file not exist."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v12

    :cond_4c
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1a4

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_1a4

    :cond_5a
    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v3, v0

    :try_start_5f
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_64} :catch_152
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_11c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_fb
    .catchall {:try_start_5f .. :try_end_64} :catchall_f6

    move-object v14, v0

    :try_start_65
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_6a} :catch_f3
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6a} :catch_f0
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6a} :catch_ed
    .catchall {:try_start_65 .. :try_end_6a} :catchall_eb

    move-object v15, v0

    :try_start_6b
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_70} :catch_e6
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_70} :catch_de
    .catchall {:try_start_6b .. :try_end_70} :catchall_d9

    move-object v6, v0

    :goto_71
    :try_start_71
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_a7

    invoke-direct {v7, v5}, Lcom/android/server/am/BinderTransaction;->matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1
    :try_end_80
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_80} :catch_d2
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_80} :catch_cb
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_80} :catch_c5
    .catchall {:try_start_71 .. :try_end_80} :catchall_be

    if-eqz v1, :cond_a1

    move-object v1, v7

    move-object v2, v0

    move-object v3, v5

    move-object/from16 v4, p2

    move-object/from16 v16, v5

    move-object v5, v8

    move-object v12, v6

    move-object v6, v9

    :try_start_8c
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BinderTransaction;->parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_8f} :catch_9d
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_99
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_95
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_a4

    :catchall_90
    move-exception v0

    move-object v1, v0

    move-object v3, v12

    goto/16 :goto_db

    :catch_95
    move-exception v0

    move-object v3, v12

    goto/16 :goto_df

    :catch_99
    move-exception v0

    move-object v3, v12

    goto/16 :goto_e3

    :catch_9d
    move-exception v0

    move-object v3, v12

    goto/16 :goto_e7

    :cond_a1
    move-object/from16 v16, v5

    move-object v12, v6

    :goto_a4
    move-object v6, v12

    const/4 v12, 0x0

    goto :goto_71

    :cond_a7
    move-object v12, v6

    :try_start_a8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_ad

    :catch_ac
    move-exception v0

    :goto_ad
    nop

    :try_start_ae
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_b3

    :catch_b2
    move-exception v0

    :goto_b3
    nop

    :try_start_b4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_b9

    :catch_b8
    move-exception v0

    :goto_b9
    move-object v3, v12

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_188

    :catchall_be
    move-exception v0

    move-object v12, v6

    move-object v1, v0

    move-object v3, v12

    move-object v2, v15

    goto/16 :goto_18e

    :catch_c5
    move-exception v0

    move-object v12, v6

    move-object v3, v12

    move-object v1, v14

    move-object v2, v15

    goto :goto_fc

    :catch_cb
    move-exception v0

    move-object v12, v6

    move-object v3, v12

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_11d

    :catch_d2
    move-exception v0

    move-object v12, v6

    move-object v3, v12

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_153

    :catchall_d9
    move-exception v0

    move-object v1, v0

    :goto_db
    move-object v2, v15

    goto/16 :goto_18e

    :catch_de
    move-exception v0

    :goto_df
    move-object v1, v14

    move-object v2, v15

    goto :goto_fc

    :catch_e2
    move-exception v0

    :goto_e3
    move-object v1, v14

    move-object v2, v15

    goto :goto_11d

    :catch_e6
    move-exception v0

    :goto_e7
    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_153

    :catchall_eb
    move-exception v0

    goto :goto_f8

    :catch_ed
    move-exception v0

    move-object v1, v14

    goto :goto_fc

    :catch_f0
    move-exception v0

    move-object v1, v14

    goto :goto_11d

    :catch_f3
    move-exception v0

    move-object v1, v14

    goto :goto_153

    :catchall_f6
    move-exception v0

    move-object v14, v1

    :goto_f8
    move-object v1, v0

    goto/16 :goto_18e

    :catch_fb
    move-exception v0

    :goto_fc
    :try_start_fc
    const-string v4, "BinderTransaction"

    const-string v5, "Unexpected error during binder proc file processing."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_103
    .catchall {:try_start_fc .. :try_end_103} :catchall_f6

    const/4 v13, 0x1

    if-eqz v3, :cond_10b

    :try_start_106
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10a

    goto :goto_10b

    :catch_10a
    move-exception v0

    :cond_10b
    :goto_10b
    if-eqz v2, :cond_112

    :try_start_10d
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    goto :goto_112

    :catch_111
    move-exception v0

    :cond_112
    :goto_112
    if-eqz v1, :cond_188

    :goto_114
    :try_start_114
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_119

    goto/16 :goto_188

    :catch_119
    move-exception v0

    goto/16 :goto_188

    :catch_11c
    move-exception v0

    :goto_11d
    :try_start_11d
    const-string v4, "BinderTransaction"

    const-string v5, "Binder proc file read io error."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_140
    .catchall {:try_start_11d .. :try_end_140} :catchall_f6

    const/4 v13, 0x1

    if-eqz v3, :cond_148

    :try_start_143
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_146} :catch_147

    goto :goto_148

    :catch_147
    move-exception v0

    :cond_148
    :goto_148
    if-eqz v2, :cond_14f

    :try_start_14a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_14e

    goto :goto_14f

    :catch_14e
    move-exception v0

    :cond_14f
    :goto_14f
    if-eqz v1, :cond_188

    goto :goto_114

    :catch_152
    move-exception v0

    :goto_153
    :try_start_153
    const-string v4, "BinderTransaction"

    const-string v5, "Binder proc file not found. "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_176
    .catchall {:try_start_153 .. :try_end_176} :catchall_f6

    const/4 v13, 0x1

    if-eqz v3, :cond_17e

    :try_start_179
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_17d

    goto :goto_17e

    :catch_17d
    move-exception v0

    :cond_17e
    :goto_17e
    if-eqz v2, :cond_185

    :try_start_180
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_183} :catch_184

    goto :goto_185

    :catch_184
    move-exception v0

    :cond_185
    :goto_185
    if-eqz v1, :cond_188

    goto :goto_114

    :cond_188
    :goto_188
    if-nez v13, :cond_18c

    const/4 v12, 0x1

    goto :goto_18d

    :cond_18c
    const/4 v12, 0x0

    :goto_18d
    return v12

    :goto_18e
    if-eqz v3, :cond_195

    :try_start_190
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_194

    goto :goto_195

    :catch_194
    move-exception v0

    :cond_195
    :goto_195
    if-eqz v2, :cond_19c

    :try_start_197
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_19b

    goto :goto_19c

    :catch_19b
    move-exception v0

    :cond_19c
    :goto_19c
    if-eqz v14, :cond_1a3

    :try_start_19e
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_1a2

    goto :goto_1a3

    :catch_1a2
    move-exception v0

    :cond_1a3
    :goto_1a3
    throw v1

    :cond_1a4
    :goto_1a4
    const-string v0, "BinderTransaction"

    const-string v1, "Binder proc file is not readable."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return v1
.end method

.method private getProcessTypeOfPid(I[I)I
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->getParentPid(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_16

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_14

    aget v4, p2, v3

    if-ne v0, v4, :cond_11

    return v2

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_14
    const/4 v1, 0x1

    return v1

    :cond_16
    return v1
.end method

.method private makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeBinderTransactionsLogFooter(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- end binder transactions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeBinderTransactionsLogHeader(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- binder transactions from pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 3

    sget-object v0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method private parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_33

    const-string/jumbo v2, "outgoing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p4, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method

.method private separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/BinderTransaction$BinderProcsInfo;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "zygote"

    const-string/jumbo v1, "zygote64"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_78

    array-length v2, v1

    if-gtz v2, :cond_14

    goto :goto_78

    :cond_14
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/android/server/am/BinderTransaction;->getProcessTypeOfPid(I[I)I

    move-result v2

    if-nez v2, :cond_36

    iget-object v5, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->javaPids:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    :cond_36
    if-ne v2, v5, :cond_3e

    iget-object v5, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->nativePids:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    :cond_3e
    const-string v5, "BinderTransaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not get the process type. drop pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_76
    goto :goto_19

    :cond_77
    return v5

    :cond_78
    :goto_78
    const-string v2, "BinderTransaction"

    const-string v3, "Could not get the pid of zygote."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected getBinderProcFileName(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .registers 9

    new-instance v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v0}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/am/BinderTransaction$1;

    const-string v3, "BinderProcsCollector"

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/android/server/am/BinderTransaction$1;-><init>(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/16 v3, 0x7530

    :try_start_12
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "BinderTransaction"

    const-string v4, "ERROR! binderProc thread timed out! failed to get binder info."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_22} :catch_27
    .catchall {:try_start_12 .. :try_end_22} :catchall_25

    goto :goto_24

    :cond_23
    const/4 v1, 0x1

    :goto_24
    goto :goto_30

    :catchall_25
    move-exception v3

    goto :goto_6a

    :catch_27
    move-exception v3

    :try_start_28
    const-string v4, "BinderTransaction"

    const-string v5, "ERROR! binderProc thread has interrupted!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    goto :goto_24

    :goto_30
    if-eqz v1, :cond_34

    move-object v3, v0

    goto :goto_69

    :cond_34
    new-instance v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v3}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    iget-object v4, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_69
    return-object v3

    :goto_6a
    throw v3
.end method

.method protected getParentPid(I)I
    .registers 3

    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result v0

    return v0
.end method

.method protected getPidsForCommands([Ljava/lang/String;)[I
    .registers 3

    invoke-static {p1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method
