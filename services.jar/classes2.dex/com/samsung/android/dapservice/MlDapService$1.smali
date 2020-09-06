.class Lcom/samsung/android/dapservice/MlDapService$1;
.super Landroid/content/BroadcastReceiver;
.source "MlDapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/dapservice/MlDapService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/dapservice/MlDapService;


# direct methods
.method constructor <init>(Lcom/samsung/android/dapservice/MlDapService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/dapservice/MlDapService$1;->this$0:Lcom/samsung/android/dapservice/MlDapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/samsung/android/dapservice/MlDapService$1;Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "com.samsung.android.mirrorlink.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.mirrorlink"

    const-string v3, "com.samsung.android.mirrorlink.acms.receivers.AcmsPackageEventListener"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/dapservice/MlDapService$1;->this$0:Lcom/samsung/android/dapservice/MlDapService;

    # getter for: Lcom/samsung/android/dapservice/MlDapService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/dapservice/MlDapService;->access$000(Lcom/samsung/android/dapservice/MlDapService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/dapservice/-$$Lambda$MlDapService$1$9qlL16Pfscs1v6ITrzmXWq42B0E;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/dapservice/-$$Lambda$MlDapService$1$9qlL16Pfscs1v6ITrzmXWq42B0E;-><init>(Lcom/samsung/android/dapservice/MlDapService$1;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
