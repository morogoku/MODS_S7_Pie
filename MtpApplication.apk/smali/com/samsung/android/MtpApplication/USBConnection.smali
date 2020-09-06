.class public Lcom/samsung/android/MtpApplication/USBConnection;
.super Landroid/app/Activity;
.source "USBConnection.java"


# static fields
.field private static AllowClicked:Ljava/lang/String;

.field private static LoggingEnabled:Z

.field private static final countryCode:Ljava/lang/String;

.field private static final deviceType:Ljava/lang/String;

.field public static prefs_string:Ljava/lang/String;

.field private static final salesCode:Ljava/lang/String;


# instance fields
.field final TAG:Ljava/lang/String;

.field checkBox:Landroid/widget/CheckBox;

.field checkBoxView:Landroid/view/View;

.field mDialog:Landroid/app/AlertDialog;

.field private mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

.field private final mUSBRemovalReceiver:Landroid/content/BroadcastReceiver;

.field private statusUpdate:Landroid/mtp/MTPJNIInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/MtpApplication/USBConnection;->prefs_string:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/USBConnection;->LoggingEnabled:Z

    sput-object v0, Lcom/samsung/android/MtpApplication/USBConnection;->AllowClicked:Ljava/lang/String;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/USBConnection;->salesCode:Ljava/lang/String;

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/USBConnection;->deviceType:Ljava/lang/String;

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/USBConnection;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "MTPUSBConnection"

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->checkBoxView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->checkBox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/MtpApplication/USBConnection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/USBConnection$1;-><init>(Lcom/samsung/android/MtpApplication/USBConnection;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mUSBRemovalReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/samsung/android/MtpApplication/USBConnection;->AllowClicked:Ljava/lang/String;

    return-object p0
.end method

.method private isKnoxCustomProKioskState()Z
    .locals 9

    const/4 v0, 0x0

    const-string v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getSealedState"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_0
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "getSealedState"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    :goto_0
    return v0
.end method

.method private isKnoxCustomUsbConnectionType()Z
    .locals 9

    const/4 v0, 0x0

    const-string v1, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getUsbConnectionTypeInternal"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_0
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "getUsbConnectionTypeInternal"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private isNightMode(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_night_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    nop

    :goto_0
    return v0
.end method

.method private registerBroadCastRec()V
    .locals 2

    const-string v0, "MTPUSBConnection"

    const-string v1, "Registering broadcast receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.mtp.usbremoval"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mUSBRemovalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/MtpApplication/USBConnection;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method MtpGSIMLogging(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MTPUSBConnection"

    const-string v1, "Inside MtpGSIMLogging"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    const-string v2, "com.samsung.android.MtpApplicaion"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    const-string v2, "MTPA"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/MtpApplication/USBConnection;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MTPUSBConnection"

    const-string v1, "onCreate in USBConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->registerBroadCastRec()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/MtpApplication/USBConnection;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->showDiaglog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MTPUSBConnection"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mUSBRemovalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/MtpApplication/USBConnection;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const-string v0, "Deny"

    sget-object v1, Lcom/samsung/android/MtpApplication/USBConnection;->AllowClicked:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/MtpApplication/USBConnection;->LoggingEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/MtpApplication/USBConnection;->AllowClicked:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/MtpApplication/USBConnection;->MtpGSIMLogging(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->changeChargingMode()V

    goto :goto_0

    :cond_2
    const-string v0, "Allow"

    sget-object v1, Lcom/samsung/android/MtpApplication/USBConnection;->AllowClicked:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/MtpApplication/USBConnection;->LoggingEnabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/MtpApplication/USBConnection;->AllowClicked:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/MtpApplication/USBConnection;->MtpGSIMLogging(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->changeMtpMode()V

    :cond_4
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public showDiaglog()V
    .locals 15

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-direct {v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "MTPUSBConnection"

    const-string v2, "can\'t get mode value since getExtras is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "MTPUSBConnection"

    const-string v3, "can\'t get mode value since modeType is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "MTPUSBConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlertDialog Mode is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v4, "MTPUSBConnection"

    const-string v5, "context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/android/MtpApplication/USBConnection;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v3, v5

    if-nez v3, :cond_3

    const-string v5, "MTPUSBConnection"

    const-string v6, "ContentResolver is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V

    return-void

    :cond_3
    const-string v5, "mtp_running_status"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "MTPUSBConnection"

    const-string v6, "MTP_RUNNING_STATUS is 0, so return."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_4
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v7, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v5, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    sput-boolean v7, Lcom/samsung/android/MtpApplication/USBConnection;->LoggingEnabled:Z

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->isKnoxCustomProKioskState()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "TRUSTMTP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->changeMtpMode()V

    const-string v5, "MTPUSBConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKnoxCustomProKioskState is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->isKnoxCustomProKioskState()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->isKnoxCustomUsbConnectionType()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "TRUSTMTP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mReceiver:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->changeMtpMode()V

    const-string v5, "MTPUSBConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKnoxCustomUsbConnectionType is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->isKnoxCustomUsbConnectionType()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V

    return-void

    :cond_7
    const/4 v5, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_8

    new-instance v9, Landroid/app/AlertDialog$Builder;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    const v11, 0x1030128

    invoke-direct {v10, p0, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v5, v9

    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x103012e

    invoke-direct {v9, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v8, v9

    goto :goto_0

    :cond_8
    new-instance v9, Landroid/app/AlertDialog$Builder;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    const v11, 0x103012b

    invoke-direct {v10, p0, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v5, v9

    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x1030132

    invoke-direct {v9, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v8, v9

    :goto_0
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/MtpApplication/USBConnection$2;

    invoke-direct {v9, p0}, Lcom/samsung/android/MtpApplication/USBConnection$2;-><init>(Lcom/samsung/android/MtpApplication/USBConnection;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/MtpApplication/USBConnection$3;

    invoke-direct {v9, p0}, Lcom/samsung/android/MtpApplication/USBConnection$3;-><init>(Lcom/samsung/android/MtpApplication/USBConnection;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const/high16 v10, 0x7f030000

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/MtpApplication/USBConnection;->checkBoxView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/MtpApplication/USBConnection;->checkBoxView:Landroid/view/View;

    const/high16 v12, 0x7f070000

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/samsung/android/MtpApplication/USBConnection;->checkBox:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/samsung/android/MtpApplication/USBConnection;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v10, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v10, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, -0x629965af

    if-eq v12, v13, :cond_a

    const v13, -0x238526bf

    if-eq v12, v13, :cond_9

    goto :goto_1

    :cond_9
    const-string v12, "TIMEOUT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move v10, v6

    goto :goto_1

    :cond_a
    const-string v12, "TRUSTMTP"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move v10, v7

    :cond_b
    :goto_1
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string v7, "VZW"

    sget-object v10, Lcom/samsung/android/MtpApplication/USBConnection;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const v7, 0x7f050025

    invoke-virtual {p0, v7}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/samsung/android/MtpApplication/USBConnection;->deviceType:Ljava/lang/String;

    if-eqz v7, :cond_c

    sget-object v7, Lcom/samsung/android/MtpApplication/USBConnection;->deviceType:Ljava/lang/String;

    const-string v10, "tablet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, 0x7f050027

    invoke-virtual {p0, v7}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_c
    const v7, 0x7f050026

    invoke-virtual {p0, v7}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_2
    const-string v7, "layout_inflater"

    invoke-virtual {v8, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v10, 0x7f030001

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f070002

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<u>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x7f050028

    invoke-virtual {p0, v13}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "</u>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/samsung/android/MtpApplication/USBConnection$5;

    invoke-direct {v12, p0}, Lcom/samsung/android/MtpApplication/USBConnection$5;-><init>(Lcom/samsung/android/MtpApplication/USBConnection;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_d
    sget-object v7, Lcom/samsung/android/MtpApplication/USBConnection;->deviceType:Ljava/lang/String;

    if-eqz v7, :cond_e

    sget-object v7, Lcom/samsung/android/MtpApplication/USBConnection;->deviceType:Ljava/lang/String;

    const-string v10, "tablet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    const v7, 0x7f05002b

    invoke-virtual {p0, v7}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f05002d

    invoke-virtual {p0, v7}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_e
    const v7, 0x7f05002a

    invoke-virtual {p0, v7}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f05002c

    invoke-virtual {p0, v7}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_3
    const v7, 0x7f050021

    new-instance v10, Lcom/samsung/android/MtpApplication/USBConnection$6;

    invoke-direct {v10, p0}, Lcom/samsung/android/MtpApplication/USBConnection$6;-><init>(Lcom/samsung/android/MtpApplication/USBConnection;)V

    invoke-virtual {v5, v7, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f050022

    new-instance v10, Lcom/samsung/android/MtpApplication/USBConnection$7;

    invoke-direct {v10, p0}, Lcom/samsung/android/MtpApplication/USBConnection$7;-><init>(Lcom/samsung/android/MtpApplication/USBConnection;)V

    invoke-virtual {v5, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    :pswitch_1
    const-string v10, "dev.kies.drivedisplay.trust"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "sys.usb.config"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "conn_gadget"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v6, "MTPUSBConnection"

    const-string v7, "is conn_gadget mode. so do not show Driver timeout popup."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V

    return-void

    :cond_f
    const-string v12, "4"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string v6, "MTPUSBConnection"

    const-string v7, "is VZW / SEC Charging Mode. so do not show Driver timeout popup."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V

    return-void

    :cond_10
    sget-boolean v12, Lcom/samsung/android/MtpApplication/MtpReceiver;->isDayDreamConnected:Z

    if-eqz v12, :cond_11

    const-string v6, "MTPUSBConnection"

    const-string v7, "is isDayDreamConnected. so do not show Driver timeout popup."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V

    return-void

    :cond_11
    const v12, 0x7f050003

    invoke-virtual {p0, v12}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v12, Lcom/samsung/android/MtpApplication/USBConnection;->salesCode:Ljava/lang/String;

    const-string v13, "VZW"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    sget-object v12, Lcom/samsung/android/MtpApplication/USBConnection;->countryCode:Ljava/lang/String;

    const-string v13, "CHINA"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    const v12, 0x7f050029

    invoke-virtual {p0, v12}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-array v7, v7, [Ljava/lang/Object;

    const-string v13, "https://www.samsung.com/smartswitch"

    aput-object v13, v7, v6

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_12
    const v12, 0x7f050024

    invoke-virtual {p0, v12}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "https://www.android.com/filetransfer"

    aput-object v14, v13, v6

    const-string v14, "https://www.samsung.com/smartswitch"

    aput-object v14, v13, v7

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_13
    const v12, 0x7f050023

    invoke-virtual {p0, v12}, Lcom/samsung/android/MtpApplication/USBConnection;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-array v7, v7, [Ljava/lang/Object;

    const-string v13, "https://www.android.com/filetransfer"

    aput-object v13, v7, v6

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_4
    const v7, 0x7f05000f

    new-instance v12, Lcom/samsung/android/MtpApplication/USBConnection$4;

    invoke-direct {v12, p0}, Lcom/samsung/android/MtpApplication/USBConnection$4;-><init>(Lcom/samsung/android/MtpApplication/USBConnection;)V

    invoke-virtual {v5, v7, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    nop

    :goto_5
    const-string v7, "USBConnectionPReference"

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/MtpApplication/USBConnection;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    sget-object v10, Lcom/samsung/android/MtpApplication/USBConnection;->prefs_string:Ljava/lang/String;

    invoke-interface {v7, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "MTPUSBConnection"

    const-string v10, "[Do not ask again] is checked."

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V

    return-void

    :cond_14
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/USBConnection;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
