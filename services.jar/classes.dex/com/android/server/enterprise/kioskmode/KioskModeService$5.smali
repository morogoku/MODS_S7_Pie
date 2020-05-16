.class Lcom/android/server/enterprise/kioskmode/KioskModeService$5;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_22

    const-string v2, "KioskModeService"

    const-string v3, "can\'t get user id"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_97

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    :try_start_30
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-interface {v3, v2, v4, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_5b

    const-string v4, "KioskModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not installed at userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V
    invoke-static {v4, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1100(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5a} :catch_5c

    return-void

    :cond_5b
    goto :goto_5d

    :catch_5c
    move-exception v3

    :goto_5d
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1200(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_86

    const-string v3, "KioskModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is disabled by admin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V
    invoke-static {v3, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1100(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    return-void

    :cond_86
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1300(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V
    invoke-static {v3, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1100(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    :cond_97
    return-void
.end method
