.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$3;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$600()Z

    move-result v1

    if-eqz v1, :cond_14

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "receive Locale changed intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$3;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->showEnforcedLockTypeNotificationForAllUser()V
    invoke-static {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    return-void
.end method