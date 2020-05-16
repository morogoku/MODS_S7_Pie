.class Lcom/android/server/power/ShutdownThread$13;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$13;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    iput p5, p0, Lcom/android/server/power/ShutdownThread$13;->val$timeout:I

    iput-object p6, p0, Lcom/android/server/power/ShutdownThread$13;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const-string v0, "ShutdownThread"

    const-string v1, "!@Start shutdown radios"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.deviceOffReq"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.radio.shutdown"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-ne v3, v5, :cond_51

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_51

    goto :goto_53

    :cond_51
    move v3, v4

    goto :goto_54

    :cond_53
    :goto_53
    move v3, v5

    :goto_54
    if-nez v3, :cond_6b

    const-string v6, "ShutdownThread"

    const-string v7, "Disabling WiFi..."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/16 v7, 0xe6

    iput v7, v6, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$13;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_6b
    const-string v6, "ShutdownThread"

    const-string v7, "Waiting for NFC, Wi-Fi and Radio..."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8a

    const/4 v6, 0x2

    :try_start_75
    invoke-interface {v0, v6}, Landroid/nfc/INfcAdapter;->doNciLogDump(I)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_78} :catch_82
    .catch Ljava/lang/NullPointerException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_8a

    :catch_79
    move-exception v6

    const-string v7, "ShutdownThread"

    const-string v8, "NullPointerException because of nci"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8b

    :catch_82
    move-exception v6

    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException during nci log writing"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8a
    :goto_8a
    nop

    :goto_8b
    if-eqz v0, :cond_98

    :try_start_8d
    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v6

    if-ne v6, v5, :cond_94

    goto :goto_98

    :cond_94
    move v6, v4

    goto :goto_99

    :catch_96
    move-exception v6

    goto :goto_a6

    :cond_98
    :goto_98
    move v6, v5

    :goto_99
    if-nez v6, :cond_b1

    const-string v7, "ShutdownThread"

    const-string v8, "Turning off NFC..."

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_a5} :catch_96

    goto :goto_b1

    :goto_a6
    nop

    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException during NFC shutdown"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    move v6, v5

    goto :goto_b2

    :cond_b1
    :goto_b1
    nop

    :goto_b2
    nop

    if-eqz v2, :cond_c2

    :try_start_b5
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_c2

    :catch_b9
    move-exception v7

    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during bluetooth permanent log dump"

    invoke-static {v8, v9, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_c3

    :cond_c2
    :goto_c2
    nop

    :goto_c3
    if-eqz v1, :cond_d0

    :try_start_c5
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v7

    if-nez v7, :cond_cc

    goto :goto_d0

    :cond_cc
    move v7, v4

    goto :goto_d1

    :catch_ce
    move-exception v7

    goto :goto_de

    :cond_d0
    :goto_d0
    move v7, v5

    :goto_d1
    if-nez v7, :cond_e9

    const-string v8, "ShutdownThread"

    const-string v9, "Turning off cellular radios..."

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_dd} :catch_ce

    goto :goto_e9

    :goto_de
    nop

    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during radio shutdown"

    invoke-static {v8, v9, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    nop

    move v7, v5

    goto :goto_ea

    :cond_e9
    :goto_e9
    nop

    :goto_ea
    nop

    const-string v8, "ShutdownThread"

    const-string v9, "Waiting for NFC and Radio..."

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v8, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    :goto_f9
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1cc

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Z

    move-result v10

    if-eqz v10, :cond_128

    iget v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$timeout:I

    int-to-long v10, v10

    sub-long/2addr v10, v8

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    mul-double/2addr v10, v12

    iget v12, p0, Lcom/android/server/power/ShutdownThread$13;->val$timeout:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    double-to-int v10, v10

    # setter for: Lcom/android/server/power/ShutdownThread;->progressStatus:I
    invoke-static {v10}, Lcom/android/server/power/ShutdownThread;->access$802(I)I

    const/4 v10, 0x6

    # += operator for: Lcom/android/server/power/ShutdownThread;->progressStatus:I
    invoke-static {v10}, Lcom/android/server/power/ShutdownThread;->access$812(I)I

    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    # getter for: Lcom/android/server/power/ShutdownThread;->progressStatus:I
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()I

    move-result v11

    const/4 v12, 0x0

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/power/ShutdownThread;->access$4200(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_128
    if-nez v7, :cond_143

    :try_start_12a
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v10
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_12a .. :try_end_12e} :catch_131

    xor-int/2addr v10, v5

    move v7, v10

    goto :goto_13a

    :catch_131
    move-exception v10

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v7, 0x1

    :goto_13a
    if-eqz v7, :cond_143

    const-string v10, "ShutdownThread"

    const-string v11, "!@Radio turned off."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_143
    if-nez v6, :cond_162

    :try_start_145
    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10
    :try_end_149
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_149} :catch_150

    if-ne v10, v5, :cond_14d

    move v10, v5

    goto :goto_14e

    :cond_14d
    move v10, v4

    :goto_14e
    move v6, v10

    goto :goto_159

    :catch_150
    move-exception v10

    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v6, 0x1

    :goto_159
    if-eqz v6, :cond_162

    const-string v10, "ShutdownThread"

    const-string v11, "!@NFC turned off."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_162
    if-eqz v7, :cond_172

    if-eqz v6, :cond_172

    const-string v10, "ShutdownThread"

    const-string v11, "!@NFC, Radio and modem shutdown complete."

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$done:[Z

    aput-boolean v5, v10, v4

    goto :goto_1cc

    :cond_172
    const-string v10, "ShutdownThread"

    const-string v11, "!@before sleep"

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x1f4

    :try_start_17b
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17e
    .catch Ljava/lang/InterruptedException; {:try_start_17b .. :try_end_17e} :catch_17f

    goto :goto_187

    :catch_17f
    move-exception v10

    const-string v11, "ShutdownThread"

    const-string v12, "InterruptedException"

    invoke-static {v11, v12, v10}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_187
    const-string v10, "ShutdownThread"

    const-string v11, "!@after sleep"

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@[Phone off retry:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " radio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " nfcOff="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v8, v10, v12

    goto/16 :goto_f9

    :cond_1cc
    :goto_1cc
    return-void
.end method
