.class public Lcom/android/server/usb/SemUsbBackend;
.super Ljava/lang/Object;
.source "SemUsbBackend.java"


# static fields
.field private static final MPS_CODE_PATH:Ljava/lang/String; = "/efs/imei/mps_code.dat"

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "/system/csc/sales_code.dat"

.field private static final TAG:Ljava/lang/String; = "SemUsbBackend"

.field private static final USB_PERSISTENT_DUALROLE_PROPERTY:Ljava/lang/String; = "persist.sys.usb.dualrole"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mIsUnlocked:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mRestricted:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/server/usb/SemUsbBackend;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "unlocked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/SemUsbBackend;->mIsUnlocked:Z

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/SemUsbBackend;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/server/usb/SemUsbBackend;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/SemUsbBackend;->mRestricted:Z

    iput-object p2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iput-object p3, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/SemUsbBackend;->updateUsbPort()V

    return-void
.end method

.method private modeToPower(I)I
    .registers 4

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x2

    :goto_7
    return v1
.end method

.method private setUsbFunction(I)V
    .registers 5

    const-string v0, "SemUsbBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB connection setUsbFunction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_77

    const/4 v0, 0x6

    if-eq p1, v0, :cond_63

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4f

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3b

    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_SEC_CHARGING"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "sec_charging"

    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_9f

    :cond_3b
    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MTP_GADGET"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp,conn_gadget"

    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_9f

    :cond_4f
    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MASS_STORAGE"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mass_storage"

    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_9f

    :cond_63
    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_MIDI"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "midi"

    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_9f

    :cond_77
    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection setUsbFunction :  + UsbManager.USB_FUNCTION_PTP"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "ptp"

    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_9f

    :cond_8b
    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection setUsbFunction : + UsbManager.USB_FUNCTION_MTP"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp"

    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    nop

    :goto_9f
    return-void
.end method


# virtual methods
.method public getCurrentMode()I
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    const-string v0, "SemUsbBackend"

    const-string v2, "USB connection getCurrentMode : 1"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_15
    const-string v0, "SemUsbBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB connection getCurrentMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/SemUsbBackend;->getUsbDataMode()I

    move-result v2

    const/4 v3, 0x0

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/usb/SemUsbBackend;->getUsbDataMode()I

    move-result v0

    or-int/2addr v0, v3

    return v0
.end method

.method public getSalesCode()Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "null"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/imei/mps_code.dat"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/csc/sales_code.dat"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_35

    const-string v5, "SemUsbBackend"

    const-string/jumbo v6, "mps exists"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_5e

    :cond_35
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_57

    const-string v5, "SemUsbBackend"

    const-string/jumbo v6, "sales_code exists"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/system/csc/sales_code.dat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_5e

    :cond_57
    const-string v5, "SemUsbBackend"

    const-string v6, "Both dat does not exist"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5e} :catch_f2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5e} :catch_c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5e} :catch_8e
    .catchall {:try_start_5 .. :try_end_5e} :catchall_8b

    :goto_5e
    if-eqz v1, :cond_66

    :try_start_60
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_66

    :catch_64
    move-exception v3

    goto :goto_6c

    :cond_66
    :goto_66
    if-eqz v2, :cond_89

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6b} :catch_64

    goto :goto_89

    :goto_6c
    nop

    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_74
    const-string v6, "IOException(iex): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_126

    :cond_89
    :goto_89
    goto/16 :goto_126

    :catchall_8b
    move-exception v3

    goto/16 :goto_127

    :catch_8e
    move-exception v3

    :try_start_8f
    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_8f .. :try_end_a9} :catchall_8b

    if-eqz v1, :cond_b1

    :try_start_ab
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_b1

    :catch_af
    move-exception v3

    goto :goto_b7

    :cond_b1
    :goto_b1
    if-eqz v2, :cond_89

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b6} :catch_af

    goto :goto_89

    :goto_b7
    nop

    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_74

    :catch_c0
    move-exception v3

    :try_start_c1
    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_c1 .. :try_end_db} :catchall_8b

    if-eqz v1, :cond_e3

    :try_start_dd
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_e3

    :catch_e1
    move-exception v3

    goto :goto_e9

    :cond_e3
    :goto_e3
    if-eqz v2, :cond_89

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e8} :catch_e1

    goto :goto_89

    :goto_e9
    nop

    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_74

    :catch_f2
    move-exception v3

    :try_start_f3
    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not Found exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_f3 .. :try_end_10d} :catchall_8b

    if-eqz v1, :cond_115

    :try_start_10f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_115

    :catch_113
    move-exception v3

    goto :goto_11c

    :cond_115
    :goto_115
    if-eqz v2, :cond_89

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_11a} :catch_113

    goto/16 :goto_89

    :goto_11c
    nop

    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_74

    :goto_126
    return-object v0

    :goto_127
    nop

    if-eqz v1, :cond_130

    :try_start_12a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_130

    :catch_12e
    move-exception v4

    goto :goto_136

    :cond_130
    :goto_130
    if-eqz v2, :cond_152

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_135} :catch_12e

    goto :goto_152

    :goto_136
    nop

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException(iex): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SemUsbBackend"

    invoke-static {v6, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_152
    :goto_152
    throw v3
.end method

.method public getSupportedPowerRole()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getUsbDataMode()I
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/usb/SemUsbBackend;->mIsUnlocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string v0, "SemUsbBackend"

    const-string v2, "USB connection getUsbDataMode : None"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v2, "mtp"

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection getUsbDataMode : mtp"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_21
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v2, "ptp"

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection getUsbDataMode : ptp"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    return v0

    :cond_35
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v2, "midi"

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection getUsbDataMode : midi"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    return v0

    :cond_49
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v2, "mass_storage"

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection getUsbDataMode : mass_storage"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    return v0

    :cond_5e
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v2, "sec_charging"

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    const-string v0, "SemUsbBackend"

    const-string v2, "USB connection getUsbDataMode : sec_charging"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_71
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v2, "mtp,conn_gadget"

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string v0, "SemUsbBackend"

    const-string v1, "USB connection getUsbDataMode : mtp,conn_gadget"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    return v0

    :cond_86
    return v1
.end method

.method public isModeSupported(I)Z
    .registers 9

    const-string v0, "SemUsbBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModeSupported - mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/usb/SemUsbBackend;->mRestricted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    and-int/lit8 v1, p1, 0xe

    if-eqz v1, :cond_26

    and-int/lit8 v1, p1, 0xe

    const/4 v3, 0x6

    if-eq v1, v3, :cond_26

    return v2

    :cond_26
    const-string v1, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isModeSupported - mPort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    const/4 v3, 0x1

    if-eqz v1, :cond_aa

    invoke-direct {p0, p1}, Lcom/android/server/usb/SemUsbBackend;->modeToPower(I)I

    move-result v1

    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isModeSupported - power : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v4, p1, 0xe

    const/4 v5, 0x2

    if-eqz v4, :cond_7f

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v1, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    const-string v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "We have a port and data, need to be in device mode :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7f
    iget-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v4, v1, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-nez v4, :cond_91

    iget-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v4, v1, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_90

    goto :goto_91

    :cond_90
    goto :goto_92

    :cond_91
    :goto_91
    move v2, v3

    :goto_92
    move v0, v2

    const-string v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No data needed, we can do this power mode in either device or host. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_aa
    and-int/lit8 v1, p1, 0x1

    if-eq v1, v3, :cond_b0

    move v2, v3

    nop

    :cond_b0
    move v0, v2

    const-string v1, "SemUsbBackend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No port, support sink modes only : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSupportPowerRole()Z
    .registers 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.usb.dualrole"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public setMode(I)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->rmSetNextUsbModeToDefault()V

    goto :goto_14

    :cond_c
    const-string v2, "SemUsbBackend"

    const-string/jumbo v3, "setMode : mDeviceManager is null"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    const/4 v3, 0x1

    if-eqz v2, :cond_58

    invoke-direct {p0, p1}, Lcom/android/server/usb/SemUsbBackend;->modeToPower(I)I

    move-result v0

    and-int/lit8 v2, p1, 0xe

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, v0, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v3

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x2

    :goto_2c
    move v1, v2

    const-string v2, "SemUsbBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMode : powerRole - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " /dataRole - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iget-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/android/server/usb/UsbPortManager;->setPortRolesLegacy(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    :cond_58
    if-ne v0, v3, :cond_79

    if-eq v1, v3, :cond_5d

    goto :goto_79

    :cond_5d
    const-string v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB connection setMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - skip!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :cond_79
    :goto_79
    const-string v2, "SemUsbBackend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB connection setMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, p1, 0xe

    invoke-direct {p0, v2}, Lcom/android/server/usb/SemUsbBackend;->setUsbFunction(I)V

    :goto_94
    return-void
.end method

.method updateUsbPort()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v0

    if-eqz v0, :cond_8f

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_8f

    iget-object v3, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_72

    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() status.isConnected() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_72

    aget-object v4, v0, v2

    iput-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    iput-object v3, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() mPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :cond_72
    const-string v4, "SemUsbBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbPort() mPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_8f
    :goto_8f
    return-void
.end method
