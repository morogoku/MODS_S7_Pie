.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListener.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mFlipFolderStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

.field private mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

.field private mPermissionUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FloatingNotificationListener"

    sput-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFlipFolderStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->sendMessageToFloatingNotificationContainer(I)V

    return-void
.end method

.method private isActivity(Landroid/app/PendingIntent;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.PendingIntent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isActivity"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private isInappropriateNotification(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isFloationgNotificationEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v3, "isInappropriateNotification floating noti disabled, request unbind"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_0
    iget-object v0, p3, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v2, "progress"

    if-eq v0, v2, :cond_6

    iget-object v0, p3, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v2, "service"

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInappropriateNotification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not supported package, return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget v0, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v3, "isInappropriateNotification maybe service noti return"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_3
    iget v0, p3, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v3, "isInappropriateNotification it\'s group summary noti return"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->isActivity(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v3, "isInappropriateNotification intent is not activity type return"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v3, "isInappropriateNotification it\'s progress noti, return"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method private sendMessageToFloatingNotificationContainer(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;->mFloatingNotiContainerHandler:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager$FloatingNotiContainerHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager$FloatingNotiContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;->mFloatingNotiContainerHandler:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager$FloatingNotiContainerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager$FloatingNotiContainerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v3, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v4, "orientation changed occurred"

    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;->getDisplayRotation()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    iget-object v3, v3, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;->mFloatingNotiContainerHandler:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager$FloatingNotiContainerHandler;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager$FloatingNotiContainerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    iget-object v4, v4, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;->mFloatingNotiContainerHandler:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager$FloatingNotiContainerHandler;

    invoke-virtual {v4, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager$FloatingNotiContainerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_2

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v3, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v4, "locale changed occurred"

    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->sendMessageToFloatingNotificationContainer(I)V

    :cond_3
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v3, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v4, "density changed occurred"

    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->sendMessageToFloatingNotificationContainer(I)V

    :cond_4
    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mPermissionUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isFreeformSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isFloationgNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFlipFolderStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.flipfolder.OPEN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->clearPackageDataWhenFreeformNotSuppored()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v2, "Freeform not supported at this device"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFlipFolderStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->sendMessageToFloatingNotificationContainer(I)V

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->sendMessageToFloatingNotificationContainer(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mPermissionUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    return-void
.end method

.method public onListenerConnected()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v3, "onListenerConnected"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->setNotificationServiceConnected(Z)V

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v2, "onListenerDisconnected"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->setNotificationServiceConnected(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->removeStateManager()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 13

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v8, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v9, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x0

    invoke-direct {p0, v6, v9, v7}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->isInappropriateNotification(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    :cond_1
    invoke-virtual {v7}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move v11, v0

    move-object v12, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v3, "large icon is null, load small icon"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationPostedsbn.packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationPostedsbn.key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationPostednotification.category : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    move-object v1, v6

    move-object v2, v9

    move-object v3, v12

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;->generateFloatingNotificationView(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0, v3, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->isInappropriateNotification(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    if-nez v4, :cond_1

    new-instance v4, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v5, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRemovedsbn.packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v5, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRemovedsbn.key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v5, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRemovednotification.category : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v5, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRemovednotification.EXTRA_TITLE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android.title"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v5, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRemovednotification.EXTRA_CHANNEL_ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v5, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRemovednotification.EXTRA_TEXT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android.text"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v5, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRemovednotification.EXTRA_SUMMARY_TEXT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android.summaryText"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->mFloatingNotificationContainerManager:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;->removeFloatingNotificationView(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
