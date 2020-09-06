.class public Lcom/samsung/android/knox/dlp/XattrManager;
.super Ljava/lang/Object;
.source "XattrManager.java"


# static fields
.field public static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "DLP_XattrManager_ksdk"

.field private static _instance:Lcom/samsung/android/knox/dlp/XattrManager;

.field private static sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;


# instance fields
.field private DEVICE_ID:Ljava/lang/String;

.field private DLP_DEV_ID_LEN:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/knox/dlp/DLPConstants;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/knox/dlp/XattrManager;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    sput-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    :try_start_9
    const-string v0, "dlp_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
    move-exception v0

    const-string v1, "DLP_XattrManager_ksdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load library for libDLP_sdk failed with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/dlp/XattrManager;->DLP_DEV_ID_LEN:I

    iput-object v0, p0, Lcom/samsung/android/knox/dlp/XattrManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getXattrUtilInstance()Lcom/samsung/android/knox/dlp/XattrUtils;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    return-void
.end method

.method public static native Native_Dlp_GetDLPFileExpiryTime(Ljava/lang/String;)J
.end method

.method private getExrasFromZip(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4c

    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/dlp/XattrManager;->extractDLPExpiry([B)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_3b

    sget-object v6, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v6}, Lcom/samsung/android/knox/dlp/XattrUtils;->getAdminExpiry()J

    move-result-wide v6

    move-wide v4, v6

    :cond_3b
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    goto :goto_18

    :cond_47
    goto :goto_53

    :catchall_48
    move-exception v2

    goto :goto_a1

    :catch_4a
    move-exception v2

    goto :goto_76

    :cond_4c
    const-string v2, "DLP_XattrManager_ksdk"

    const-string v3, "getExrasFromZip: zipPath empty/null!"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_53} :catch_4a
    .catchall {:try_start_8 .. :try_end_53} :catchall_48

    :goto_53
    if-eqz v1, :cond_75

    :try_start_55
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_75

    :catch_59
    move-exception v2

    const-string v3, "DLP_XattrManager_ksdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_61
    const-string v5, "I/O exception occured!in finally"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_75
    :goto_75
    goto :goto_a0

    :goto_76
    nop

    :try_start_77
    const-string v3, "DLP_XattrManager_ksdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O exception occured!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_77 .. :try_end_91} :catchall_48

    if-eqz v1, :cond_75

    :try_start_93
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_75

    :catch_97
    move-exception v2

    const-string v3, "DLP_XattrManager_ksdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_61

    :goto_a0
    return-object v0

    :goto_a1
    nop

    if-eqz v1, :cond_c4

    :try_start_a4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_c4

    :catch_a8
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O exception occured!in finally"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DLP_XattrManager_ksdk"

    invoke-static {v5, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_c4
    :goto_c4
    throw v2
.end method

.method private getFileType(Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x2

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dlp/XattrManager;->getDLPFileExpiryTime(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_14

    return v0

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-lez v0, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x3

    return v0

    :cond_23
    return v0
.end method

.method public static getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;
    .registers 2

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/samsung/android/knox/dlp/XattrManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/samsung/android/knox/dlp/XattrManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/dlp/XattrManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    return-object v0
.end method

.method public static declared-synchronized getXattrManager(Landroid/content/Context;)Lcom/samsung/android/knox/dlp/XattrManager;
    .registers 5

    const-class v0, Lcom/samsung/android/knox/dlp/XattrManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/knox/dlp/XattrManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/dlp/XattrManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    :cond_e
    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    iget-object v1, v1, Lcom/samsung/android/knox/dlp/XattrManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_53

    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    iput-object p0, v1, Lcom/samsung/android/knox/dlp/XattrManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    sget-object v2, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    iget-object v2, v2, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    iput v2, v1, Lcom/samsung/android/knox/dlp/XattrManager;->DLP_DEV_ID_LEN:I

    const-string v1, "DLP_XattrManager_ksdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_instance.DEVICE_ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    iget-object v3, v3, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_57

    monitor-exit v0

    return-object v1

    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isPackageWhiteListed(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Z
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Z

    const-string v3, "DLP_XattrManager_ksdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v3

    if-eqz v3, :cond_aa

    :try_start_22
    invoke-interface {v3, p3}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->getPackagesFromAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz p1, :cond_89

    if-eqz v4, :cond_89

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    iget-object v8, v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v8}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    iget-object v8, v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v8}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_59

    invoke-virtual {p0, p2, p1, v8}, Lcom/samsung/android/knox/dlp/XattrManager;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_88

    :cond_59
    const/4 v0, 0x1

    iget-object v6, v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    const-string v9, "Type"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_65

    const/4 v1, 0x1

    :cond_65
    const-string v9, "DLP_XattrManager_ksdk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " UserHandle.myUserId() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    :cond_88
    goto :goto_2f

    :cond_89
    :goto_89
    const/4 v6, 0x0

    aput-boolean v0, v2, v6

    aput-boolean v1, v2, v5
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_8e} :catch_8f

    goto :goto_aa

    :catch_8f
    move-exception v4

    const-string v5, "DLP_XattrManager_ksdk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPackageWhiteListed : exception occured!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    :goto_aa
    return-object v2
.end method

.method private isWhitelisted(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Z
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [Z

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/knox/dlp/XattrManager;->isPackageWhiteListed(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Z

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_15

    move-object v0, v3

    goto :goto_30

    :catch_15
    move-exception v1

    const-string v2, "DLP_XattrManager_ksdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWhitelisted : exception occured!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    return-object v0
.end method


# virtual methods
.method public addToAuditLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    if-eqz p2, :cond_62

    if-eqz p1, :cond_62

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/dlp/XattrManager;->getFileType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_64

    goto :goto_62

    :pswitch_c
    const-string v1, "DLP_XattrManager_ksdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToAuditLog:Attempt to access expired file, adding to Audit log. Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/16 v7, 0x19

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/knox/dlp/XattrManager;->addToAuditLog(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_62

    :pswitch_33
    const-string v1, "DLP_XattrManager_ksdk"

    const-string v2, "addToAuditLog:File is non-dlp or dlp is not available!"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :pswitch_3b
    const-string v1, "DLP_XattrManager_ksdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToAuditLog:unexpired dlp file is being accessed, adding to Audit log. Path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/16 v7, 0x15

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/knox/dlp/XattrManager;->addToAuditLog(Ljava/lang/String;Ljava/lang/String;III)V

    nop

    :cond_62
    :goto_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_33
        :pswitch_c
    .end packed-switch
.end method

.method public addToAuditLog(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 14

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/knox/dlp/XattrUtils;->addToAuditLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_2e

    :catch_13
    move-exception v0

    const-string v1, "DLP_XattrManager_ksdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToAudit: Exception occurred : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p3, :cond_37

    if-nez p2, :cond_6

    goto :goto_37

    :cond_6
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_13

    move-object v1, v2

    goto :goto_17

    :catch_13
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_17
    if-eqz v1, :cond_36

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_36

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v4, v0

    :goto_21
    if-ge v4, v3, :cond_36

    aget-object v5, v2, v4

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    const/4 v0, 0x1

    return v0

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_36
    return v0

    :cond_37
    :goto_37
    const-string v1, "DLP_XattrManager_ksdk"

    const-string v2, "Invalid arguments"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public extractDLPExpiry([B)J
    .registers 24

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_155

    const-string v0, "DLP_XattrManager_ksdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_27
    array-length v0, v1

    if-lez v0, :cond_147

    const/4 v4, 0x0

    move v5, v4

    :goto_2c
    add-int/lit8 v6, v0, -0x8

    if-ge v5, v6, :cond_147

    move v6, v5

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v7, v1, v6, v9, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v8, "DLP_XattrManager_ksdk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Header obtained is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x2

    new-instance v8, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v8, v1, v6, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "DX"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_137

    add-int/lit8 v6, v6, 0x2

    new-instance v10, Ljava/lang/String;

    sget v11, Lcom/samsung/android/knox/dlp/XattrUtils;->DLP_SIGN_LEN:I

    const-string v12, "UTF-8"

    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-direct {v10, v1, v6, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v11, "DLP_XattrManager_ksdk"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "signature : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "DLPX"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_137

    sget v9, Lcom/samsung/android/knox/dlp/XattrUtils;->DLP_SIGN_LEN:I

    add-int/2addr v6, v9

    new-instance v9, Ljava/lang/String;

    sget v11, Lcom/samsung/android/knox/dlp/XattrUtils;->DLP_SIGN_LEN:I

    sub-int v11, v8, v11

    const-string v12, "UTF-8"

    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-direct {v9, v1, v6, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v4, v11, v4

    const-string v12, "DLP_XattrManager_ksdk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "deviceID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    iget-object v14, v14, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " len:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_cc} :catch_14a

    move-object/from16 v14, p0

    :try_start_ce
    iget v15, v14, Lcom/samsung/android/knox/dlp/XattrManager;->DLP_DEV_ID_LEN:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide v2, v15

    const-string v13, "DLP_XattrManager_ksdk"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    const-string v0, "fileExp = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dlp/XattrUtils;->getAdminExpiry()J

    move-result-wide v15

    move-wide/from16 v18, v15

    const-string v0, "DLP_XattrManager_ksdk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adminExp = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v6

    move-object/from16 v20, v7

    move-wide/from16 v6, v18

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    iget-object v0, v0, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    cmp-long v0, v2, v6

    if-gez v0, :cond_134

    const-string v0, "DLP_XattrManager_ksdk"

    const-string v13, "device id is same and fileexp < adminExp"

    invoke-static {v0, v13}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_133
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_133} :catch_135

    return-wide v2

    :cond_134
    return-wide v6

    :catch_135
    move-exception v0

    goto :goto_14d

    :cond_137
    move-object/from16 v14, p0

    move/from16 v17, v0

    move-object/from16 v20, v7

    add-int/lit8 v0, v5, 0x2

    add-int/2addr v0, v9

    add-int v5, v0, v8

    nop

    move/from16 v0, v17

    goto/16 :goto_2c

    :cond_147
    move-object/from16 v14, p0

    goto :goto_157

    :catch_14a
    move-exception v0

    move-object/from16 v14, p0

    :goto_14d
    const-string v4, "DLP_XattrManager_ksdk"

    const-string v5, "Unrecognized byte stream found ! Returning error!"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_157

    :cond_155
    move-object/from16 v14, p0

    :goto_157
    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method public getDLPFileExpiryTime(Ljava/lang/String;)J
    .registers 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    sget-object v2, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/dlp/XattrUtils;->isXattrOperationSupported(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1a

    const-string v2, "DLP_XattrManager_ksdk"

    const-string v5, "Xattr operation is not supported, returning -1 !"

    invoke-static {v2, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_1a
    const-string v2, "DLP_XattrManager_ksdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App info: uid -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-userid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/dlp/XattrUtils;->checkAndConvertSdcardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "DLP_XattrManager_ksdk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sdcardfs path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " lower path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_61
    invoke-static {v2}, Lcom/samsung/android/knox/dlp/XattrManager;->Native_Dlp_GetDLPFileExpiryTime(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_a6

    const-string v7, "DLP_XattrManager_ksdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got expiry time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_81} :catch_9e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_61 .. :try_end_81} :catch_82

    return-wide v5

    :catch_82
    move-exception v5

    const-string v6, "DLP_XattrManager_ksdk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error- Unsatisfied Link error happened!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    :catch_9e
    move-exception v5

    const-string v6, "DLP_XattrManager_ksdk"

    const-string v7, "Error- Exception in DLP file expiry query!!"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    nop

    :goto_a7
    return-wide v3
.end method

.method public getIANAFormattedExpiry(Ljava/lang/String;)[B
    .registers 9

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    iget-object v0, v0, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "DLP_XattrManager_ksdk"

    const-string v2, "getIANAFormattedExpiry - DEVICE_ID is null, cannot proceed"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    const-string v0, ""

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dlp/XattrManager;->getDLPFileExpiryTime(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2d

    const-string v4, "DLP_XattrManager_ksdk"

    const-string v5, "getIANAFormattedExpiry - non DLP file detected ... returning formatted byte stream as null"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2d
    sget v1, Lcom/samsung/android/knox/dlp/XattrUtils;->DLP_SIGN_LEN:I

    iget v4, p0, Lcom/samsung/android/knox/dlp/XattrManager;->DLP_DEV_ID_LEN:I

    add-int/2addr v1, v4

    const-string v4, ":"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DX"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "DLPX"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    iget-object v5, v5, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v4, "DLP_XattrManager_ksdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " expiry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUploadingFileAllowedArray(Landroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;)[Z
    .registers 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object v10, v0

    invoke-direct {v6, v7, v10}, Lcom/samsung/android/knox/dlp/XattrManager;->isWhitelisted(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Z

    move-result-object v11

    const/4 v12, 0x0

    aget-boolean v0, v11, v12

    const/4 v13, 0x1

    if-nez v0, :cond_23

    aget-boolean v0, v11, v13

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    move v0, v12

    goto :goto_24

    :cond_23
    :goto_23
    move v0, v13

    :goto_24
    move v14, v0

    array-length v0, v8

    new-array v15, v0, [Z

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v0, v9, v10}, Lcom/samsung/android/knox/dlp/XattrUtils;->isDomainWhitelisted(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v16

    if-eqz v14, :cond_3d

    if-eqz v16, :cond_3d

    invoke-static {v15, v13}, Ljava/util/Arrays;->fill([ZZ)V

    const-string v0, "DLP_XattrManager_ksdk"

    const-string v1, "isFileUploadAllowed: app whitelist and domain is ok, allowing all!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v15

    :cond_3d
    move v0, v12

    :goto_3e
    move v5, v0

    array-length v0, v8

    if-ge v5, v0, :cond_149

    aget-object v0, v8, v5

    if-eqz v0, :cond_13d

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_149

    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    iget-object v2, v6, Lcom/samsung/android/knox/dlp/XattrManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/dlp/XattrUtils;->getMediaCreatorPkgs(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v6, v3, v7, v10}, Lcom/samsung/android/knox/dlp/XattrManager;->isPackageWhiteListed(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Z

    move-result-object v4

    aget-boolean v17, v4, v12

    if-nez v17, :cond_92

    aget-boolean v17, v4, v13

    if-eqz v17, :cond_84

    goto :goto_92

    :cond_84
    const-string v12, "DLP_XattrManager_ksdk"

    const-string v13, "Package not among the whitelisted..continue !"

    invoke-static {v12, v13}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-boolean v12, v15, v5

    nop

    move v13, v12

    const/4 v12, 0x0

    goto :goto_6b

    :cond_92
    :goto_92
    const-string v2, "DLP_XattrManager_ksdk"

    const-string v12, "Package among the resolved packages is whitelisted, no further investigation required, break and return false!"

    invoke-static {v2, v12}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-boolean v2, v15, v5

    nop

    :cond_9d
    goto/16 :goto_149

    :cond_9f
    move v12, v13

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    const-string v1, "DLP_XattrManager_ksdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFileUploadAllowed: uri is a content uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/knox/dlp/XattrUtils;->getAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_dd

    const-string v2, "DLP_XattrManager_ksdk"

    const-string v3, "Absolute path is null.. Adding false !"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-boolean v2, v15, v5

    nop

    move/from16 v20, v5

    :goto_db
    const/4 v1, 0x0

    goto :goto_143

    :cond_dd
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "DLP_XattrManager_ksdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converted Uri to File Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f7
    move-object v13, v0

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/dlp/XattrManager;->isDLPFile(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_136

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v1, "DLP-Apps"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/16 v4, 0x1b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    move-object v0, v6

    move-object/from16 v2, v18

    move/from16 v20, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/dlp/XattrManager;->addToAuditLog(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_138

    :cond_136
    move/from16 v20, v5

    :goto_138
    xor-int/lit8 v0, v17, 0x1

    aput-boolean v0, v15, v20

    goto :goto_db

    :cond_13d
    move/from16 v20, v5

    move v12, v13

    const/4 v1, 0x0

    aput-boolean v1, v15, v20

    :goto_143
    add-int/lit8 v0, v20, 0x1

    move v13, v12

    move v12, v1

    goto/16 :goto_3e

    :cond_149
    :goto_149
    return-object v15
.end method

.method public isAccessible(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/dlp/XattrManager;->isAccessible(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public isAccessible(Ljava/lang/String;Landroid/content/Context;Z)Z
    .registers 13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/dlp/XattrUtils;->isActivated(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_19

    const-string v3, "DLP_XattrManager_ksdk"

    const-string v4, " DLP is deactivated. return true"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_19
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dlp/XattrManager;->isDLPFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    return v2

    :cond_20
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, p2, v4}, Lcom/samsung/android/knox/dlp/XattrManager;->isWhitelisted(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Z

    move-result-object v5

    const/4 v6, 0x0

    aget-boolean v6, v5, v6

    aget-boolean v2, v5, v2

    if-eqz v2, :cond_4f

    if-eqz p3, :cond_4f

    if-eqz p2, :cond_4f

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_4f

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-eq v7, v8, :cond_4f

    sget-object v7, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v7, p2, v0, p1}, Lcom/samsung/android/knox/dlp/XattrUtils;->notifyDLPOpenedFile(Landroid/content/Context;ILjava/lang/String;)Z

    :cond_4f
    return v6
.end method

.method public isDLPFile(Ljava/lang/String;)Z
    .registers 9

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/dlp/XattrUtils;->isActivated(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string v2, "DLP_XattrManager_ksdk"

    const-string v3, " DLP is deactivated. return false"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_15
    const-string v2, "DLP_XattrManager_ksdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To check for DLP file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dlp/XattrManager;->getDLPFileExpiryTime(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "DLP_XattrManager_ksdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expiry time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_54

    const-string v1, "DLP_XattrManager_ksdk"

    const-string v4, "File is DLP file.."

    invoke-static {v1, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_54
    return v1
.end method

.method public makeDLPIfRequired(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 21

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/dlp/XattrUtils;->isXattrOperationSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e2

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/dlp/XattrUtils;->isActivated(I)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_e2

    :cond_1b
    move v3, v2

    :try_start_1c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v10, v4

    const-string v4, "com.android.providers.downloads"

    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    if-ne v0, v4, :cond_a9

    const-string v4, "DLP_XattrManager_ksdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller is download provider, caller process uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/knox/dlp/XattrManager;->isPackageWhiteListed(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Z

    move-result-object v4

    aget-boolean v2, v4, v2

    move v11, v2

    if-eqz v9, :cond_89

    if-eqz v11, :cond_89

    sget-object v2, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v2}, Lcom/samsung/android/knox/dlp/XattrUtils;->getAdminExpiry()J

    move-result-wide v4
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_56} :catch_c4

    move-wide v12, v4

    const-wide/16 v4, -0x1

    cmp-long v2, v12, v4

    if-eqz v2, :cond_65

    move-object/from16 v14, p0

    :try_start_5f
    invoke-virtual {v14, v9, v12, v13}, Lcom/samsung/android/knox/dlp/XattrManager;->setExpiryDate(Ljava/lang/String;J)Z

    move-result v2
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_c2

    move v3, v2

    goto :goto_67

    :cond_65
    move-object/from16 v14, p0

    :goto_67
    move v15, v3

    if-eqz v15, :cond_7f

    :try_start_6a
    sget-object v2, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    const-string v3, "DLP-Apps"

    const/4 v5, -0x1

    const/16 v7, 0x17

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    move-object v4, v9

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/knox/dlp/XattrUtils;->addToAuditLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_86

    :catch_7c
    move-exception v0

    move v3, v15

    goto :goto_c7

    :cond_7f
    const-string v2, "DLP_XattrManager_ksdk"

    const-string v3, "File expiry not set successfully:"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_86} :catch_7c

    :goto_86
    nop

    move v3, v15

    goto :goto_a8

    :cond_89
    move-object/from16 v14, p0

    :try_start_8b
    const-string v2, "DLP_XattrManager_ksdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> is not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a8
    goto :goto_c1

    :cond_a9
    move-object/from16 v14, p0

    const-string v2, "DLP_XattrManager_ksdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller is not download provider, caller process uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_c1} :catch_c2

    :goto_c1
    goto :goto_e1

    :catch_c2
    move-exception v0

    goto :goto_c7

    :catch_c4
    move-exception v0

    move-object/from16 v14, p0

    :goto_c7
    const-string v2, "DLP_XattrManager_ksdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e1
    return v3

    :cond_e2
    :goto_e2
    move-object/from16 v14, p0

    const-string v0, "DLP_XattrManager_ksdk"

    const-string v3, "Xattr operation is not supported or DLP is deactivated, returning false !"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public setExpiryDate(Ljava/lang/String;J)Z
    .registers 10

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/dlp/XattrUtils;->isXattrOperationSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    sget-object v1, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/dlp/XattrUtils;->isActivated(I)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_58

    :cond_1d
    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-gez v1, :cond_3f

    const-string v1, "DLP_XattrManager_ksdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input parameters! time["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3f
    const-string v1, "XattrManager.setExpiryDate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v1

    if-eqz v1, :cond_57

    :try_start_4a
    invoke-interface {v1, v0, p1, p2, p3}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->setExpiryDate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v3
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4e} :catch_4f

    return v3

    :catch_4f
    move-exception v3

    const-string v4, "DLP_XattrManager_ksdk"

    const-string v5, "Exception in setExpiryDate"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    return v2

    :cond_58
    :goto_58
    const-string v1, "DLP_XattrManager_ksdk"

    const-string v3, "Xattr operation is not supported or dlp is deactivated, returning false !"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public setExpiryToUnzippedFiles(Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
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

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    iget-object v0, v0, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "DLP_XattrManager_ksdk"

    const-string/jumbo v1, "setExpiryToUnzippedFiles - DEVICE_ID is null, cannot proceed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    sget-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/dlp/XattrUtils;->isActivated(I)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "DLP_XattrManager_ksdk"

    const-string v1, "DLP is not activated ! Returning !"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/XattrManager;->getExrasFromZip(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/knox/dlp/XattrManager;->DBG:Z

    if-eqz v1, :cond_7a

    if-nez p2, :cond_35

    const-string v1, "DLP_XattrManager_ksdk"

    const-string v2, "dlpfiles is null"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :cond_35
    const-string v1, "DLP_XattrManager_ksdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dlpfiles length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string v2, "DLP_XattrManager_ksdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actual file path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_7a
    :goto_7a
    if-eqz p2, :cond_10f

    if-eqz v0, :cond_10f

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10f

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10f

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const-string v4, "DLP_XattrManager_ksdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_dlpOperation: setting the expiry date for translated path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_f3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/knox/dlp/XattrManager;->setExpiryDate(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_f2

    const-string v5, "DLP_XattrManager_ksdk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_decompress : Set Expiry Failed for File ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f2
    goto :goto_10e

    :cond_f3
    const-string v4, "DLP_XattrManager_ksdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_decompress : Couldn\'t find DLP flag (normal file) ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10e
    goto :goto_92

    :cond_10f
    const/4 v0, 0x0

    return-void
.end method
