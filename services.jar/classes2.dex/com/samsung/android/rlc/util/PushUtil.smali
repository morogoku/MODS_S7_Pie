.class public Lcom/samsung/android/rlc/util/PushUtil;
.super Ljava/lang/Object;
.source "PushUtil.java"


# static fields
.field public static final RETRY_CHECK_DVC:I = 0xe

.field public static final RETRY_DELIVERY_REPORT:I = 0x10

.field public static final RETRY_GCM:I = 0xb

.field public static final RETRY_GCM_MG:I = 0xd

.field public static final RETRY_RESULT_REPORT:I = 0xf

.field public static final RETRY_SPP:I = 0xa

.field public static final RETRY_SPP_MG:I = 0xc

.field public static final RETRY_THEFT_REPORT:I = 0x12

.field public static final RETRY_UNLOCK_REPORT:I = 0x11

.field public static final RET_TYPE:Ljava/lang/String; = "retType"

.field public static final STORAGE_NONE:I = -0x1

.field public static final STORAGE_PRIMARY:I = 0x0

.field public static final STORAGE_SECONDARY:I = 0x1

.field private static final SUPPORT_STORAGE_MANAGER:Z

.field public static final TAG:Ljava/lang/String;

.field public static final maxDate:I = 0x16d

.field public static messageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/samsung/android/rlc/util/PushUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    sput-boolean v0, Lcom/samsung/android/rlc/util/PushUtil;->SUPPORT_STORAGE_MANAGER:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIntentFlagStoppedPackages(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5

    sget-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v1, "[addIntentFlag]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-gt v1, v0, :cond_1b

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v3, "add Intent.FLAG_INCLUDE_STOPPED_PACKAGES"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-object p0
.end method

.method public static getDMDomain(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "rlc.dm.url"

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "rmm.samsung.com"

    :cond_c
    return-object v0
.end method

.method public static getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryURL(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2c

    const-string v1, "https://%s/mg/v1/push/deliveryreport"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2c
    const-string v1, "https://%s/mg/v1/push/deliveryreport"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "rmm.samsung.com"

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExternalSDCardStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getMGDomain(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "rlc.mg.url"

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "https://%s/dm/v1/dev/register"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-boolean v1, Lcom/samsung/android/rlc/util/PushUtil;->SUPPORT_STORAGE_MANAGER:Z

    if-eqz v1, :cond_28

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1f

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_1f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_30
    :goto_30
    return-object v0
.end method

.method public static getPushTypeList(Landroid/content/Context;)[Ljava/lang/String;
    .registers 8

    sget-object v0, Lcom/samsung/android/rlc/common/Extra$PushInfo;->DEFAULT_PUSH_TYPE_LIST:[Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    array-length v3, v0

    :goto_9
    if-ge v2, v3, :cond_32

    const-string v4, "SPP"

    aget-object v5, v0, v2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1e

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->isSPPClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-ne v6, v4, :cond_2f

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_1e
    const-string v4, "GCM"

    aget-object v5, v0, v2

    if-ne v4, v5, :cond_2f

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->isGCMClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-ne v6, v4, :cond_2f

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPushTypeList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_47

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.rlc"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_47

    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRLCClientVersionName]Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2a} :catch_2b

    return-object v1

    :catch_2b
    move-exception v0

    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException in getRLCClientVersionName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_47
    nop

    :goto_48
    const-string v0, "NONE"

    return-object v0
.end method

.method public static getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_6c

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_d
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/data/data/com.samsung.android.rlc/files/rlc.prop"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_47

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    sget-object v3, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_3c} :catch_4e
    .catchall {:try_start_d .. :try_end_3c} :catchall_4c

    nop

    nop

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_46
    return-object v0

    :cond_47
    nop

    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_5c

    goto :goto_5b

    :catchall_4c
    move-exception v3

    goto :goto_61

    :catch_4e
    move-exception v3

    :try_start_4f
    sget-object v4, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v5, "NO RLC Pro file "

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    if-eqz v2, :cond_6c

    :try_start_58
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    :goto_5b
    goto :goto_6c

    :catch_5c
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    :goto_61
    if-eqz v2, :cond_6b

    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_6b
    :goto_6b
    throw v3

    :cond_6c
    :goto_6c
    return-object v0
.end method

.method public static getSecondaryStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getExternalSDCardStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStoragePath(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_28

    goto :goto_f

    :pswitch_5
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getSecondaryStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :pswitch_a
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getPrimaryStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_f
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storagePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public static isGCMClientInstalled(Landroid/content/Context;)Z
    .registers 5

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/GCMReceiver;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/GCMReceiver;->isSignatureMatch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCMPushClient is installed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isSPPClientInstalled(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.spp.action.SPP_REQUEST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    sget-object v2, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPPPushClient is installed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x0

    const-string v0, "180000"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retry_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Save Retry Time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retry_"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v0, v11}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f5

    :cond_6c
    :try_start_6c
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/32 v15, 0x5265c00

    div-long v15, v13, v15

    const-wide/16 v17, 0x16d

    cmp-long v17, v15, v17

    if-lez v17, :cond_f0

    const/16 v8, 0xa

    if-eq v2, v8, :cond_da

    const/16 v8, 0xb

    if-ne v2, v8, :cond_a5

    goto :goto_da

    :cond_a5
    const/16 v8, 0x10

    if-ne v2, v8, :cond_b1

    sget-object v8, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v9, "Retry Time is expired"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_b1
    const/16 v8, 0xe

    if-ne v2, v8, :cond_f0

    sget-object v8, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v9, "Check retry Time is expired"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "callcheckapi"

    const-string v9, "Y"

    invoke-static {v1, v8, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v9, "CheckDeviceStatusManager : not supported device "

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "clearOp"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v9, 0xc

    invoke-static {v1, v8, v9}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_f0

    :cond_da
    :goto_da
    sget-object v8, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save Retry Time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/text/ParseException; {:try_start_6c .. :try_end_f0} :catch_f1

    :cond_f0
    :goto_f0
    goto :goto_f5

    :catch_f1
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_f5
    packed-switch v2, :pswitch_data_20e

    goto/16 :goto_19f

    :pswitch_fa
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rlc.THEFT_PROTECTION_RETRY"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string/jumbo v0, "theft_backoff"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "theft_backoff"

    goto/16 :goto_19f

    :pswitch_10e
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string/jumbo v0, "unlock_backoff"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "unlock_backoff"

    goto/16 :goto_19f

    :pswitch_122
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string v0, "delivery_backoff"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v5, "delivery_backoff"

    goto :goto_19f

    :pswitch_133
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rlc.REPORT_RETRY"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string/jumbo v0, "report_backoff"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "report_backoff"

    goto :goto_19f

    :pswitch_146
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string v0, "check_backoff"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v5, "check_backoff"

    goto :goto_19f

    :pswitch_157
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string v0, "gcm_mg_registration_backoff"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v5, "gcm_mg_registration_backoff"

    goto :goto_19f

    :pswitch_168
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string/jumbo v0, "spp_mg_registration_backoff"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "spp_mg_registration_backoff"

    goto :goto_19f

    :pswitch_17b
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string v0, "gcm_backoff"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v5, "gcm_backoff"

    goto :goto_19f

    :pswitch_18c
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string/jumbo v0, "spp_backoff"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "spp_backoff"

    nop

    :goto_19f
    move-object/from16 v8, p1

    invoke-virtual {v3, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheduling retry , back off time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x8000000

    const/4 v9, 0x0

    invoke-static {v1, v9, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v9, "alarm"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    int-to-long v13, v4

    add-long/2addr v11, v13

    invoke-virtual {v9, v10, v11, v12, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    mul-int/lit8 v4, v4, 0x2

    const v10, 0x44aa200

    if-gt v10, v4, :cond_208

    const v4, 0x44aa200

    const/16 v10, 0xe

    if-eq v2, v10, :cond_1fa

    const/16 v10, 0xc

    if-eq v2, v10, :cond_1fa

    const/16 v10, 0xd

    if-ne v2, v10, :cond_208

    :cond_1fa
    sget-object v10, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    const-string v11, "Retry back off for check api is max value"

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/rlc/service/RmmTask;->regConnReceiver(Landroid/content/Context;)V

    :cond_208
    invoke-static {v1, v5, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    return v4

    nop

    nop

    :pswitch_data_20e
    .packed-switch 0xa
        :pswitch_18c
        :pswitch_17b
        :pswitch_168
        :pswitch_157
        :pswitch_146
        :pswitch_133
        :pswitch_122
        :pswitch_10e
        :pswitch_fa
    .end packed-switch
.end method

.method public static declared-synchronized retryCancel(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-class v0, Lcom/samsung/android/rlc/util/PushUtil;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/rlc/util/PushUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action canceled ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_36

    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5

    const-string v0, "SPP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_1b

    :cond_12
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    :goto_1b
    return-void
.end method
