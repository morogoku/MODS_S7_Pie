.class public Lcom/android/server/spay/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final GETDATA_OF_INTENT:Ljava/lang/String; = "getdata_of_intent"

.field private static final TAG:Ljava/lang/String; = "UpdateReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/server/spay/UpdateReceiver$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/spay/UpdateReceiver$2;-><init>(Lcom/android/server/spay/UpdateReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/spay/UpdateReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateReceiver:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/spay/UpdateReceiver$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/spay/UpdateReceiver$1;-><init>(Lcom/android/server/spay/UpdateReceiver;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/android/server/spay/UpdateReceiver$1;->start()V

    :cond_26
    return-void
.end method

.method triggerPFInstall(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.spay.action.PFINSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.spay"

    const-string v3, "com.samsung.android.spay.common.us.LocalPFBroadcastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "com.samsung.android.spay.permission.INSTALL_PF"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
