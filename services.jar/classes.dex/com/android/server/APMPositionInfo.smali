.class public Lcom/android/server/APMPositionInfo;
.super Ljava/lang/Object;
.source "APMPositionInfo.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "APMPositionInfo_APM"

.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL

.field private static final MIN_TIME_BW_UPDATES:J = 0xea60L

.field private static final TIMEOUT:I = 0x9c4

.field private static instance:Lcom/android/server/APMPositionInfo;


# instance fields
.field private locationManager:Landroid/location/LocationManager;

.field private final mContext:Landroid/content/Context;

.field private mLatitude:D

.field private mLocation:Landroid/location/Location;

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/APMPositionInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getLocationManager(Landroid/content/Context;)Lcom/android/server/APMPositionInfo;
    .registers 2

    sget-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/APMPositionInfo;

    invoke-direct {v0, p0}, Lcom/android/server/APMPositionInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    :cond_b
    sget-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    return-object v0
.end method


# virtual methods
.method public callLocationInfo(Landroid/content/Context;)Z
    .registers 19

    move-object/from16 v8, p0

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v10, v0

    const-wide/16 v2, 0x0

    :try_start_8
    iput-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    iput-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string/jumbo v0, "location"
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_f} :catch_21a
    .catchall {:try_start_8 .. :try_end_f} :catchall_215

    move-object/from16 v11, p1

    :try_start_11
    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_203

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    move v12, v0

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    move v13, v0

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "passive"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    move v14, v0

    const-string v0, "APMPositionInfo_APM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNetworkEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isGPSEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isPassiveEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_83

    if-nez v12, :cond_83

    if-nez v14, :cond_83

    const-string v0, "APMPositionInfo_APM"

    const-string v2, "Can\'t get Location information"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_6f} :catch_213
    .catchall {:try_start_11 .. :try_end_6f} :catchall_238

    const/4 v0, 0x0

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    :cond_76
    if-eqz v9, :cond_7c

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v9, 0x0

    :cond_7c
    if-eqz v10, :cond_82

    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v10, 0x0

    :cond_82
    return v0

    :cond_83
    const-wide/16 v6, 0x9c4

    if-eqz v14, :cond_106

    :try_start_87
    monitor-enter p0
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_88} :catch_fc
    .catch Ljava/lang/SecurityException; {:try_start_87 .. :try_end_88} :catch_213
    .catchall {:try_start_87 .. :try_end_88} :catchall_238

    :try_start_88
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "APMLocationUpdates"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_f9

    move-object v15, v0

    :try_start_90
    invoke-virtual {v15}, Landroid/os/HandlerThread;->start()V

    iget-object v1, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "passive"

    const-wide/32 v3, 0xea60

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_a1
    .catchall {:try_start_90 .. :try_end_a1} :catchall_f6

    move-object v6, v8

    move-object v7, v0

    :try_start_a3
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_f2

    const-wide/16 v6, 0x9c4

    :try_start_a8
    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_f6

    :try_start_ac
    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_ee

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string v0, "APMPositionInfo_APM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passiveenabled.... mLatitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " mLongitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/lang/InterruptedException; {:try_start_ac .. :try_end_ee} :catch_ef
    .catch Ljava/lang/SecurityException; {:try_start_ac .. :try_end_ee} :catch_17b
    .catchall {:try_start_ac .. :try_end_ee} :catchall_178

    :cond_ee
    goto :goto_107

    :catch_ef
    move-exception v0

    move-object v1, v15

    goto :goto_fd

    :catchall_f2
    move-exception v0

    const-wide/16 v6, 0x9c4

    goto :goto_f7

    :catchall_f6
    move-exception v0

    :goto_f7
    move-object v1, v15

    goto :goto_fa

    :catchall_f9
    move-exception v0

    :goto_fa
    :try_start_fa
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    :try_start_fb
    throw v0
    :try_end_fc
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_fc} :catch_fc
    .catch Ljava/lang/SecurityException; {:try_start_fb .. :try_end_fc} :catch_213
    .catchall {:try_start_fb .. :try_end_fc} :catchall_238

    :catch_fc
    move-exception v0

    :goto_fd
    if-eqz v1, :cond_103

    :try_start_ff
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    :cond_103
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_106
    .catch Ljava/lang/SecurityException; {:try_start_ff .. :try_end_106} :catch_213
    .catchall {:try_start_ff .. :try_end_106} :catchall_238

    :cond_106
    move-object v15, v1

    :goto_107
    if-eqz v13, :cond_18a

    :try_start_109
    monitor-enter p0
    :try_end_10a
    .catch Ljava/lang/InterruptedException; {:try_start_109 .. :try_end_10a} :catch_17f
    .catch Ljava/lang/SecurityException; {:try_start_109 .. :try_end_10a} :catch_17b
    .catchall {:try_start_109 .. :try_end_10a} :catchall_178

    :try_start_10a
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "APMLocationUpdates"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    iget-object v1, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    const-wide/32 v3, 0xea60

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_123
    .catchall {:try_start_10a .. :try_end_123} :catchall_175

    move-object v6, v8

    move-object v7, v0

    :try_start_125
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_171

    const-wide/16 v6, 0x9c4

    :try_start_12a
    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_12e
    .catchall {:try_start_12a .. :try_end_12e} :catchall_175

    :try_start_12e
    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_170

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string v0, "APMPositionInfo_APM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkenabled.... mLatitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " mLongitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catch Ljava/lang/InterruptedException; {:try_start_12e .. :try_end_170} :catch_17f
    .catch Ljava/lang/SecurityException; {:try_start_12e .. :try_end_170} :catch_17b
    .catchall {:try_start_12e .. :try_end_170} :catchall_178

    :cond_170
    goto :goto_18a

    :catchall_171
    move-exception v0

    const-wide/16 v6, 0x9c4

    goto :goto_176

    :catchall_175
    move-exception v0

    :goto_176
    :try_start_176
    monitor-exit p0
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_175

    :try_start_177
    throw v0
    :try_end_178
    .catch Ljava/lang/InterruptedException; {:try_start_177 .. :try_end_178} :catch_17f
    .catch Ljava/lang/SecurityException; {:try_start_177 .. :try_end_178} :catch_17b
    .catchall {:try_start_177 .. :try_end_178} :catchall_178

    :catchall_178
    move-exception v0

    goto/16 :goto_23a

    :catch_17b
    move-exception v0

    move-object v1, v15

    goto/16 :goto_21d

    :catch_17f
    move-exception v0

    if-eqz v9, :cond_187

    :try_start_182
    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    move-object v9, v1

    :cond_187
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_18a
    .catch Ljava/lang/SecurityException; {:try_start_182 .. :try_end_18a} :catch_17b
    .catchall {:try_start_182 .. :try_end_18a} :catchall_178

    :cond_18a
    :goto_18a
    if-eqz v12, :cond_204

    :try_start_18c
    monitor-enter p0
    :try_end_18d
    .catch Ljava/lang/InterruptedException; {:try_start_18c .. :try_end_18d} :catch_1f7
    .catch Ljava/lang/SecurityException; {:try_start_18c .. :try_end_18d} :catch_17b
    .catchall {:try_start_18c .. :try_end_18d} :catchall_178

    :try_start_18d
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "APMLocationUpdates"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    iget-object v1, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    const-wide/32 v3, 0xea60

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v6, v8

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {v8, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_1b1
    .catchall {:try_start_18d .. :try_end_1b1} :catchall_1f4

    :try_start_1b1
    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1f3

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    iget-object v0, v8, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string v0, "APMPositionInfo_APM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gpsenabled.... mLatitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " mLongitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/android/server/APMPositionInfo;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f3
    .catch Ljava/lang/InterruptedException; {:try_start_1b1 .. :try_end_1f3} :catch_1f7
    .catch Ljava/lang/SecurityException; {:try_start_1b1 .. :try_end_1f3} :catch_17b
    .catchall {:try_start_1b1 .. :try_end_1f3} :catchall_178

    :cond_1f3
    goto :goto_204

    :catchall_1f4
    move-exception v0

    :try_start_1f5
    monitor-exit p0
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_1f4

    :try_start_1f6
    throw v0
    :try_end_1f7
    .catch Ljava/lang/InterruptedException; {:try_start_1f6 .. :try_end_1f7} :catch_1f7
    .catch Ljava/lang/SecurityException; {:try_start_1f6 .. :try_end_1f7} :catch_17b
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_178

    :catch_1f7
    move-exception v0

    if-eqz v10, :cond_1ff

    :try_start_1fa
    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    move-object v10, v1

    :cond_1ff
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_202
    .catch Ljava/lang/SecurityException; {:try_start_1fa .. :try_end_202} :catch_17b
    .catchall {:try_start_1fa .. :try_end_202} :catchall_178

    goto :goto_204

    :cond_203
    move-object v15, v1

    :cond_204
    :goto_204
    if-eqz v15, :cond_20a

    invoke-virtual {v15}, Landroid/os/HandlerThread;->quit()Z

    const/4 v15, 0x0

    :cond_20a
    if-eqz v9, :cond_210

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v9, 0x0

    :cond_210
    if-eqz v10, :cond_236

    goto :goto_232

    :catch_213
    move-exception v0

    goto :goto_21d

    :catchall_215
    move-exception v0

    move-object/from16 v11, p1

    :goto_218
    move-object v15, v1

    goto :goto_23a

    :catch_21a
    move-exception v0

    move-object/from16 v11, p1

    :goto_21d
    :try_start_21d
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_220
    .catchall {:try_start_21d .. :try_end_220} :catchall_238

    if-eqz v1, :cond_228

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    move-object v15, v0

    goto :goto_229

    :cond_228
    move-object v15, v1

    :goto_229
    if-eqz v9, :cond_230

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    move-object v9, v0

    :cond_230
    if-eqz v10, :cond_236

    :goto_232
    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v10, 0x0

    :cond_236
    const/4 v0, 0x1

    return v0

    :catchall_238
    move-exception v0

    goto :goto_218

    :goto_23a
    if-eqz v15, :cond_240

    invoke-virtual {v15}, Landroid/os/HandlerThread;->quit()Z

    const/4 v15, 0x0

    :cond_240
    if-eqz v9, :cond_246

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    const/4 v9, 0x0

    :cond_246
    if-eqz v10, :cond_24c

    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v10, 0x0

    :cond_24c
    throw v0
.end method

.method public getLatitude()D
    .registers 3

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    :cond_c
    iget-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    :cond_c
    iget-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    return-wide v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public stopUsingLocationService()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_e
    return-void
.end method
