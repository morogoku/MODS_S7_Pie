.class public Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;
.super Landroid/os/FileObserver;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider_samsung;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private secCheckCtsRestrictMode()V
    .registers 11

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_10} :catch_12

    move-object v1, v5

    :goto_11
    goto :goto_24

    :catch_12
    move-exception v5

    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Could not access file /sys/class/sensors/ssc_core/operation_mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :catch_1b
    move-exception v5

    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Could not open File /sys/class/sensors/ssc_core/operation_mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :goto_24
    if-eqz v1, :cond_53

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    :try_start_32
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_36} :catch_3d
    .catchall {:try_start_32 .. :try_end_36} :catchall_3b

    move-object v4, v5

    :goto_37
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_53

    :catchall_3b
    move-exception v5

    goto :goto_4f

    :catch_3d
    move-exception v5

    :try_start_3e
    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Could not load file /sys/class/sensors/ssc_core/operation_modedue to IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :catch_46
    move-exception v5

    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Could not load file /sys/class/sensors/ssc_core/operation_modedue to IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_3b

    goto :goto_37

    :goto_4f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    :cond_53
    :goto_53
    if-eqz v4, :cond_96

    const-string v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CTS sensorservice restrict_mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "restrict"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string/jumbo v5, "normal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    :cond_7d
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    const/16 v6, 0x18

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CTS_RESTRICTMODE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$1100(Lcom/android/server/location/GnssLocationProvider_samsung;IILjava/lang/Object;)V

    :cond_96
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 6

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTS restrict mode : event ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "CTS restrict mode : file modified!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;->secCheckCtsRestrictMode()V

    :cond_23
    return-void
.end method
