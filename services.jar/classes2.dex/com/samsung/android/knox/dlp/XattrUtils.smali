.class public Lcom/samsung/android/knox/dlp/XattrUtils;
.super Ljava/lang/Object;
.source "XattrUtils.java"


# static fields
.field protected static final COMPONENT_NAME:Ljava/lang/String; = "DLP-Apps"

.field protected static final CONSUMER:I = 0x1

.field protected static final CREATOR:I = 0x0

.field protected static final DATA_LEN:I = 0x2

.field private static final DBG:Z

.field protected static final DELIMITTER:Ljava/lang/String; = ","

.field protected static final DLP_DATA_SIGN:Ljava/lang/String; = "DLPX"

.field protected static final DLP_EXPIRY_LEN:I = 0xa

.field protected static final DLP_HEADER:Ljava/lang/String; = "DX"

.field protected static final DLP_SIGN_LEN:I

.field protected static final DOWNLOAD_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.downloads"

.field protected static final EXP_DLP:I = 0x3

.field protected static final HEADER_LEN:I = 0x2

.field protected static final MEDIA_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.media"

.field protected static final NON_DLP:I = 0x2

.field protected static final SEPARATOR:Ljava/lang/String; = ":"

.field protected static final SEPARATOR_LEN:I

.field private static final TAG:Ljava/lang/String; = "DLP_XattrUtils"

.field protected static final UNEXP_DLP:I = 0x1

.field private static _instance:Lcom/samsung/android/knox/dlp/XattrUtils;

.field private static mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;


# instance fields
.field private final PATH_MNT_KNOX:Ljava/lang/String;

.field private final PATH_STORAGE_EMULATED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/samsung/android/knox/dlp/DLPConstants;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/knox/dlp/XattrUtils;->DBG:Z

    const-string v0, "DLPX"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/samsung/android/knox/dlp/XattrUtils;->DLP_SIGN_LEN:I

    const-string v0, ":"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/samsung/android/knox/dlp/XattrUtils;->SEPARATOR_LEN:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

    sput-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/storage/emulated"

    iput-object v0, p0, Lcom/samsung/android/knox/dlp/XattrUtils;->PATH_STORAGE_EMULATED:Ljava/lang/String;

    const-string v0, "/data/knox/sdcard"

    iput-object v0, p0, Lcom/samsung/android/knox/dlp/XattrUtils;->PATH_MNT_KNOX:Ljava/lang/String;

    return-void
.end method

.method private getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    const-string v1, "_data"

    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_35

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_35

    sget-boolean v2, Lcom/samsung/android/knox/dlp/XattrUtils;->DBG:Z

    if-eqz v2, :cond_25

    invoke-static {v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    :cond_25
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_3c

    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_34
    return-object v3

    :cond_35
    if-eqz v0, :cond_3a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3a
    const/4 v2, 0x0

    return-object v2

    :catchall_3c
    move-exception v2

    if-eqz v0, :cond_42

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v2
.end method

.method protected static getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    if-nez v0, :cond_28

    const-string v0, "enterprise_dlp_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    const-string v0, "DLP_XattrUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService: DLP_SERVICE : enterprise_dlp_service mDLPManagerPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knox/dlp/XattrUtils;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    sget-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    return-object v0
.end method

.method public static getXattrUtilInstance()Lcom/samsung/android/knox/dlp/XattrUtils;
    .registers 2

    sget-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/samsung/android/knox/dlp/XattrUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-direct {v1}, Lcom/samsung/android/knox/dlp/XattrUtils;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

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
    sget-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

    return-object v0
.end method

.method private isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 4

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 4

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMediaDocument(Landroid/net/Uri;)Z
    .registers 4

    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addToAuditLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .registers 16

    invoke-virtual {p0, p6}, Lcom/samsung/android/knox/dlp/XattrUtils;->isActivated(I)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "DLP_XattrUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToAuditLog:DLP is deactivated for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", returning!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v0

    if-eqz v0, :cond_4f

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    :try_start_2f
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->addToAuditLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    :goto_32
    goto :goto_56

    :catch_33
    move-exception v1

    const-string v2, "DLP_XattrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToAuditLog: Exception occurred : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_4f
    const-string v1, "DLP_XattrUtils"

    const-string v2, "addToAuditLog: DLPManagerPolicyService is null"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    return-void
.end method

.method public checkAndConvertSdcardPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/storage/emulated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "/storage/emulated"

    const-string v1, "/data/knox/sdcard"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method public checkAndGetSdcardPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/data/knox/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "/data/knox/sdcard"

    const-string v1, "/storage/emulated"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method protected getAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 12

    sget-boolean v0, Lcom/samsung/android/knox/dlp/XattrUtils;->DBG:Z

    if-eqz v0, :cond_6a

    const-string v0, "DLP_XattrUtils File -"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_74

    move v0, v3

    goto :goto_75

    :cond_74
    move v0, v2

    :goto_75
    const/4 v1, 0x0

    if-eqz v0, :cond_11a

    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_11a

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/dlp/XattrUtils;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v2

    const-string/jumbo v6, "primary"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v5, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_b4
    goto :goto_11a

    :cond_b5
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/dlp/XattrUtils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://downloads/public_downloads"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1, v1}, Lcom/samsung/android/knox/dlp/XattrUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d6
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/dlp/XattrUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_11a

    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    const/4 v6, 0x0

    const-string v7, "image"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f4

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_10a

    :cond_f4
    const-string/jumbo v7, "video"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_100

    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_10a

    :cond_100
    const-string v7, "audio"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10a

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_10a
    :goto_10a
    const-string v7, "_id=?"

    new-array v8, v3, [Ljava/lang/String;

    aget-object v3, v4, v3

    aput-object v3, v8, v2

    move-object v2, v8

    const-string v3, "_id=?"

    invoke-direct {p0, p1, v6, v3, v2}, Lcom/samsung/android/knox/dlp/XattrUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_11a
    :goto_11a
    return-object v1
.end method

.method protected getAdminExpiry()J
    .registers 11

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    :try_start_d
    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v5

    if-eqz v5, :cond_27

    invoke-interface {v5, v0}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ExpiryAfter"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v3, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_25} :catch_28

    add-long/2addr v6, v3

    move-wide v1, v6

    :cond_27
    goto :goto_43

    :catch_28
    move-exception v3

    const-string v4, "DLP_XattrUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    return-wide v1
.end method

.method public getMediaCreatorPkgs(Landroid/content/Context;)Ljava/util/HashSet;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    move-object v6, v2

    move v2, v3

    :goto_2b
    if-ge v2, v5, :cond_77

    aget-object v7, v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6d

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_74

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "DLP_XattrUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Packagename resolved is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_6d
    const-string v8, "DLP_XattrUtils"

    const-string v9, "Resolve info is not appropriate! Adding nothing!"

    invoke-static {v8, v9}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_77
    return-object v0
.end method

.method protected isActivated(I)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v1

    if-eqz v1, :cond_15

    :try_start_7
    invoke-interface {v1, p1}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->isDLPActivated(I)Z

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move v0, v2

    goto :goto_15

    :catch_d
    move-exception v2

    const-string v3, "DLP_XattrUtils"

    const-string v4, "isActivated: Exception in isActivated"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_15
    const-string v2, "DLP_XattrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLP : isActivated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected isDomainWhitelisted(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 19

    move-object/from16 v1, p1

    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c7

    const/4 v0, 0x0

    move-object v4, v0

    move-object/from16 v5, p2

    :try_start_d
    invoke-interface {v2, v5}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    const-string v0, ""

    const-string v6, "Domains"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a3

    const-string v6, "Domains"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    goto/16 :goto_a2

    :cond_2d
    const-string v6, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_37

    return v7

    :cond_37
    const-string v6, "DLP_XattrUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full domain URL is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "(https?://|ftp://)(www.)?([^:^/]*)(:\\d*)?(.*)?"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_5e

    return v3

    :cond_5e
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_a1

    array-length v13, v11

    if-nez v13, :cond_70

    goto :goto_a1

    :cond_70
    new-instance v13, Ljava/util/HashSet;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v12, v13

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_9e

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9e

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9e

    return v7

    :cond_9e
    goto :goto_7e

    :cond_9f
    nop

    goto :goto_c9

    :cond_a1
    :goto_a1
    return v3

    :cond_a2
    :goto_a2
    return v3

    :cond_a3
    const-string v6, "DLP_XattrUtils"

    const-string v7, "config bundle does not contain trusted domains field"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_aa} :catch_ab

    return v3

    :catch_ab
    move-exception v0

    const-string v6, "DLP_XattrUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    :cond_c7
    move-object/from16 v5, p2

    :goto_c9
    return v3
.end method

.method protected isXattrOperationSupported(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    :try_start_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_15

    xor-int/lit8 v1, v1, 0x1

    return v1

    :catch_15
    move-exception v1

    const-string v2, "DLP_XattrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in isXattrOperationSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return v0
.end method

.method protected notifyDLPOpenedFile(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 11

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget v1, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/dlp/XattrUtils;->isActivated(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    const-string v1, "DLP_XattrUtils"

    const-string/jumbo v3, "notifyDLPOpenedFile : DLP is deactivated, returning!"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1b
    const-string v1, "XattrManager.notifyDLPOpenedFile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_20
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.providers.media"

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    if-eq v1, v4, :cond_53

    const-string v4, "com.android.providers.downloads"

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    if-eq v1, v4, :cond_53

    const-string v4, "DLP_XattrUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller is not media provider or download provider, caller process uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_52} :catch_68

    return v2

    :cond_53
    nop

    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getService()Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    move-result-object v1

    if-eqz v1, :cond_67

    :try_start_5a
    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;->notifyDLPOpenedFile(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Z

    move-result v3
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5e} :catch_5f

    return v3

    :catch_5f
    move-exception v3

    const-string v4, "DLP_XattrUtils"

    const-string v5, "Exception in notifyDLPOpenedFile"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    return v2

    :catch_68
    move-exception v1

    const-string v3, "DLP_XattrUtils"

    const-string v4, "exception came while finding package"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v2
.end method
