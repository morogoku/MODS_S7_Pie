.class final Lcom/android/server/sepunion/cover/LedCoverController;
.super Ljava/lang/Object;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final LED_COMMAND_ALARM:I = 0xd

.field public static final LED_COMMAND_BATTERY_CHARGING:I = 0xa

.field public static final LED_COMMAND_BATTERY_CHARGING_END:I = 0xb

.field public static final LED_COMMAND_BRIGHTNESS:I = 0x11

.field public static final LED_COMMAND_CALL_END:I = 0xc

.field public static final LED_COMMAND_CLOCK:I = 0x1

.field public static final LED_COMMAND_COLOR:I = 0x10

.field public static final LED_COMMAND_INCOMING_CALL:I = 0x4

.field public static final LED_COMMAND_INDICATOR:I = 0x12

.field public static final LED_COMMAND_LED_OFF:I = 0xf

.field public static final LED_COMMAND_LED_ON:I = 0xe

.field public static final LED_COMMAND_LOW_BATTERY_ALERT:I = 0x7

.field public static final LED_COMMAND_MISSED_CALL_MSG:I = 0x2

.field public static final LED_COMMAND_MUSIC:I = 0x5

.field public static final LED_COMMAND_PEDOMETER:I = 0x8

.field public static final LED_COMMAND_POWER_ON_OFF:I = 0x6

.field public static final LED_COMMAND_REQ_LED_STATUS:I = 0x9

.field public static final LED_COMMAND_VOLUME:I = 0x3

.field private static final MSG_LED_OFF_BY_SELF:I = 0x2

.field private static final MSG_SEND_LED_DATA:I = 0x0

.field private static final MSG_UPDATE_COVER_ATTACH_STATE:I = 0x1

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private final mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

.field private mIsLedCoverAttached:Z

.field private mIsLedCoverPowered:Z

.field private mIsLedOn:Z

.field private mLedCoverPowerPath:Ljava/lang/String;

.field private mLedCoverUARTPath:Ljava/lang/String;

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSerialManager:Landroid/hardware/SerialManager;

.field private mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverPowered:Z

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverAttached:Z

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedOn:Z

    iput v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mCoverColor:I

    new-instance v1, Lcom/android/server/sepunion/cover/LedCoverController$1;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/LedCoverController$1;-><init>(Lcom/android/server/sepunion/cover/LedCoverController;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/LedCoverController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "send leddata"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "powercontrol ledcover"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "onoff ledcover"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/LedCoverController;->initializeCoverControlPath(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/sepunion/cover/LedCoverController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/cover/LedCoverController;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/LedCoverController;->handleSendDataToLedCover(I[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/cover/LedCoverController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/LedCoverController;->handleUpdateLedCoverAttachState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/cover/LedCoverController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mCoverColor:I

    return v0
.end method

.method private declared-synchronized getSerialManager(Landroid/content/Context;)Landroid/hardware/SerialManager;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSerialManager:Landroid/hardware/SerialManager;

    if-nez v0, :cond_1c

    const-string/jumbo v0, "serial"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SerialManager;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSerialManager:Landroid/hardware/SerialManager;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSerialManager:Landroid/hardware/SerialManager;

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "warning: no Serial Manager"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSerialManager:Landroid/hardware/SerialManager;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleSendDataToLedCover(I[B)V
    .registers 8

    array-length v0, p2

    add-int/lit8 v0, v0, 0x5

    sget-object v1, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSendDataToLedCover : command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x10

    aput-byte v3, v1, v2

    int-to-byte v3, v0

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    int-to-byte v3, p1

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    add-int/lit8 v3, v0, -0x5

    const/4 v4, 0x3

    invoke-static {p2, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v0, -0x2

    const/4 v4, -0x1

    aput-byte v4, v1, v3

    aput-byte v4, v1, v2

    :try_start_3f
    iget-object v2, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedCoverUARTPath:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/server/sepunion/cover/LedCoverController;->writeDataViaSerial(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendData success"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_50
    sget-object v2, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendData fail"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_58} :catch_59

    :goto_58
    goto :goto_5d

    :catch_59
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_5d
    :try_start_5d
    iget-object v2, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_6a} :catch_6b

    :cond_6a
    goto :goto_6f

    :catch_6b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_6f
    return-void
.end method

.method private handleUpdateLedCoverAttachState(Z)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/LedCoverController;->powerControlLedCover(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverPowered:Z

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverAttached:Z

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateLedCoverAttachState : cover color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mCoverColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_33
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4e

    :cond_3d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4e
    :goto_4e
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_5b} :catch_5c

    :cond_5b
    goto :goto_60

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_60
    return-void
.end method

.method private initializeCoverControlPath(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportLEDCoverQCOM()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "/sys/class/sec/expander/expgpio"

    iput-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    const-string v0, "/dev/ttyHSL1"

    iput-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedCoverUARTPath:Ljava/lang/String;

    goto :goto_2f

    :cond_15
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportLEDCoverLSI()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "/sys/class/sec/ledcover/cover_pwr"

    iput-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    const-string v0, "/dev/ttySAC2"

    iput-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedCoverUARTPath:Ljava/lang/String;

    goto :goto_2f

    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedCoverUARTPath:Ljava/lang/String;

    :goto_2f
    return-void
.end method

.method private powerControlLedCover(Z)Z
    .registers 7

    sget-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "powerControlLedCover : attached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "There is no node for power control"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_24
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    if-eqz v2, :cond_b5

    :try_start_29
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    if-eqz p1, :cond_5c

    const-string v3, "/sys/class/sec/expander/expgpio"

    if-ne v2, v3, :cond_45

    const-string/jumbo v3, "o 2 1"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_4f

    :cond_45
    const-string/jumbo v3, "val_on"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_4f} :catch_96
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4f} :catch_84
    .catchall {:try_start_29 .. :try_end_4f} :catchall_82

    :goto_4f
    const/4 v1, 0x1

    nop

    :try_start_51
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_5a

    :catch_55
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    :goto_5a
    nop

    :goto_5b
    return v1

    :cond_5c
    :try_start_5c
    const-string v3, "/sys/class/sec/expander/expgpio"

    if-ne v2, v3, :cond_6b

    const-string/jumbo v3, "o 2 0"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_75

    :cond_6b
    const-string/jumbo v3, "val_off"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_75} :catch_96
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_75} :catch_84
    .catchall {:try_start_5c .. :try_end_75} :catchall_82

    :goto_75
    nop

    nop

    :try_start_77
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_80

    :catch_7b
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    :goto_80
    nop

    :goto_81
    return v1

    :catchall_82
    move-exception v1

    goto :goto_a8

    :catch_84
    move-exception v3

    :try_start_85
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_82

    nop

    if-eqz v0, :cond_94

    :try_start_8b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_94

    :catch_8f
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95

    :cond_94
    :goto_94
    nop

    :goto_95
    return v1

    :catch_96
    move-exception v3

    :try_start_97
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_82

    nop

    if-eqz v0, :cond_a6

    :try_start_9d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_a6

    :catch_a1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a7

    :cond_a6
    :goto_a6
    nop

    :goto_a7
    return v1

    :goto_a8
    nop

    if-eqz v0, :cond_b4

    :try_start_ab
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_b4

    :catch_af
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_b4
    :goto_b4
    throw v1

    :cond_b5
    return v1
.end method

.method private writeDataViaSerial(Ljava/lang/String;[B)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/LedCoverController;->getSerialManager(Landroid/content/Context;)Landroid/hardware/SerialManager;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_55

    if-eqz p1, :cond_55

    :try_start_11
    invoke-virtual {v0}, Landroid/hardware/SerialManager;->getSerialPorts()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_42

    array-length v5, v4

    if-lez v5, :cond_42

    move v5, v3

    :goto_1b
    array-length v6, v4

    if-ge v5, v6, :cond_4a

    sget-object v6, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "port["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_42
    sget-object v5, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "ports is null"

    invoke-static {v5, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const v4, 0x1c200

    invoke-virtual {v0, p1, v4}, Landroid/hardware/SerialManager;->openSerialPort(Ljava/lang/String;I)Landroid/hardware/SerialPort;

    move-result-object v4

    move-object v1, v4

    goto :goto_55

    :catch_53
    move-exception v4

    goto :goto_89

    :cond_55
    :goto_55
    if-eqz v1, :cond_80

    sget-object v4, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serialPort.getName() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/SerialPort;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v1, v4, v5}, Landroid/hardware/SerialPort;->write(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v1}, Landroid/hardware/SerialPort;->close()V

    nop

    const/4 v3, 0x1

    return v3

    :cond_80
    sget-object v4, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "serialPort isn\'t available"

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_88} :catch_53

    return v3

    :goto_89
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    return v3
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, " Current LedCoverController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsLEDCoverPowered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverPowered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method isCoverAttached()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverAttached:Z

    return v0
.end method

.method isCoverPowered()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverPowered:Z

    return v0
.end method

.method sendDataToLedCover(I[B)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportLEDCover()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDataToLedCover : Not support LED Cover"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverAttached:Z

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverPowered:Z

    if-nez v0, :cond_30

    sget-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDataToLedCover : Not Powered LED Cover"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_3d} :catch_3e

    :cond_3d
    goto :goto_42

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_42
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    const/16 v1, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v1, :cond_77

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->removeMessages(I)V

    :try_start_64
    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_71
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_76
    :goto_76
    goto :goto_da

    :cond_77
    const/16 v1, 0x9

    if-eq p1, v1, :cond_da

    const/4 v1, 0x4

    if-eq p1, v1, :cond_da

    const/16 v1, 0x12

    if-ne p1, v1, :cond_83

    goto :goto_da

    :cond_83
    :try_start_83
    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_90

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_90
    .catch Ljava/lang/IllegalStateException; {:try_start_83 .. :try_end_90} :catch_91

    :cond_90
    goto :goto_95

    :catch_91
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_95
    const/16 v1, 0xe

    if-eq p1, v1, :cond_da

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_a6

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->removeMessages(I)V

    :cond_a6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->what:I

    if-eq p1, v2, :cond_d2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_ca

    const/16 v3, 0xd

    if-eq p1, v3, :cond_c1

    iget-object v3, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_da

    :cond_c1
    iget-object v3, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_da

    :cond_ca
    iget-object v3, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/16 v4, 0x2328

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_da

    :cond_d2
    iget-object v3, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/16 v4, 0xdac

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    nop

    :cond_da
    :goto_da
    return v2
.end method

.method public sendPowerKeyToCover()V
    .registers 15

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedOn:Z

    if-eqz v3, :cond_2e

    sget-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsLedOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". should be off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    goto/16 :goto_c0

    :cond_2e
    sget-object v3, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsLedOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ". should be on"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x2

    if-eqz v5, :cond_82

    const-string v12, "%02d:%02d"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v0

    invoke-static {v4, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_81
    goto :goto_9d

    :cond_82
    rem-int/lit8 v9, v9, 0xc

    if-nez v9, :cond_88

    const/16 v9, 0xc

    :cond_88
    const-string v12, "%2d:%02d"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v0

    invoke-static {v4, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_81

    :goto_9d
    sget-object v3, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sendPowerKeyToCover : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/sepunion/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    :goto_c0
    return-void
.end method

.method updateLedCoverAttachStateLocked(ZII)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportLEDCover()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/server/sepunion/cover/LedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateLedCoverAttachStateLocked : Not support LED Cover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const/4 v0, 0x1

    if-eqz p1, :cond_21

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1f

    const/16 v1, 0xe

    if-ne p2, v1, :cond_21

    :cond_1f
    move v1, v0

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    iput p3, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mCoverColor:I

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, v1, :cond_4b

    :try_start_28
    iget-object v2, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_35
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_35} :catch_36

    :cond_35
    goto :goto_3a

    :catch_36
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_3a
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverAttached:Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->what:I

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mIsLedCoverAttached:Z

    iput v0, v2, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController;->mHandler:Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4b
    return-void
.end method
