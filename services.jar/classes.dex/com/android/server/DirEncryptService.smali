.class Lcom/android/server/DirEncryptService;
.super Lcom/samsung/android/security/IDirEncryptService$Stub;
.source "DirEncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    }
.end annotation


# static fields
.field private static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field private static final REQUESTER_USER:Ljava/lang/String; = "user"

.field private static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field private final ENCRYPT:I

.field private final PRESCAN_FULL_ERR:I

.field private final RESPONSE_BASE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field private mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReady:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/DirEncryptService;->RESPONSE_BASE:I

    const/16 v0, 0x2ab

    iput v0, p0, Lcom/android/server/DirEncryptService;->ENCRYPT:I

    const/16 v0, 0x2ae

    iput v0, p0, Lcom/android/server/DirEncryptService;->PRESCAN_FULL_ERR:I

    new-instance v0, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "DirEncryptService"

    const-string v1, "ctor DirEncryptService....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    new-instance v0, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    move-result v0

    return v0
.end method

.method private authByUid(I)Z
    .registers 4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    return v1

    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method private checkSystemUid(I)Z
    .registers 4

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_d

    const-string v0, "DirEncryptService"

    const-string v1, "Invalid uid. Only SYSTEM can use DirEncryptService Call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v1, v2

    const-wide/16 v5, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    move-object v3, v1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    const/16 v2, 0x1a0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2a} :catch_8b
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2a} :catch_59
    .catchall {:try_start_2 .. :try_end_2a} :catchall_56

    if-eqz v0, :cond_32

    :try_start_2c
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_32

    :catch_30
    move-exception v2

    goto :goto_38

    :cond_32
    :goto_32
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_30

    goto :goto_55

    :goto_38
    nop

    const-string v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_40
    const-string v5, "Error close FileChannel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bd

    :cond_55
    :goto_55
    goto :goto_bd

    :catchall_56
    move-exception v2

    goto/16 :goto_dc

    :catch_59
    move-exception v2

    :try_start_5a
    const-string v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error chmod ode logs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_56

    if-eqz v0, :cond_7c

    :try_start_76
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_7c

    :catch_7a
    move-exception v2

    goto :goto_82

    :cond_7c
    :goto_7c
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_81} :catch_7a

    goto :goto_55

    :goto_82
    nop

    const-string v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_40

    :catch_8b
    move-exception v2

    :try_start_8c
    const-string v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error copy ode logs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_8c .. :try_end_a6} :catchall_56

    if-eqz v0, :cond_ae

    :try_start_a8
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_ae

    :catch_ac
    move-exception v2

    goto :goto_b4

    :cond_ae
    :goto_ae
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b3} :catch_ac

    goto :goto_55

    :goto_b4
    nop

    const-string v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_40

    :goto_bd
    const-string v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_dc
    nop

    if-eqz v0, :cond_e5

    :try_start_df
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_e5

    :catch_e3
    move-exception v3

    goto :goto_eb

    :cond_e5
    :goto_e5
    if-eqz v1, :cond_107

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_ea} :catch_e3

    goto :goto_107

    :goto_eb
    nop

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error close FileChannel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DirEncryptService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_107
    :goto_107
    throw v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    if-eqz v1, :cond_53

    const-string/jumbo v1, "status"

    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->getCurrentStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "isSdCardEncryped"

    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->isSdCardEncryped()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "lasterror"

    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->getLastError()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "spacerequired"

    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->getAdditionalSpaceRequired()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "isAdminApplied"

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "EncryptTimestamp"

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->getEncryptTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DecryptTimestamp"

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->getDecryptTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_56} :catch_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_7b

    :catch_57
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dump ex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7c

    :catch_72
    move-exception v0

    const-string v1, "DirEncryptService"

    const-string/jumbo v2, "dump formatting failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7b
    nop

    :goto_7c
    return-void
.end method

.method private findRequester(I)Ljava/lang/String;
    .registers 8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name uidApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name myUID  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_d5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5b

    goto :goto_d5

    :cond_5b
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "DirEncryptService"

    const-string v3, "REQUESTER_UNKNOWN..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    return-object v2

    :cond_6d
    if-eq v0, p1, :cond_77

    const-string v2, "DirEncryptService"

    const-string v3, "REQUESTER_APP..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_77
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling pid package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_b7

    const-string v3, "DirEncryptService"

    const-string v4, "Calling package name is null..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    return-object v3

    :cond_b7
    const-string v3, "com.android.settings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    const-string v3, "DirEncryptService"

    const-string v4, "REQUESTER_USER..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "user"

    return-object v3

    :cond_ca
    const-string v3, "DirEncryptService"

    const-string v4, "REQUESTER_DM..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "dm"

    return-object v3

    :cond_d5
    :goto_d5
    const-string v2, "DirEncryptService"

    const-string v3, "REQUESTER_APP..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getCallingProcessPkg(I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_27

    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_27
    goto :goto_15

    :cond_28
    return-object v0
.end method

.method private moveDumpstate()Z
    .registers 10

    const-string/jumbo v0, "trigger_restart_min_framework"

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    goto :goto_77

    :cond_13
    sget-object v3, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_25

    const-string v3, "DirEncryptService"

    const-string/jumbo v5, "moveDumpstate - RECOVERY_DIR was not exist!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_25
    sget-object v3, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_78

    array-length v5, v3

    if-gtz v5, :cond_31

    goto :goto_78

    :cond_31
    nop

    :goto_32
    array-length v5, v3

    if-ge v4, v5, :cond_76

    aget-object v5, v3, v4

    if-eqz v5, :cond_73

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_73

    aget-object v5, v3, v4

    const-string/jumbo v6, "last_ode_dumpstate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    aget-object v7, v3, v4

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/log/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v6}, Lcom/android/server/DirEncryptService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_76
    const/4 v2, 0x1

    :goto_77
    return v2

    :cond_78
    :goto_78
    const-string v5, "DirEncryptService"

    const-string/jumbo v6, "moveDumpstate - fileList is null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .registers 7

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/DirEncryptServiceHelper;->SetMountSDcardToHelper(Z)V

    goto :goto_22

    :cond_1b
    const-string v3, "DirEncryptService"

    const-string v4, "SetMountSDcardToHelper error: invalid uid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public clearPrefs(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptPrefs;->clearPrefs(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump DirEncryptService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_3d
    invoke-direct {p0, p2}, Lcom/android/server/DirEncryptService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_45

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 10

    const-string v0, "DirEncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check the state of external SD card mount path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v0, 0xc8

    return v0

    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_92

    :cond_30
    const/16 v1, 0xc9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    new-instance v4, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v5, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    const/4 v1, 0x0

    const-string v6, "DirEncryptService"

    const-string v7, "SD card mounted, need unmount..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    const/16 v1, 0xd

    goto :goto_8e

    :cond_64
    const-string v6, "HiddenMount"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const-string v6, "DirEncryptService"

    const-string v7, "SD card ready, need encrypt cycle..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    const/16 v1, 0xd

    goto :goto_8e

    :cond_85
    const-string v6, "DirEncryptService"

    const-string v7, "SD card not mounted, so not applying policies this time"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xca

    :goto_8e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_92
    :goto_92
    const-string v1, "DirEncryptService"

    const-string v2, "Invalid requester"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xcc

    return v1
.end method

.method public getAdditionalSpaceRequired()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result v0

    return v0
.end method

.method public getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v4, "DirEncryptService"

    const-string v5, "EncPrefs found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/DirEncryptServiceHelper;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    goto :goto_3c

    :cond_2c
    const-string v4, "DirEncryptService"

    const-string v5, "EncPrefs not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_34
    const-string v4, "DirEncryptService"

    const-string/jumbo v5, "getSdCardEncryptionPreferences error: invalid uid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public isSdCardEncryped()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .registers 6

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string v3, "DirEncryptService"

    const-string/jumbo v4, "isStorageCardEncryptionPoliciesApplied....."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .registers 4

    const-string v0, "DirEncryptService"

    const-string v1, " onCheckHoldWakeLock ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    const-string v0, "DirEncryptService"

    const-string v1, " onDaemonConnected ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "DirEncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEventcode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " raw: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cooked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/16 v5, 0x2ae

    if-ne v1, v5, :cond_47

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DirEncryptService"

    const-string v11, "Encrypting storage card failed"

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_47
    const/16 v5, 0x2ab

    if-ne v1, v5, :cond_8d

    const/4 v5, 0x3

    aget-object v5, v3, v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "success"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    if-ne v6, v4, :cond_6f

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "DirEncryptService"

    const-string v13, "Encrypting storage card succeeded"

    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_6f
    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string v18, "DirEncryptService"

    const-string v19, "Decrypting storage card succeeded"

    invoke-static/range {v14 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_7f
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DirEncryptService"

    const-string v12, "Encrypting storage card failed"

    invoke-static/range {v7 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    iget-object v5, v0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    new-instance v6, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->post(Ljava/lang/Runnable;)Z

    return v4
.end method

.method public registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .registers 7

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/DirEncryptServiceHelper;->setNeedToCreateKey(Z)V

    goto :goto_29

    :cond_21
    const-string v3, "DirEncryptService"

    const-string/jumbo v4, "setNeedToCreateKey error: invalid uid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)I
    .registers 9

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xc8

    return v0

    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v5

    if-nez v5, :cond_27

    const-string v5, ".*android.uid.systemui.*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    const/4 v3, 0x0

    :cond_27
    const-string v5, "DirEncryptService"

    const-string/jumbo v6, "setPassword....."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v5

    if-eqz v5, :cond_42

    if-eqz v3, :cond_42

    iget-object v5, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4a

    :cond_42
    const-string v5, "DirEncryptService"

    const-string/jumbo v6, "setPassword error: invalid uid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v5, 0xd

    return v5
.end method

.method public setSdCardEncryptionPolicy(IILjava/lang/String;)I
    .registers 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const/16 v5, 0xc8

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x2

    if-ne v3, v0, :cond_22

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DirEncryptService"

    const-string v11, "Encrypting storage card failed"

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_22
    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "DirEncryptService"

    const-string v17, "Decrypting storage card failed"

    invoke-static/range {v12 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_30
    return v5

    :cond_31
    const-string v0, "DirEncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSdCardEncryptionPolicy: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_60
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    if-nez v4, :cond_7e

    iget-object v10, v1, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v10}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    if-nez v4, :cond_7e

    const-string v10, "FFFF-FFFF"

    move-object v4, v10

    :cond_7e
    const-string v10, "DirEncryptService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setSdCardEncryptionPolicy : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v10, v2, v3, v4}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v11, v4}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v11

    const/4 v12, -0x1

    if-ne v3, v12, :cond_a9

    invoke-virtual {v11}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v12

    iput v12, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    :cond_a9
    invoke-virtual {v11, v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_149

    iget-object v12, v1, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v12}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v12

    if-eqz v12, :cond_c5

    const-string v12, "DirEncryptService"

    const-string v13, "Cannot save the policy if SD card is being encrypted/decrypted"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v12, 0xf

    monitor-exit v6

    return v12

    :cond_c5
    const-string v12, "DirEncryptService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Called by: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v7}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v12

    if-eqz v12, :cond_13e

    const-string/jumbo v12, "user"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f8

    iget-object v12, v1, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v12, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v12

    if-eqz v12, :cond_f5

    const/16 v5, 0x8

    goto :goto_152

    :cond_f5
    const/16 v5, 0x9

    goto :goto_152

    :cond_f8
    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v12

    if-eqz v12, :cond_130

    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_130

    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v12

    if-eqz v12, :cond_10c

    goto :goto_130

    :cond_10c
    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v12

    invoke-virtual {v11}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v13

    if-eq v12, v13, :cond_128

    iget-object v12, v1, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v12, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v12

    if-eqz v12, :cond_152

    const-string v12, "DirEncryptService"

    const-string v13, "SD card encryption policy by EAS/MDM requests is changed"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x9

    goto :goto_152

    :cond_128
    const-string v12, "DirEncryptService"

    const-string v13, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_152

    :cond_130
    :goto_130
    iget-object v12, v1, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v12, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v12

    if-eqz v12, :cond_13b

    const/16 v5, 0x8

    goto :goto_152

    :cond_13b
    const/16 v5, 0x9

    goto :goto_152

    :cond_13e
    const-string v12, "DirEncryptService"

    const-string/jumbo v13, "setSdCardEncryptionPolicy error: invalid uid"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x9

    goto :goto_152

    :cond_149
    const-string v12, "DirEncryptService"

    const-string v13, "Policy has already been saved."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xa

    :cond_152
    :goto_152
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    return v5

    :catchall_15a
    move-exception v0

    monitor-exit v6
    :try_end_15c
    .catchall {:try_start_60 .. :try_end_15c} :catchall_15a

    throw v0
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .registers 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/16 v5, 0xc8

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    const/4 v6, 0x2

    if-nez v0, :cond_31

    if-ne v2, v6, :cond_22

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DirEncryptService"

    const-string v12, "Encrypting storage card failed"

    invoke-static/range {v7 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_22
    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    const-string v17, "DirEncryptService"

    const-string v18, "Decrypting storage card failed"

    invoke-static/range {v13 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_30
    return v5

    :cond_31
    const-string v0, "DirEncryptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStorageCardEncryption: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v6, :cond_71

    const/4 v0, 0x3

    if-eq v2, v0, :cond_71

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DirEncryptService"

    const-string v12, "Decrypting storage card failed"

    invoke-static/range {v7 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_71
    const/4 v0, 0x4

    if-eq v3, v0, :cond_98

    const/4 v7, 0x5

    if-eq v3, v7, :cond_98

    if-ne v2, v6, :cond_88

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "DirEncryptService"

    const-string v13, "Encrypting storage card failed"

    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    :cond_88
    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string v18, "DirEncryptService"

    const-string v19, "Decrypting storage card failed"

    invoke-static/range {v14 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_97
    return v5

    :cond_98
    if-ne v3, v0, :cond_ab

    if-eq v2, v6, :cond_ab

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "DirEncryptService"

    const-string v11, "Decrypting storage card failed"

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_ab
    const/4 v0, 0x6

    if-eq v4, v0, :cond_d1

    const/4 v0, 0x7

    if-eq v4, v0, :cond_d1

    if-ne v2, v6, :cond_c2

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "DirEncryptService"

    const-string v12, "Encrypting storage card failed"

    invoke-static/range {v7 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d0

    :cond_c2
    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    const-string v17, "DirEncryptService"

    const-string v18, "Decrypting storage card failed"

    invoke-static/range {v13 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_d0
    return v5

    :cond_d1
    iget-object v7, v1, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    new-instance v12, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v14

    if-ne v2, v6, :cond_f9

    const/4 v15, 0x0

    goto :goto_fa

    :cond_f9
    const/4 v15, 0x1

    :goto_fa
    invoke-direct {v12, v14, v15, v13}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    iget-object v14, v1, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v14}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v13

    const-string v14, "DirEncryptService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStorageCardEncryptionPolicy : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v6}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v12}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a4

    iget-object v6, v1, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v6

    if-eqz v6, :cond_142

    const-string v6, "DirEncryptService"

    const-string v14, "Cannot save the policy if SD card is being encrypted/decrypted"

    invoke-static {v6, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v6, 0xf

    monitor-exit v7

    return v6

    :cond_142
    const-string v6, "DirEncryptService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Called by: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v8}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v6

    if-eqz v6, :cond_199

    const-string/jumbo v6, "user"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_175

    iget-object v6, v1, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v6, v12}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v6

    if-eqz v6, :cond_172

    const/16 v5, 0x8

    goto :goto_1ad

    :cond_172
    const/16 v5, 0x9

    goto :goto_1ad

    :cond_175
    invoke-virtual {v12}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v6

    const/4 v14, 0x2

    if-eq v6, v14, :cond_18b

    invoke-virtual {v12}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v6

    if-eqz v6, :cond_183

    goto :goto_18b

    :cond_183
    const-string v6, "DirEncryptService"

    const-string v14, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    invoke-static {v6, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ad

    :cond_18b
    :goto_18b
    iget-object v6, v1, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v6, v12}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v6

    if-eqz v6, :cond_196

    const/16 v5, 0x8

    goto :goto_1ad

    :cond_196
    const/16 v5, 0x9

    goto :goto_1ad

    :cond_199
    const-string v6, "DirEncryptService"

    const-string/jumbo v14, "setStorageCardEncryptionPolicy error: invalid uid"

    invoke-static {v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x9

    goto :goto_1ad

    :cond_1a4
    const-string v6, "DirEncryptService"

    const-string v14, "Policy has already been saved."

    invoke-static {v6, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xa

    :goto_1ad
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7

    return v5

    :catchall_1b5
    move-exception v0

    monitor-exit v7
    :try_end_1b7
    .catchall {:try_start_d4 .. :try_end_1b7} :catchall_1b5

    throw v0
.end method

.method public systemReady()V
    .registers 9

    const-string v0, "DirEncryptService"

    const-string v1, "Calling systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    :try_start_2d
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "dir_enc_report"

    const/16 v4, 0x1f4

    const-string v5, "DirEncryptConnector"

    const/16 v6, 0xa0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "DirEncryptConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DirEncryptService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_70} :catch_71

    goto :goto_8f

    :catch_71
    move-exception v0

    const-string v1, "DirEncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeDaemonConnector exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    :goto_8f
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->registerStorageEventListener()Z

    return-void
.end method

.method public unmountSDCardByAdmin()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCardByAdmin()V

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    return-void
.end method
