.class public Lcom/android/systemui/onehandoperation/OHOService;
.super Landroid/app/Service;
.source "OHOService.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBinder:Landroid/os/Binder;

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/onehandoperation/OHOService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/onehandoperation/OHOService;->mBinder:Landroid/os/Binder;

    new-instance v0, Lcom/android/systemui/onehandoperation/OHOService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/onehandoperation/OHOService$1;-><init>(Lcom/android/systemui/onehandoperation/OHOService;)V

    iput-object v0, p0, Lcom/android/systemui/onehandoperation/OHOService;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/onehandoperation/OHOService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/onehandoperation/OHOService;->mBound:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/onehandoperation/OHOService;->DEBUG:Z

    return v0
.end method

.method private bindToOneHandSvc(Z)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/onehandoperation/OHOService;->getSGPIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/onehandoperation/OHOService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/onehandoperation/OHOService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/onehandoperation/OHOService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/onehandoperation/OHOService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "OHOService"

    const-string v3, "failed on bindToOneHandSvc() : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sget-boolean v1, Lcom/android/systemui/onehandoperation/OHOService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OHOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindToOneHandSvc() enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static getSGPIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.sidegesturepad"

    const-string v2, "com.samsung.android.sidegesturepad.SGPService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "OHOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind() intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/onehandoperation/OHOService;->bindToOneHandSvc(Z)V

    iget-object v0, p0, Lcom/android/systemui/onehandoperation/OHOService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "OHOService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/android/systemui/onehandoperation/OHOService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "OHOService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/onehandoperation/OHOService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/systemui/onehandoperation/OHOService;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
