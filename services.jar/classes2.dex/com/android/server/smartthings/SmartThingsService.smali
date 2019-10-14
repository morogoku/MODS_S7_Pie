.class public Lcom/android/server/smartthings/SmartThingsService;
.super Landroid/os/Binder;
.source "SmartThingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;
    }
.end annotation


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final SMARTTHINGS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field private static final TAG:Ljava/lang/String; = "SmartThingsService"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.oneconnect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;-><init>(Lcom/android/server/smartthings/SmartThingsService;Lcom/android/server/smartthings/SmartThingsService$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/server/smartthings/SmartThingsService;->backgroundWhitelist(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/smartthings/SmartThingsService;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/smartthings/SmartThingsService;->backgroundWhitelist(Landroid/content/Context;)V

    return-void
.end method

.method private backgroundWhitelist(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.oneconnect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_27

    if-nez v1, :cond_18

    goto :goto_27

    :cond_18
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->backgroundWhitelistUid(I)V

    const-string v3, "SmartThingsService"

    const-string v4, "backgroundWhitelist successfully called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_27
    :goto_27
    const-string v2, "SmartThingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backgroundWhitelist: bad uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uidString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception v0

    const-string v1, "SmartThingsService"

    const-string v2, "backgroundWhitelist exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    return-void
.end method
