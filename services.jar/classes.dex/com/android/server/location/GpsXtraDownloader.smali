.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final FAIL_REASON_DOWNLOAD_ERROR:I = 0x2

.field private static final FAIL_REASON_LARGE_DATA:I = 0x3

.field private static final FAIL_REASON_UNKNOWN:I = 0x4

.field private static final FAIL_REASON_UNKNOWN_SERVER:I = 0x1

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final NO_ERROR:I = 0x0

.field private static final READ_TIMEOUT_MS:I

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"

.field private static final XTRA_DOWNLOAD_FAIL:I = 0x3

.field private static final XTRA_DOWNLOAD_SUCCESS:I = 0x2

.field private static final XTRA_DOWNLOAD_TRIGGER:I = 0x1

.field private static final XTRA_DO_DOWNLOAD:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "XTRA_SERVER_1"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "XTRA_SERVER_2"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "XTRA_SERVER_3"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1c

    add-int/lit8 v0, v0, 0x1

    :cond_1c
    if-eqz v2, :cond_20

    add-int/lit8 v0, v0, 0x1

    :cond_20
    if-eqz v3, :cond_24

    add-int/lit8 v0, v0, 0x1

    :cond_24
    const-string v4, "XTRA_USER_AGENT"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_35

    const-string v5, "Android"

    iput-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_37

    :cond_35
    iput-object v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    :goto_37
    if-nez v0, :cond_44

    const-string v5, "GpsXtraDownloader"

    const-string v6, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    goto :goto_6f

    :cond_44
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v1, :cond_52

    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    aput-object v1, v5, v0

    move v0, v6

    :cond_52
    if-eqz v2, :cond_5b

    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    aput-object v2, v5, v0

    move v0, v6

    :cond_5b
    if-eqz v3, :cond_64

    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    aput-object v3, v5, v0

    move v0, v6

    :cond_64
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    :goto_6f
    return-void
.end method

.method private getBundle(III)Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private sendInfoToNsflp(ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput p1, v1, Landroid/os/Message;->what:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "GpsXtraDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading XTRA data from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/16 v7, 0x1b

    :try_start_24
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    const-string v0, "Accept"

    const-string v8, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v4, v0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "x-wap-profile"

    const-string/jumbo v8, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v4, v0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v0, Lcom/android/server/location/GpsXtraDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move v8, v0

    const/16 v0, 0xc8

    const/4 v9, 0x2

    if-eq v8, v0, :cond_7f

    sget-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v0, :cond_71

    const-string v0, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP error downloading gps XTRA: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    invoke-direct {v1, v6, v9, v5}, Lcom/android/server/location/GpsXtraDownloader;->getBundle(III)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lcom/android/server/location/GpsXtraDownloader;->sendInfoToNsflp(ILandroid/os/Bundle;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_78} :catch_f7
    .catchall {:try_start_24 .. :try_end_78} :catchall_f5

    nop

    if-eqz v4, :cond_7e

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7e
    return-object v3

    :cond_7f
    :try_start_7f
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_f7
    .catchall {:try_start_7f .. :try_end_83} :catchall_f5

    move-object v10, v0

    :try_start_84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v11, 0x400

    new-array v11, v11, [B

    :cond_8d
    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    move v13, v12

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eq v12, v14, :cond_c3

    invoke-virtual {v0, v11, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    int-to-long v14, v12

    const-wide/32 v16, 0xf4240

    cmp-long v12, v14, v16

    if-lez v12, :cond_8d

    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_b0

    const-string v9, "GpsXtraDownloader"

    const-string v12, "XTRA file too large"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    invoke-direct {v1, v6, v5, v5}, Lcom/android/server/location/GpsXtraDownloader;->getBundle(III)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v1, v7, v9}, Lcom/android/server/location/GpsXtraDownloader;->sendInfoToNsflp(ILandroid/os/Bundle;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_b7} :catch_dd
    .catchall {:try_start_84 .. :try_end_b7} :catchall_d9

    nop

    if-eqz v10, :cond_bd

    :try_start_ba
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_f7
    .catchall {:try_start_ba .. :try_end_bd} :catchall_f5

    :cond_bd
    if-eqz v4, :cond_c2

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c2
    return-object v3

    :cond_c3
    :try_start_c3
    invoke-direct {v1, v6, v15, v9}, Lcom/android/server/location/GpsXtraDownloader;->getBundle(III)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v1, v7, v9}, Lcom/android/server/location/GpsXtraDownloader;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_ce} :catch_dd
    .catchall {:try_start_c3 .. :try_end_ce} :catchall_d9

    if-eqz v10, :cond_d3

    :try_start_d0
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_f7
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_f5

    :cond_d3
    if-eqz v4, :cond_d8

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d8
    return-object v9

    :catchall_d9
    move-exception v0

    move-object v9, v0

    move-object v11, v3

    goto :goto_e3

    :catch_dd
    move-exception v0

    move-object v9, v0

    :try_start_df
    throw v9
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e0

    :catchall_e0
    move-exception v0

    move-object v11, v9

    move-object v9, v0

    :goto_e3
    if-eqz v10, :cond_f4

    if-eqz v11, :cond_f1

    :try_start_e7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_ea} :catch_eb
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_f7
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_f5

    goto :goto_f4

    :catch_eb
    move-exception v0

    move-object v12, v0

    :try_start_ed
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f4

    :cond_f1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_f4
    :goto_f4
    throw v9
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f5} :catch_f7
    .catchall {:try_start_ed .. :try_end_f5} :catchall_f5

    :catchall_f5
    move-exception v0

    goto :goto_111

    :catch_f7
    move-exception v0

    :try_start_f8
    sget-boolean v8, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v8, :cond_103

    const-string v8, "GpsXtraDownloader"

    const-string v9, "Error downloading gps XTRA: "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_103
    .catchall {:try_start_f8 .. :try_end_103} :catchall_f5

    :cond_103
    if-eqz v4, :cond_108

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_108
    const/4 v0, 0x4

    invoke-direct {v1, v6, v0, v5}, Lcom/android/server/location/GpsXtraDownloader;->getBundle(III)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lcom/android/server/location/GpsXtraDownloader;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    return-object v3

    :goto_111
    if-eqz v4, :cond_116

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_116
    throw v0
.end method

.method downloadXtraData()[B
    .registers 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2, v3}, Lcom/android/server/location/GpsXtraDownloader;->getBundle(III)Landroid/os/Bundle;

    move-result-object v4

    const/16 v5, 0x1b

    invoke-direct {p0, v5, v4}, Lcom/android/server/location/GpsXtraDownloader;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v4, :cond_1c

    const/4 v2, 0x3

    invoke-direct {p0, v3, v3, v2}, Lcom/android/server/location/GpsXtraDownloader;->getBundle(III)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/android/server/location/GpsXtraDownloader;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    const/4 v2, 0x0

    return-object v2

    :cond_1c
    :goto_1c
    if-nez v0, :cond_4c

    const/16 v4, -0xbc

    invoke-static {v4}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v4

    :try_start_24
    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_47

    move-object v0, v5

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    nop

    iget v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_41

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    :cond_41
    iget v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v5, v1, :cond_46

    goto :goto_4c

    :cond_46
    goto :goto_1c

    :catchall_47
    move-exception v2

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v2

    :cond_4c
    :goto_4c
    return-object v0
.end method
