.class Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
.super Ljava/lang/Object;
.source "DeveloperModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String; = "262144"

.field private static final DEFAULT_USB_FUNCTION:Ljava/lang/String; = "none"

.field static final GLOBAL_SETTINGS_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final HDCP_DEFAULT_VALUE:Ljava/lang/String; = "drm-only"

.field private static final MSAA_PROPERTY:Ljava/lang/String; = "debug.egl.force_msaa"

.field private static final MULTI_WINDOW_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.sys.debug.multi_window"

.field private static final OPENGL_TRACES_PROPERTY:Ljava/lang/String; = "debug.egl.trace"

.field private static final PACKAGE_SETTINGS_APP:Ljava/lang/String; = "com.android.settings"

.field static final SECURE_SETTINGS_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SELECT_LOGD_SIZE_PROPERTY:Ljava/lang/String; = "persist.logd.size"

.field private static final SURFACE_COMPOSER:Ljava/lang/String; = "android.ui.ISurfaceComposer"

.field private static final SURFACE_FLINGER_SERVICE:Ljava/lang/String; = "SurfaceFlinger"

.field static final SYSTEM_PROPERTIES_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SYSTEM_SETTINGS_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeveloperModeSettings"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->SYSTEM_SETTINGS_DEFAULT:Ljava/util/Map;

    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$2;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$2;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->SECURE_SETTINGS_DEFAULT:Ljava/util/Map;

    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$3;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$3;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->GLOBAL_SETTINGS_DEFAULT:Ljava/util/Map;

    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->SYSTEM_PROPERTIES_DEFAULT:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isShowingScreenUpdateAndReloadSurface()Z
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v5, 0x3f2

    invoke-interface {v2, v5, v3, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v1, v7

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_37} :catch_38

    :cond_37
    goto :goto_54

    :catch_38
    move-exception v2

    const-string v3, "DeveloperModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFlingerOptions: RemoteException ex -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    if-eqz v1, :cond_58

    const/4 v0, 0x1

    nop

    :cond_58
    return v0
.end method

.method private resetAppProcessLimitOptions()Z
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_b

    nop

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const-string v1, "DeveloperModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetAppProcessLimitOptions: RemoteException ex -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private resetBluetoothHCILog()V
    .registers 3

    const-string/jumbo v0, "persist.bluetooth.btsnoopenable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetCpuUsageOptions()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_processes"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private resetDebugApps()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    nop

    return v3

    :catch_c
    move-exception v1

    return v0
.end method

.method private resetDrawingOptions()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->isShowingScreenUpdateAndReloadSurface()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_21

    const/16 v3, 0x3ea

    invoke-interface {v1, v3, v2, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    :cond_21
    const/16 v3, 0x3f0

    invoke-interface {v1, v3, v2, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->isShowingScreenUpdateAndReloadSurface()Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2c} :catch_2f

    :cond_2c
    nop

    const/4 v0, 0x1

    return v0

    :catch_2f
    move-exception v1

    const-string v2, "DeveloperModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetShowUpdatesOption: RemoteException ex -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private resetGlobalSettings()Z
    .registers 7

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->GLOBAL_SETTINGS_DEFAULT:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_b

    :cond_2f
    return v0
.end method

.method private resetImmediatelyDestroyActivitiesOptions()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_b

    nop

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v1

    const-string v2, "DeveloperModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetImmediatelyDestroyActivitiesOptions: RemoteException ex -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private resetRtlOptions()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "debug.force_rtl"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "debug.force_rtl"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method

.method private resetSecureSettings()Z
    .registers 7

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->SECURE_SETTINGS_DEFAULT:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_b

    :cond_2f
    return v0
.end method

.method private resetSelectUsbConfig()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    return-void
.end method

.method private resetSystemProperties()V
    .registers 5

    sget-object v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->SYSTEM_PROPERTIES_DEFAULT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_26
    return-void
.end method

.method private resetSystemSettings()Z
    .registers 7

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->SYSTEM_SETTINGS_DEFAULT:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_b

    :cond_2f
    return v0
.end method

.method private resetUsbAuth()Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    const-string/jumbo v3, "ro.adb.secure"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "trigger_restart_min_framework"

    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v3, :cond_28

    if-nez v4, :cond_28

    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_28} :catch_2b

    :cond_28
    nop

    const/4 v0, 0x1

    return v0

    :catch_2b
    move-exception v1

    const-string v2, "DeveloperModeSettings"

    const-string v3, "Unable to clear adb keys"

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private resetWifiManagerSettings()V
    .registers 1

    return-void
.end method

.method private resetWindowManagerOptions()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    const/4 v4, 0x2

    invoke-interface {v1, v4, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    const-string v2, ""

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1e} :catch_20

    nop

    return v3

    :catch_20
    move-exception v1

    const-string v2, "DeveloperModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetWindowManagerOptions: RemoteException ex -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method resetDeveloperModeOptions()Z
    .registers 8

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetBluetoothHCILog()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetMockLocationApps()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetDebugApps()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetWifiManagerSettings()V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetUsbAuth()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetDrawingOptions()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetRtlOptions()V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetWindowManagerOptions()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetCpuUsageOptions()V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetAppProcessLimitOptions()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetImmediatelyDestroyActivitiesOptions()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetSystemSettings()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetGlobalSettings()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetSecureSettings()Z

    move-result v3

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetSystemProperties()V

    new-instance v3, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;

    invoke-direct {v3}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_89

    :try_start_51
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const-string v4, "com.android.settings"

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_60} :catch_61
    .catchall {:try_start_51 .. :try_end_60} :catchall_89

    goto :goto_7d

    :catch_61
    move-exception v3

    :try_start_62
    const-string v4, "DeveloperModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "killSettings: RemoteException ex -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_89

    :goto_7d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v3, "DeveloperModeSettings"

    const-string v4, "allowDeveloperMode: false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_89
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method resetMockLocationApps()Z
    .registers 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x3a

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    const-string v5, "appops"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_52

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_51

    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :try_start_3d
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x200

    invoke-virtual {v10, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v11, v8, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_4e} :catch_4f

    goto :goto_51

    :catch_4f
    move-exception v0

    return v3

    :cond_51
    :goto_51
    goto :goto_1c

    :cond_52
    return v0
.end method
