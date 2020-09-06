.class public Lcom/samsung/android/MtpApplication/MtpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtpReceiver.java"


# static fields
.field public static PCguid:Ljava/lang/String;

.field private static PCguidPath:Ljava/lang/String;

.field static PrivateExists:Z

.field static blockStatusSet:Z

.field public static boot_completed:Ljava/lang/String;

.field public static busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

.field static configChanged:Z

.field static configured:Z

.field static connected:Z

.field public static final countryCode:Ljava/lang/String;

.field public static cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

.field static currentUserId:I

.field public static final deviceProductName:Ljava/lang/String;

.field public static final deviceProductShip:Ljava/lang/String;

.field static displayDriverPopup:Z

.field private static driverdisplayStatus:Ljava/lang/String;

.field public static externalFsUuid:Ljava/lang/String;

.field private static firstMediaMount:Z

.field static firstTimeResetDone:Z

.field static gadgetReset:Z

.field static hostConnected:Z

.field static isAcquired:Z

.field static isCheckedBootComplete:Z

.field static isConnectedwithdriver:Z

.field static isCtsappInstalled:Z

.field static isDayDreamConnected:Z

.field static isDisplayPopup:Z

.field static isSynchronizing:Z

.field static lockStatusSet:Z

.field static mContext:Landroid/content/Context;

.field public static mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private static mFirstTime:Z

.field static mHandler:Landroid/os/Handler;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public static mountPath:Ljava/lang/String;

.field static mtpCategoryEnabled:Z

.field static mtpEnabled:Z

.field static notifyAppHandler:Landroid/os/Handler;

.field static playlistUpdate:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

.field static policyStatusSet:Z

.field public static popupMode:Ljava/lang/String;

.field static privatemodeSet:Z

.field static ptpEnabled:Z

.field static qcomIgnoretwice:Z

.field static sdCardExists:Z

.field static sec_charging:Z

.field static statusUpdate:Landroid/mtp/MTPJNIInterface;

.field public static updateThread:Ljava/lang/Thread;

.field static usb30Mode:Z

.field static usb_data_unlock:Z

.field public static usb_state_value:Ljava/lang/String;


# instance fields
.field private admin:Landroid/content/ComponentName;

.field private ctsPackageName:[Ljava/lang/String;

.field private dpm:Landroid/app/admin/DevicePolicyManager;

.field iService:Landroid/content/Intent;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mNotiHandler:Landroid/os/Handler;

.field private mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field mStartMtpHandler:Landroid/os/Handler;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_state_value:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->externalFsUuid:Ljava/lang/String;

    const-string v1, "/sys/devices/virtual/misc/usb_mtp_gadget/guid"

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguidPath:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->driverdisplayStatus:Ljava/lang/String;

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->deviceProductName:Ljava/lang/String;

    const-string v1, "ro.product_ship"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->deviceProductShip:Ljava/lang/String;

    const-string v1, "ro.csc.country_code"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->countryCode:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCheckedBootComplete:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->policyStatusSet:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->configChanged:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->hostConnected:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->qcomIgnoretwice:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->firstTimeResetDone:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->PrivateExists:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb30Mode:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCtsappInstalled:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDayDreamConnected:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDisplayPopup:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpCategoryEnabled:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->firstMediaMount:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->playlistUpdate:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mHandler:Landroid/os/Handler;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    sput v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "com.android.cts.encryptionapp"

    const-string v1, "com.android.cts.splitapp"

    const-string v2, "com.android.cts.deviceandprofileowner"

    const-string v3, "com.google.android.gts.deviceowner"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->ctsPackageName:[Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.MtpApplication"

    const-string v2, "MtpReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->admin:Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->iService:Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpReceiver$1;-><init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpReceiver$2;-><init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpReceiver$5;-><init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/MtpApplication/MtpReceiver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetDisconnectAndConnectCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/os/UEventObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/telephony/TelephonyManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->setDvfsBooster(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/MtpApplication/MtpReceiver;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getPcGUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/MtpApplication/MtpReceiver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCtsAppInstalledOrNot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/MtpApplication/MtpReceiver;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/MtpApplication/MtpReceiver;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/MtpApplication/MtpReceiver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendMsg(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method

.method static disableDrive(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "MTPRx"

    const-string v2, "context is NULL in disable drive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "MTPRx"

    const-string v2, "disabling the Drive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mtp_drive_display"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "dev.kies.drivedisplay"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_1

    const-string v0, "MTPRx"

    const-string v2, "Sending MTP_MODE_RESTRICTED_POLICY to stack"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private gadgetDisconnectAndConnectCheck()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "/data/data/com.samsung.android.MtpApplication/gadgetDisconnectAndConnect.txt"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/com.samsung.android.MtpApplication/gadgetDisconnectAndConnect.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "MTPRx"

    const-string v6, "file f deletion failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x1

    if-ne v5, v0, :cond_2

    return v5

    :cond_2
    return v3

    :goto_2
    nop

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_3
    :goto_3
    throw v3

    :catch_3
    move-exception v4

    nop

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_4
    :goto_4
    nop

    :goto_5
    return v3
.end method

.method public static getExternalStorageStatus()Z
    .locals 12

    const-string v0, "MTPRx"

    const-string v1, " inside getExternalStorageStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MTPRx"

    const-string v2, "mContext is coming NULL is returning False :"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1

    const-string v2, "MTPRx"

    const-string v3, "storageManager is coming NULL is returning False :"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v7

    const-string v8, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Storage Volume id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x12beda7d

    const/4 v11, 0x1

    if-eq v9, v10, :cond_4

    const v10, 0x4fa4b1d1    # 5.5262336E9f

    if-eq v9, v10, :cond_3

    goto :goto_1

    :cond_3
    const-string v9, "emulated"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v8, v11

    goto :goto_1

    :cond_4
    const-string v9, "private"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v8, v1

    :cond_5
    :goto_1
    packed-switch v8, :pswitch_data_0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->externalFsUuid:Ljava/lang/String;

    const-string v1, "MTPRx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SDcard is  available : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->externalFsUuid:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v11, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    return v11

    :pswitch_0
    goto :goto_2

    :pswitch_1
    goto :goto_2

    :cond_6
    const-string v8, "MTPRx"

    const-string v9, "SDcard is not available"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    :goto_2
    goto/16 :goto_0

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getMtpContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPcGUID()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "^.[a-zA-Z0-9]{8}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{12}.$"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguidPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x26

    invoke-static {v3, v4, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MTPRx"

    const-string v6, "GUID is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    nop

    const-string v2, "MTPRx"

    const-string v3, "GUID is valid."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v3

    const-string v4, "MTPRx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot open file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguidPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static getPrivateDirectory(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "MTPRx"

    const-string v1, " inside getprivateDirectory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v2, "MTPRx"

    const-string v3, "context is coming NULL is returning False :"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "MTPRx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privateDir Path is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v2, "MTPRx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    return v1
.end method

.method private isCharging()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/class/power_supply/battery/status"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    const-string v6, "MTPRx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "battery status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Discharging"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    nop

    :goto_1
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/class/typec/port0/data_role"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    const-string v6, "MTPRx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "usb data role status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "host [device]"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    goto :goto_2

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_2
    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/dual_role_usb/otg_default/data_role"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v5, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    const-string v3, "MTPRx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "usb data role status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "device"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    goto :goto_2

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    :goto_4
    return v5
.end method

.method private isCtsAppInstalledOrNot()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->ctsPackageName:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAppInstalled(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private isDayDreamConnectCheck()Z
    .locals 4

    const-string v0, "sys.daydream.connected"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MTPRx"

    const-string v3, " is_dayDreamConnected is 1, so do not display MTP pop-up"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string v2, "MTPRx"

    const-string v3, " is_dayDreamConnected is false,"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private isEDMRestrictionPolicy()Z
    .locals 8

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v4, "isUsbMediaPlayerAvailable"

    const-string v1, "false"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "isUsbMediaPlayerAvailable"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MTPRx"

    const-string v3, "RESTRICTIONPOLICY_USBMEDIAPLAYERAVAILABLE_METHOD is false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private isKnoxCustomPolicy()Z
    .locals 9

    const/4 v0, 0x0

    const-string v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v5, "getSealedUsbMassStorageState"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "getSealedUsbMassStorageState"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "MTPRx"

    const-string v6, "exception KNOXCUSTOMMANAGERSERVICE_USBMASSSTORAGESTATE_METHOD."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v3

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    return v3
.end method

.method private isPrivateMode()Z
    .locals 4

    const-string v0, "sys.samsung.personalpage.mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "MTPRx"

    const-string v3, " is_Privatemode is 1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MTPRx"

    const-string v3, " Private mounted proeprly"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getPrivateDirectory(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->PrivateExists:Z

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2

    :cond_1
    const-string v1, "MTPRx"

    const-string v3, "Private not mountd properly"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v1, "MTPRx"

    const-string v3, "is_Privatemode is NOT 1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->getInstance()Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->playlistUpdate:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->playlistUpdate:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->setContext(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-nez v0, :cond_0

    const-string v0, "mtp_drive_display"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "dev.kies.drivedisplay"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0xca

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    return-void
.end method

.method private sendMsg(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "mtp_usb_conditions_met"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->iService:Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->iService:Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpService;->setHandler(Landroid/os/Handler;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendMsg(I)V

    const-string v1, "mtp_usb_conditions_met"

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->firstTimeResetDone:Z

    if-nez v1, :cond_0

    const-string v1, "ro.hardware"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb30Mode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->qcomIgnoretwice:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->firstTimeResetDone:Z

    :cond_0
    return-void
.end method

.method private declared-synchronized setDvfsBooster(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "MTPRx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside setDvfsBooster, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    const/4 v2, 0x0

    new-array v3, v0, [I

    aput v1, v3, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/os/Process;->setProcessGroup(II)V

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_0

    const-string v4, "MTPRx"

    const-string v5, "cstateDisable initialize"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v5, "CstateDisableinMTP"

    const/16 v6, 0x17

    invoke-static {v4, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_1

    const-string v4, "MTPRx"

    const-string v5, "busMinFreqBooster initialize"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v5, "busMinFreqBoosterMTP"

    const/16 v6, 0x13

    invoke-static {v4, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v4

    move-object v3, v4

    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v1, v3, v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_2
    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_3

    const-string v1, "MTPRx"

    const-string v4, "mDvfsHelper initialize"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v4, "CPUMinLimitinMTP"

    const/16 v5, 0xc

    invoke-static {v1, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v4, 0x3fefae147ae147aeL    # 0.99

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v1

    move v2, v1

    const-string v1, "MTPRx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_clock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lez v2, :cond_4

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_4
    const-string v1, "MTPRx"

    const-string v4, "mDvfsHelper/cstateDisable acquire"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v4, 0xea60

    invoke-virtual {v1, v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/MtpApplication/MtpReceiver$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/MtpApplication/MtpReceiver$4;-><init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V

    const-wide/16 v4, 0x1770

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    if-nez p1, :cond_8

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, "MTPRx"

    const-string v2, "mDvfsHelper release"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    :cond_6
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_7

    const-string v0, "MTPRx"

    const-string v2, "cstateDisable release"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    :cond_7
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_8

    const-string v0, "MTPRx"

    const-string v2, "busMinFreqBooster release"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->busMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static setHandler(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    return-void
.end method

.method static startDBupdate()V
    .locals 2

    const-string v0, "MTPRx"

    const-string v1, "inside startDBupdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/MtpApplication/MtpReceiver$3;

    invoke-direct {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public changeChargingMode()V
    .locals 5

    const-string v0, "MTPRx"

    const-string v1, "inside changeChargingMode : set USB MODE sec_charging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "CHINA"

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sec_charging"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string v1, "sec_charging,adb"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "sec_charging"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MTPRx"

    const-string v2, "Unable to set usb mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public changeMtpMode()V
    .locals 6

    const-string v0, "MTPRx"

    const-string v1, "inside changeMtpMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_running_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-ne v1, v0, :cond_2

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->addGUID(Ljava/lang/String;)V

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->startDBupdate()V

    const-string v2, "MTPRx"

    const-string v3, "MTP is already running. Setting the status to unlock, exist guid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mtp_drive_display"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "dev.kies.drivedisplay"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_mtp_settings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    const-string v4, "none"

    invoke-virtual {v3, v4, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v2, "mtp,adb"

    invoke-virtual {v3, v2, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const-string v2, "mtp"

    invoke-virtual {v3, v2, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "MTPRx"

    const-string v3, "Unable to set usb mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public displayPopup(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_running_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MTPRx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in displayPopup : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mtpRunningStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const v3, 0x10808000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.MtpApplication"

    const-string v4, "com.samsung.android.MtpApplication.USBConnection"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-object p1, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    const-string v3, "mode"

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_setup_complete"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "MTPRx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setup wizard is not finished.. popup mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDisplayPopup:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method finishSync()V
    .locals 7

    const-string v0, "MTPRx"

    const-string v1, "inside finishSync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_sync_alive"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "MTPRx"

    const-string v3, "Scan Internal Storage"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "/storage/emulated/0"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/media/MediaScannerConnection;->semScanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->externalFsUuid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "MTPRx"

    const-string v3, "Scan External Storage"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/storage/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->externalFsUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3, v4}, Landroid/media/MediaScannerConnection;->semScanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "MTPRx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "semScanDirectories - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->getMyfilesDBList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.intent.action.MTP_FILE_SCAN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "files"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "MTPRx"

    const-string v5, "Sending Broadcast finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_1
    const-string v3, "MTPRx"

    const-string v4, "no file transfer case, so do not send MTP_FILE_SCAN "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-ne v3, v0, :cond_3

    invoke-direct {p0, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->setDvfsBooster(Z)V

    :cond_3
    return-void
.end method

.method public getPersonaId()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getUsbdebugStatus()Z
    .locals 6

    const-string v0, "MTPRx"

    const-string v1, "inside getUsbdebugStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "MTPRx"

    const-string v3, "getUsbdebugStatus() :: not connected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, "ro.em.version"

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x1

    if-ge v1, v4, :cond_1

    invoke-virtual {v0, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v3

    :goto_0
    if-ne v3, v5, :cond_2

    const-string v2, "MTPRx"

    const-string v4, "getUsbdebugStatus is true"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const-string v4, "MTPRx"

    const-string v5, "getUsbdebugStatus is false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public initializeSettingsValues(Landroid/content/ContentResolver;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCheckedBootComplete:Z

    if-nez v0, :cond_0

    const-string v0, "MTPRx"

    const-string v1, "in initializeSettingsValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mtp_usb_connection_status"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "media_player_mode"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "mtp_usb_conditions_met"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "media_mount_count"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "mtp_sync_alive"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "sdcard_launch"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "boot_time_connected"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "mtp_event_status"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mtp_open_session"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "mtp_running_status"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "dev.kies.drivedisplay"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCheckedBootComplete:Z

    :cond_0
    return-void
.end method

.method isSyncFinished()V
    .locals 4

    const-string v0, "MTPRx"

    const-string v1, "inside isSyncFinished posting message with delay of 4sec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xcc

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sput-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v0, "MTPRx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In MtpReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v0, "user"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MTPRx"

    const-string v6, "lock status!!! so return."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isKnoxCustomPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MTPRx"

    const-string v6, "MTP is disabled by KnoxCustomManager"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCtsAppInstalledOrNot()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCtsappInstalled:Z

    const-string v0, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCtsappInstalled is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCtsappInstalled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const-string v0, "dev.mtp.opensession"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v8, v0, :cond_4

    const-string v0, "MTPRx"

    const-string v6, "BOOT_COMPLETED(LOCKED_BOOT_COMPLETED) recieved, but dev.mtp.opensession is 1, so return"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v9, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v7, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_state_value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    nop

    const-string v0, "MTPRx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/class/android_usb/android0/state == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_state_value:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sys.usb.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "CONFIGURED"

    sget-object v10, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_state_value:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v9, :cond_6

    const-string v0, "mtp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCtsappInstalled:Z

    if-nez v0, :cond_6

    :try_start_1
    const-string v0, "MTPRx"

    const-string v10, "MTP is recieved BOOT_COMPLETED(LOCKED_BOOT_COMPLETED) so USB reset"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v10, "usb"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    move-object v10, v0

    const-string v0, "none"

    invoke-virtual {v10, v0, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v11, 0x32

    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v11, v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "adb_enabled"

    invoke-static {v0, v11, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_5

    const-string v0, "mtp,adb"

    invoke-virtual {v10, v0, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    const-string v0, "mtp"

    invoke-virtual {v10, v0, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception v0

    const-string v10, "MTPRx"

    const-string v11, "Unable to set usb mode"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x2

    if-nez v0, :cond_16

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    :cond_7
    const-string v0, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_3

    :cond_8
    const-string v0, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "android.os.storage.extra.VOLUME_STATE"

    const/4 v6, -0x1

    move-object/from16 v10, p2

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v6, "mtp_running_status"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_9

    const-string v7, "MTPRx"

    const-string v8, "mtpRunningStatus is 0, so skip intent."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    if-ne v0, v9, :cond_d

    const-string v9, "MTPRx"

    const-string v11, "VolumeInfo STATE_MOUNTED"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    if-eqz v9, :cond_a

    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    if-eqz v9, :cond_a

    const-string v7, "MTPRx"

    const-string v8, "SD card and Private already available. just return"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    if-nez v9, :cond_b

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getExternalStorageStatus()Z

    move-result v9

    if-ne v9, v8, :cond_b

    const-string v9, "MTPRx"

    const-string v11, "In SDCard add case"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "mtp_running_status"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v8, v7, :cond_c

    const-string v7, "MTPRx"

    const-string v9, "sd card added when MTP running"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    const-string v7, "MTPRx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Top screen is MTP and MtpReceiver.sdCardExists value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v7, :cond_c

    const-string v7, "MTPRx"

    const-string v8, "sending sdcard connected noti to stack"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v8, 0x6a

    invoke-virtual {v7, v8}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto :goto_2

    :cond_b
    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    if-nez v9, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v9

    if-ne v9, v8, :cond_c

    const-string v9, "MTPRx"

    const-string v11, " Private added case"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "mtp_running_status"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v8, v7, :cond_c

    const-string v7, "MTPRx"

    const-string v9, "Private added when MTP running"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    const-string v7, "MTPRx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Top screen is MTP and PrivatemodeSet value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v7, :cond_c

    const-string v7, "MTPRx"

    const-string v8, "sending Private connected noti to stack"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v8, 0x17

    invoke-virtual {v7, v8}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_c
    :goto_2
    return-void

    :cond_d
    const/16 v9, 0x69

    if-nez v0, :cond_10

    const-string v11, "MTPRx"

    const-string v12, "VolumeInfo STATE_UNMOUNTED"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v11, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    if-ne v11, v8, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_e

    const-string v9, "MTPRx"

    const-string v11, "privatebox is removed "

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    const-string v9, "mtp_running_status"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v8, v7, :cond_15

    const-string v7, "MTPRx"

    const-string v8, "Private removed during MTP session"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v7, :cond_15

    const-string v7, "MTPRx"

    const-string v8, "sending Private disconnected noti to stack"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v8, 0x73

    invoke-virtual {v7, v8}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_4

    :cond_e
    sget-boolean v11, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    if-ne v11, v8, :cond_f

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getExternalStorageStatus()Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "MTPRx"

    const-string v12, "MMC is disconnected in STATE_UNMOUNTED"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    const-string v11, "sdcard_launch"

    invoke-static {v4, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "mtp_running_status"

    invoke-static {v4, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v8, v7, :cond_15

    const-string v7, "MTPRx"

    const-string v8, "Top screen is MTP"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v7, :cond_15

    const-string v7, "MTPRx"

    const-string v8, "sending MMC disconnected noti to stack"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v7, v9}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_4

    :cond_f
    const-string v7, "MTPRx"

    const-string v8, "SD card/Private already removed. just return"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/16 v11, 0x8

    if-ne v0, v11, :cond_11

    const-string v11, "MTPRx"

    const-string v12, "VolumeInfo STATE_BAD_REMOVAL"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    const-string v11, "sdcard_launch"

    invoke-static {v4, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "mtp_running_status"

    invoke-static {v4, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v8, v7, :cond_15

    const-string v7, "MTPRx"

    const-string v8, "Top screen is MTP"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v7, :cond_15

    const-string v7, "MTPRx"

    const-string v8, "sending MMC disconnected noti to stack"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v7, v9}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto :goto_4

    :cond_11
    const-string v7, "MTPRx"

    const-string v8, "SD card/Private already removed. just return"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    move-object/from16 v10, p2

    goto :goto_4

    :cond_13
    :goto_3
    move-object/from16 v10, p2

    const-string v0, "mtp_running_status"

    invoke-static {v4, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v6, "MTPRx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show popup, cause setupwizard is finished. mtpRunningStatus = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", popup mode :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", isDisplayPopup :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDisplayPopup:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v8, :cond_14

    sget-object v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    if-eqz v6, :cond_14

    sget-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDisplayPopup:Z

    if-nez v6, :cond_14

    sget-object v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayPopup(Ljava/lang/String;)V

    :cond_14
    nop

    :cond_15
    :goto_4
    return-void

    :cond_16
    :goto_5
    move-object/from16 v10, p2

    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    const-string v0, "MTPRx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "check value of boot_completed is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v0, "1"

    sget-object v11, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1, v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->initializeSettingsValues(Landroid/content/ContentResolver;)V

    const-string v0, "MTPRx"

    const-string v11, "check booting is completed_sys.boot_completed"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_17
    const-string v0, "MTPRx"

    const-string v6, "check booting is not completed_sys.boot_completed, so just return"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    return-void

    :cond_18
    const-string v0, "MTPRx"

    const-string v11, "check boot_completed is coming null_dev.sfbootcomplete"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getExternalStorageStatus()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "mtp_running_status"

    invoke-static {v4, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v8, v0, :cond_19

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    if-ne v8, v0, :cond_19

    sput-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-nez v0, :cond_19

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const-string v0, "MTPRx"

    const-string v6, "MTP is already running. Setting the status to unlock"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mtp_drive_display"

    invoke-static {v4, v0, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "dev.kies.drivedisplay"

    const-string v6, "1"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->startDBupdate()V

    :cond_19
    return-void

    :cond_1a
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v11, 0xc

    if-eqz v0, :cond_3a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    if-nez v12, :cond_1b

    const-string v0, "MTPRx"

    const-string v6, "extras from bundle is null. So return"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    const-string v0, "connected"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    const-string v0, "configured"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    const-string v0, "mtp"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    const-string v0, "ptp"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    const-string v0, "sec_charging"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    const-string v0, "unlocked"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    const-string v0, "config_changed"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->configChanged:Z

    const-string v0, "host_connected"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->hostConnected:Z

    const-string v0, "categories"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpCategoryEnabled:Z

    const-string v0, "mtp_running_status"

    invoke-static {v4, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value of connected is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value of configured is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value of mtpEnabled is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value of ptpEnabled is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value of sec_charging is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value of usb_data_unlock is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value of configChanged is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->configChanged:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value of hostConnected is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->hostConnected:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value of categoryEnabled is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpCategoryEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received USB_STATE with sdCardLaunch = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "sdcard_launch"

    invoke-static {v4, v15, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->configChanged:Z

    if-nez v0, :cond_39

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->hostConnected:Z

    if-eqz v0, :cond_1c

    move-object/from16 v17, v3

    goto/16 :goto_e

    :cond_1c
    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    if-nez v0, :cond_1d

    const-string v0, "MTPRx"

    const-string v14, "Unexpected Disconnection. call usbRemoved."

    invoke-static {v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    :cond_1d
    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    if-eqz v0, :cond_1f

    :cond_1e
    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "usb_data_unlock is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", so set lock status."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    :cond_1f
    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    if-eqz v0, :cond_36

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-eqz v0, :cond_20

    goto :goto_7

    :cond_20
    move-object/from16 v17, v3

    goto/16 :goto_d

    :cond_21
    :goto_7
    if-ne v13, v8, :cond_22

    const-string v0, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mtpRunningStatus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPRx"

    const-string v6, "MTP already launched. So return."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    const-string v0, "bolt5gkx"

    sget-object v14, Lcom/samsung/android/MtpApplication/MtpReceiver;->deviceProductName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "boltq5gvzw"

    sget-object v14, Lcom/samsung/android/MtpApplication/MtpReceiver;->deviceProductName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    const-string v0, "false"

    sget-object v14, Lcom/samsung/android/MtpApplication/MtpReceiver;->deviceProductShip:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "enable_mtp_settings"

    invoke-static {v0, v14, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_24
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "mtp_switch_to_usb20"

    invoke-static {v0, v14, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v8, v0, :cond_25

    const-string v0, "SWITCH20"

    invoke-virtual {v1, v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayPopup(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "mtp_switch_to_usb20"

    invoke-static {v0, v14, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_25
    const-string v0, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mFirstTime: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    if-nez v0, :cond_28

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-static {}, Lcom/samsung/android/encryption/EncryptionKey;->getkey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/mtp/MTPJNIInterface;->SetCryptionKey(Ljava/lang/String;)V

    :cond_26
    const/4 v14, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    sget-object v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v15, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :try_start_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    const-string v0, "MTPRx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentUserId is "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    nop

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v9, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mtpCurrentGlobalUserId is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    if-eq v0, v9, :cond_27

    const/16 v9, 0x64

    if-ge v0, v9, :cond_27

    const-string v7, "MTPRx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentUserId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mtpCurrentGlobalUserId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " so not lauch MTP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const-string v9, "MTPRx"

    const-string v14, "Start observing USB_STATE_MATCH "

    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v14, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v9, v14}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    sput-boolean v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_28
    :goto_8
    const-string v0, "sdcard_launch"

    invoke-static {v4, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v8, v0, :cond_29

    const-string v0, "MTPRx"

    const-string v6, "SD card launch, so just return!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sdcard_launch"

    invoke-static {v4, v0, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isPrivateMode()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    return-void

    :cond_29
    new-instance v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    invoke-direct {v0, v2}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getPcGUID()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "enable_mtp_settings"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDayDreamConnectCheck()Z

    move-result v9

    sput-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDayDreamConnected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getUsbdebugStatus()Z

    move-result v9

    if-nez v9, :cond_2a

    if-eq v6, v8, :cond_2a

    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCtsappInstalled:Z

    if-eqz v9, :cond_2b

    :cond_2a
    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-nez v9, :cond_2b

    const-string v9, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enableMtpSettings is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "MTPRx"

    const-string v14, "skip to display MTP popup."

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_2b
    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-nez v9, :cond_2d

    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDayDreamConnected:Z

    if-nez v9, :cond_2d

    sget-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-eqz v9, :cond_2e

    sget-object v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    if-eqz v9, :cond_2c

    sget-object v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->isExistGUID(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2d

    :cond_2c
    sget-object v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    if-nez v9, :cond_2e

    :cond_2d
    const-string v9, "MTPRx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Phone is locked for first connection. sec_charging : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v9, :cond_2e

    const-string v9, "mtp_running_status"

    invoke-static {v4, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v9, v11}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    sput-boolean v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    const-string v9, "mtp_drive_display"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v9, "dev.kies.drivedisplay"

    const-string v14, "0"

    invoke-static {v9, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isPrivateMode()Z

    move-result v9

    sput-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    sget-object v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v14, "keyguard"

    invoke-virtual {v9, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v14

    const/4 v15, 0x0

    if-ne v8, v14, :cond_2f

    const-string v7, "MTPRx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Phone is locked : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v15

    if-eqz v15, :cond_2f

    const-string v7, "MTPRx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Secure lock : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v7, :cond_2f

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const/4 v7, 0x1

    sput-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    const-string v7, "mtp_drive_display"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "dev.kies.drivedisplay"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "MTPRx"

    const-string v8, "Setting the status to phone Lock"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    sget-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-eqz v7, :cond_30

    const-string v7, "dev.kies.drivedisplay.trust"

    const-string v8, "4"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_30
    const-string v7, "dev.kies.drivedisplay.trust"

    if-eqz v15, :cond_31

    const/4 v8, 0x1

    goto :goto_a

    :cond_31
    const/4 v8, 0x0

    :goto_a
    const/4 v11, 0x1

    shl-int/2addr v8, v11

    sget-boolean v11, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    or-int/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const-string v7, "dev.kies.drivedisplay.trust"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->driverdisplayStatus:Ljava/lang/String;

    const-string v7, "MTPRx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "driverdisplay.trust Status = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/android/MtpApplication/MtpReceiver;->driverdisplayStatus:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v7, :cond_32

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v7, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_32
    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "shared_device_status"

    const/4 v11, 0x0

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "MTPRx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "Shared devices keyguard status: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne v7, v0, :cond_33

    const-string v0, "MTPRx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Secure lock : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v17, v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    const-string v0, "mtp_drive_display"

    const/4 v3, 0x0

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "dev.kies.drivedisplay"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MTPRx"

    const-string v3, "Setting the status to phone Lock"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_33
    move-object/from16 v17, v3

    :cond_34
    :goto_c
    const-string v0, "boot_time_connected"

    const/4 v3, 0x0

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v8, 0x1

    if-ne v8, v0, :cond_35

    const-string v0, "boot_time_connected"

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "MTPRx"

    const-string v3, "Sending NORMAL_BOOT to stack"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_35

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_35
    goto :goto_f

    :cond_36
    move-object/from16 v17, v3

    :goto_d
    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    if-eqz v0, :cond_38

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    if-nez v0, :cond_38

    const/4 v3, 0x1

    if-ne v13, v3, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    const-string v0, "MTPRx"

    const-string v3, "tethering is started so turning off MTP "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const-string v0, "MTPRx"

    const-string v3, "tethering is started and mtp is not running so returning"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    const-string v0, "MTPRx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configured is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    move-object/from16 v17, v3

    :goto_e
    const-string v0, "MTPRx"

    const-string v3, "skip intent. configChanged / hostConnected is true"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3a
    move-object/from16 v17, v3

    :goto_f
    iget-object v0, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_3b

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    :cond_3b
    iget-object v0, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->admin:Landroid/content/ComponentName;

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->semGetAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "MTPRx"

    const-string v3, "desktop sync is not allowed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const v6, 0x103012b

    invoke-direct {v0, v3, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f050015

    const/4 v6, 0x1

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    iget-object v0, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    return-void

    :cond_3c
    const/4 v3, 0x0

    const-string v0, "mtp_usb_conditions_met"

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isEDMRestrictionPolicy()Z

    move-result v0

    const/16 v3, 0x1b

    if-nez v0, :cond_3d

    const-string v0, "MTPRx"

    const-string v6, "MTP is blocked by admin case1"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_3d

    const/4 v6, 0x1

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->policyStatusSet:Z

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v0, v3}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getPersonaId()I

    move-result v0

    iget-object v6, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v6, :cond_3e

    iget-object v6, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v6

    if-nez v6, :cond_3e

    const-string v3, "MTPRx"

    const-string v6, "User is personal"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_3e
    const-string v6, "MTPRx"

    const-string v7, "User is Knox!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v6, :cond_3f

    const/4 v6, 0x1

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->policyStatusSet:Z

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v7, v3}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto :goto_11

    :cond_3f
    :goto_10
    const/4 v6, 0x1

    :goto_11
    const-string v3, "mtp_running_status"

    invoke-static {v4, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "user_setup_complete"

    invoke-static {v4, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sget-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpCategoryEnabled:Z

    sget-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    if-eqz v6, :cond_40

    const-string v6, "MTPRx"

    const-string v7, "sending PTP_ICON_ENABLED to stack "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x6f

    invoke-direct {v1, v2, v4, v6}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    goto :goto_12

    :cond_40
    sget-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-eqz v6, :cond_42

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eq v3, v7, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getUsbdebugStatus()Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "MTPRx"

    const-string v8, "setupwizard is not finished"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v7, :cond_42

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const/4 v7, 0x1

    sput-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    const-string v7, "mtp_drive_display"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "dev.kies.drivedisplay"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "MTPRx"

    const-string v8, "Setting the status to phone Lock"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_41
    const-string v7, "MTPRx"

    const-string v8, "sending MTP_ICON_ENABLED to stack"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x6e

    invoke-direct {v1, v2, v4, v7}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    :cond_42
    :goto_12
    const-string v6, "MTPRx"

    const-string v7, "else part ... so first time!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V

    sget-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpCategoryEnabled:Z

    return-void

    :catch_3
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v17, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public declared-synchronized usbRemoved()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_running_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "MTPRx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MTP_RUNNING_STATUS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    const/4 v4, 0x0

    sput-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCharging()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MTPRx"

    const-string v5, "USB cable is detached, so enable_mtp_settings set 0"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_mtp_settings"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    sget-boolean v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-ne v4, v3, :cond_2

    const-string v4, "MTPRx"

    const-string v5, " sendbooster is true, so release booster"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->setDvfsBooster(Z)V

    goto :goto_0

    :cond_2
    const-string v4, "MTPRx"

    const-string v5, " sendbooster is false!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ne v3, v1, :cond_3

    const-string v4, "MTPRx"

    const-string v5, "In usbRemoved Status bar enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "mtp_running_status"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->finishSync()V

    const-string v4, "mtp_usb_conditions_met"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "mtp_usb_connection_status"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "mtp_drive_display"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "dev.kies.drivedisplay"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mtp_sync_alive"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "sdcard_launch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "mtp_event_status"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mtp_open_session"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "dev.mtp.opensession"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
