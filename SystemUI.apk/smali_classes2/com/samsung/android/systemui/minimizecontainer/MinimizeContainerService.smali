.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;
.super Landroid/app/Service;
.source "MinimizeContainerService.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mFlipFolderStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

.field private mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

.field private mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSwitchReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$3;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mDateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$5;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mFlipFolderStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->sendMessageToMinimizeContainer(I)V

    return-void
.end method

.method private sendMessageToMinimizeContainer(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "MinimizeContainer"

    const-string v1, "[Service] onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v2, v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-string v3, "MinimizeContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Service] onConfigurationChanged: diff=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Ensure Rotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v3, v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    invoke-virtual {v3, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_2

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "MinimizeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Service] onConfigurationChanged: diff=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Rebuild all"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendEmptyMessage(I)Z

    :cond_3
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    const-string v1, "MinimizeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Service] onConfigurationChanged: diff=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Process re-create"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "MinimizeContainer"

    const-string v1, "[Service] onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mDateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mFlipFolderStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.flipfolder.OPEN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "MinimizeContainer"

    const-string v1, "[Service] onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mDateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mFlipFolderStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->sendMessageToMinimizeContainer(I)V

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->sendMessageToMinimizeContainer(I)V

    return-void
.end method
