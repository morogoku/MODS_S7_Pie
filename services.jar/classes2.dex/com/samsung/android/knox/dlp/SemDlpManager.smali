.class public Lcom/samsung/android/knox/dlp/SemDlpManager;
.super Ljava/lang/Object;
.source "SemDlpManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLP_SemDlpManager"

.field private static mDLPInstance:Lcom/samsung/android/knox/dlp/SemDlpManager;

.field private static mXattrMgr:Lcom/samsung/android/knox/dlp/XattrManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/dlp/SemDlpManager;->mDLPInstance:Lcom/samsung/android/knox/dlp/SemDlpManager;

    sput-object v0, Lcom/samsung/android/knox/dlp/SemDlpManager;->mXattrMgr:Lcom/samsung/android/knox/dlp/XattrManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfig(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 3

    invoke-static {p0}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getDLPConfig()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dlp/SemDlpManager;
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    const-string v0, "DLP_SemDlpManager"

    const-string v1, "DLPManager instance is null"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/dlp/SemDlpManager;->mXattrMgr:Lcom/samsung/android/knox/dlp/XattrManager;

    if-nez v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/dlp/SemDlpManager;->mDLPInstance:Lcom/samsung/android/knox/dlp/SemDlpManager;

    iget-object v0, v0, Lcom/samsung/android/knox/dlp/SemDlpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dlp/XattrManager;->getXattrManager(Landroid/content/Context;)Lcom/samsung/android/knox/dlp/XattrManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/dlp/SemDlpManager;->mXattrMgr:Lcom/samsung/android/knox/dlp/XattrManager;

    :cond_e
    sget-object v0, Lcom/samsung/android/knox/dlp/SemDlpManager;->mXattrMgr:Lcom/samsung/android/knox/dlp/XattrManager;

    return-object v0
.end method

.method public static isSbrowserCompatVersion()Z
    .registers 1

    const/16 v0, 0x118

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private isValidZip(Ljava/lang/String;)Z
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x0

    return v3

    :cond_f
    :try_start_f
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/util/zip/ZipException; {:try_start_f .. :try_end_14} :catch_86
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_39
    .catchall {:try_start_f .. :try_end_14} :catchall_37

    move-object v1, v3

    nop

    :try_start_16
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1b

    :goto_19
    goto/16 :goto_97

    :catch_1b
    move-exception v3

    const-string v4, "DLP_SemDlpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_23
    const-string v6, "Exception has occured in zipFileForTest.close() ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :catchall_37
    move-exception v3

    goto :goto_64

    :catch_39
    move-exception v3

    const/4 v2, 0x0

    :try_start_3b
    const-string v4, "DLP_SemDlpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception has occured in isValidZip ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_37

    if-eqz v1, :cond_97

    :try_start_57
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_19

    :catch_5b
    move-exception v3

    const-string v4, "DLP_SemDlpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_23

    :goto_64
    if-eqz v1, :cond_85

    :try_start_66
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_85

    :catch_6a
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception has occured in zipFileForTest.close() ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DLP_SemDlpManager"

    invoke-static {v6, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    :goto_85
    throw v3

    :catch_86
    move-exception v3

    const/4 v2, 0x0

    if-eqz v1, :cond_97

    :try_start_8a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_19

    :catch_8e
    move-exception v3

    const-string v4, "DLP_SemDlpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_23

    :cond_97
    :goto_97
    return v2
.end method


# virtual methods
.method public getAdminExpiryTimeOffset()J
    .registers 5

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/samsung/android/knox/dlp/SemDlpManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/dlp/SemDlpManager;->getConfig(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v3, "Activate"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "ExpiryAfter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    :cond_19
    return-wide v0
.end method

.method public getDecodedExpiryTime([B)J
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/SemDlpManager;->getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dlp/XattrManager;->extractDLPExpiry([B)J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    move-exception v0

    const-string v1, "DLP_SemDlpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception has occurred in getDecodedExpiryTime ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getEncodedExpiryTimeForZipEntry(Ljava/lang/String;)[B
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/SemDlpManager;->getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dlp/XattrManager;->getIANAFormattedExpiry(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "DLP_SemDlpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception has occurred in getEncodedExpiryTimeForZipEntry ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileExpiryTime(Ljava/lang/String;)J
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/SemDlpManager;->getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dlp/XattrManager;->getDLPFileExpiryTime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    move-exception v0

    const-string v1, "DLP_SemDlpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception has occurred in getFileExpiryTime ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getUploadingFileAllowedArray(Landroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;)[Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    array-length v1, p2

    if-lez v1, :cond_19

    if-eqz p1, :cond_19

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/samsung/android/knox/dlp/SemDlpManager;->getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/knox/dlp/XattrManager;->getUploadingFileAllowedArray(Landroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;)[Z

    move-result-object v0

    goto :goto_20

    :cond_19
    const-string v1, "DLP_SemDlpManager"

    const-string v2, "isFileUploadAllowed: Invalid inputs !"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-object v0
.end method

.method public isDlpFile(Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/SemDlpManager;->getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dlp/XattrManager;->isDLPFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "DLP_SemDlpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception has occurred in isDLPFile ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setFileExpiryTime(Ljava/lang/String;J)Z
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/SemDlpManager;->getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/dlp/XattrManager;->setExpiryDate(Ljava/lang/String;J)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "DLP_SemDlpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception has occurred in setFileExpiryTime ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setUnzippedFilesExpiryTime(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/SemDlpManager;->isValidZip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/dlp/SemDlpManager;->getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/dlp/XattrManager;->setExpiryToUnzippedFiles(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_29

    :catch_e
    move-exception v0

    const-string v1, "DLP_SemDlpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception has occurred in setUnzippedFilesExpiryTime ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Zip file is invalid"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
