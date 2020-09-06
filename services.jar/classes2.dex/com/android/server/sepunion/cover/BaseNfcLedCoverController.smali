.class Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.super Ljava/lang/Object;
.source "BaseNfcLedCoverController.java"


# static fields
.field protected static final CMD_INTERNAL_LED_ACCEPT_REJECT:I = 0x11

.field protected static final CMD_INTERNAL_LED_CALL_INPROGRESS:I = 0x3

.field protected static final CMD_INTERNAL_LED_REPLY:I = 0xd1

.field protected static final CMD_LED_ALARM:I = 0x6

.field protected static final CMD_LED_BATTERY_CHARGING:I = 0xc

.field protected static final CMD_LED_BATTERY_CHARGING_WIRELESS:I = 0x13

.field protected static final CMD_LED_BATTERY_LOW:I = 0xb

.field protected static final CMD_LED_CALL_END:I = 0x4

.field protected static final CMD_LED_CALL_INCOMING:I = 0x2

.field protected static final CMD_LED_CLOCK:I = 0xf

.field protected static final CMD_LED_FACTORY_MODE:I = 0xe0

.field protected static final CMD_LED_INDICATOR:I = 0x10

.field protected static final CMD_LED_MISSED_EVENT:I = 0x9

.field protected static final CMD_LED_MUSIC:I = 0xd

.field protected static final CMD_LED_NEW_MESSAGE:I = 0x5

.field protected static final CMD_LED_OFF:I = 0x12

.field protected static final CMD_LED_POWER_ON:I = 0x1

.field protected static final CMD_LED_VIDEO_CALL_INCOMING:I = 0x14

.field protected static final CMD_LED_VOICE_RECORDER:I = 0xe

.field protected static final CMD_LED_VOLUME:I = 0xa

.field protected static final DEBUG:Z = true

.field protected static final EVENT_RESULT_ACCEPT:B = 0x1t

.field protected static final EVENT_RESULT_REJECT:B = 0x2t

.field protected static final EVENT_RESULT_TAP_LEFT:B = 0x3t

.field protected static final EVENT_RESULT_TAP_MID:B = 0x4t

.field protected static final EVENT_RESULT_TAP_RIGHT:B = 0x5t

.field protected static final EVENT_TOUCH_POLL_INTERVAL:J = 0x64L

.field protected static final EVENT_TYPE_ALARM:I = 0x1

.field protected static final EVENT_TYPE_CALL:I = 0x0

.field protected static final EVENT_TYPE_FACTORY:I = 0x5

.field protected static final EVENT_TYPE_MAX:I = 0x5

.field protected static final EVENT_TYPE_SCHEDULE:I = 0x3

.field protected static final EVENT_TYPE_SYSTEM_INTERNAL_EVENT:I = 0x4

.field protected static final EVENT_TYPE_TIMER:I = 0x2

.field protected static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field protected static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field protected static final SAFE_DEBUG:Z

.field protected static final SYSTEM_EVENT_AUTH_RESPONSE:I = 0x6

.field protected static final SYSTEM_EVENT_FOTA_IN_PROGRESS_REQUEST:I = 0x7

.field protected static final SYSTEM_EVENT_FOTA_IN_PROGRESS_RESPONSE:I = 0x8

.field protected static final SYSTEM_EVENT_KEY_FOTA_IN_PROGRESS:Ljava/lang/String; = "fota_in_progress"

.field protected static final SYSTEM_EVENT_KEY_LED_OFF_COMMAND:Ljava/lang/String; = "led_off_command"

.field protected static final SYSTEM_EVENT_KEY_SEND_COMMAND_CONTENT:Ljava/lang/String; = "send_command_content"

.field protected static final SYSTEM_EVENT_KEY_SEND_COMMAND_ID:Ljava/lang/String; = "send_command_id"

.field protected static final SYSTEM_EVENT_KEY_TOUCH_LISTENER_RESPONSE:Ljava/lang/String; = "lcd_touch_listener_respone"

.field protected static final SYSTEM_EVENT_KEY_TOUCH_LISTENER_TYPE:Ljava/lang/String; = "lcd_touch_listener_type"

.field protected static final SYSTEM_EVENT_KEY_TYPE:Ljava/lang/String; = "event_type"

.field protected static final SYSTEM_EVENT_KEY_TYPE_DISABLE_LCD_OFF_BY_COVER:Ljava/lang/String; = "lcd_off_disabled_by_cover"

.field protected static final SYSTEM_EVENT_LCD_OFF_DISABLED_BY_COVER:I = 0x4

.field protected static final SYSTEM_EVENT_LED_OFF:I = 0x0

.field protected static final SYSTEM_EVENT_NOTIFICATION_ADD:I = 0x2

.field protected static final SYSTEM_EVENT_NOTIFICATION_REMOVE:I = 0x3

.field protected static final SYSTEM_EVENT_POWER_BUTTON:I = 0x1

.field protected static final SYSTEM_EVENT_SEND_COMMAND:I = 0x5

.field protected static final SYSTEM_EVENT_TYPE_DISABLE_LCD_OFF_BY_COVER:I = 0x1

.field protected static final SYSTEM_EVENT_TYPE_TOUCH_RESPONSE:I

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected final EVENT_TYPE_POWER_KEY:I

.field protected mContext:Landroid/content/Context;

.field protected mIsLedCoverAttached:Z

.field protected mNfcAdapter:Landroid/nfc/NfcAdapter;

.field protected final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    sput-boolean v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->SAFE_DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->EVENT_TYPE_POWER_KEY:I

    iput-object p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method protected final acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v2

    sget-object v3, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "Shouldn\'t happen"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public addLedNotification(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getByteDataString([B)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    array-length v3, p1

    if-ge v2, v3, :cond_2c

    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getNfcAdapter()Landroid/nfc/NfcAdapter;
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    :cond_c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Could not get NfcAdapter"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method notifyAuthenticationResponse()V
    .registers 1

    return-void
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method protected final releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v2

    sget-object v3, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "Shouldn\'t happen"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method sendDataToNfcLedCover(I[B)V
    .registers 3

    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 1

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setLcdOffDisabledByCover(Z)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "lcd_off_disabled_by_cover"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method updateNfcLedCoverAttachStateLocked(ZI)V
    .registers 3

    return-void
.end method
