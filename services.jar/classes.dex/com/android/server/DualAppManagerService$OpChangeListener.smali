.class public Lcom/android/server/DualAppManagerService$OpChangeListener;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DualAppManagerService$OpChangeListener;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 11

    sget v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    if-eqz v0, :cond_d

    const-string v0, "DualAppManagerService"

    const-string/jumbo v1, "onOpChanged() is in progress"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const/4 v0, 0x1

    sput v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    const/4 v0, 0x0

    :try_start_11
    # getter for: Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$000()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    # getter for: Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$300()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_27} :catch_5d
    .catchall {:try_start_11 .. :try_end_27} :catchall_59

    if-nez v2, :cond_2c

    sput v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    return-void

    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v1, p1, v3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, p1, v4, p2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-string v7, "Permission related app op changed"

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_58} :catch_5d
    .catchall {:try_start_2c .. :try_end_58} :catchall_59

    goto :goto_5e

    :catchall_59
    move-exception v1

    sput v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    throw v1

    :catch_5d
    move-exception v1

    :goto_5e
    sput v0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    nop

    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "DualAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOpChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
