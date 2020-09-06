.class final Lcom/android/server/sepunion/cover/SmartCoverAppController;
.super Ljava/lang/Object;
.source "SmartCoverAppController.java"


# static fields
.field static final PATH_PLAYSTORE:Ljava/lang/String; = "1market://details?id=<"

.field static final PATH_SAMSUNGAPPS:Ljava/lang/String; = "samsungapps://ProductDetail/<"

.field private static final SAFE_DEBUG:Z = true

.field static final SMARTCOVER_CATEGORY:Ljava/lang/String; = "com.samsung.android.sdk.cover.category.LAUNCHER"

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mSmartCoverPackageName:Ljava/lang/String;

.field private static mSmartCoverServiceIntent:Landroid/content/Intent;

.field private static packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mIsRegisterReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/SmartCoverAppController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    new-instance v0, Lcom/android/server/sepunion/cover/SmartCoverAppController$1;

    invoke-direct {v0}, Lcom/android/server/sepunion/cover/SmartCoverAppController$1;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    const-string v1, "SmartCoverMonitor constructor"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    invoke-static {}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->startSmartCoverService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()V
    .registers 0

    invoke-static {}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->stopSmartCoverService()V

    return-void
.end method

.method private controlCoverService(Z)V
    .registers 5

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    const-string v1, "controlCoverService"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3d

    invoke-static {}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->startSmartCoverService()Z

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    if-nez v0, :cond_56

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "smartCoverAttachStateChanged : register Receiver"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/sepunion/cover/SmartCoverAppController;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    goto :goto_56

    :cond_3d
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    if-eqz v0, :cond_53

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "smartCoverAttachStateChanged : unregister Receiver"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/sepunion/cover/SmartCoverAppController;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    :cond_53
    invoke-static {}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->stopSmartCoverService()V

    :cond_56
    :goto_56
    return-void
.end method

.method private static startSmartCoverService()Z
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.sdk.cover.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSmartCoverService : start service - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.samsung.android.sdk.cover.category.LAUNCHER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    return v0
.end method

.method private static stopSmartCoverService()V
    .registers 3

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSmartCoverService : stop service - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.samsung.android.sdk.cover.category.LAUNCHER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_2e
    return-void
.end method


# virtual methods
.method public getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public smartCoverAttachStateChanged(ZLjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smartCoverAttachStateChanged : attach = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", smartCoverAppUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "smartCoverAttachStateChanged : package name is null. So couldn\'t do anything."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smartCoverAttachStateChanged : package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->controlCoverService(Z)V

    return-void
.end method

.method public startCoverService(ZLjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCoverService : attach = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p2, Lcom/android/server/sepunion/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    if-nez p2, :cond_2c

    sget-object v0, Lcom/android/server/sepunion/cover/SmartCoverAppController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCoverService : package name is null. So couldn\'t do anything."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/SmartCoverAppController;->controlCoverService(Z)V

    return-void
.end method
