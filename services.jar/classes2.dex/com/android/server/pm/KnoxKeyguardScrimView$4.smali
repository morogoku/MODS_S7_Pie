.class Lcom/android/server/pm/KnoxKeyguardScrimView$4;
.super Ljava/lang/Object;
.source "KnoxKeyguardScrimView.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 7

    const-string v0, "KnoxKeyguardScrimView"

    const-string v1, "On DesktopMode State Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    # invokes: Lcom/android/server/pm/KnoxKeyguardScrimView;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->access$100(Lcom/android/server/pm/KnoxKeyguardScrimView;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v0

    const/16 v1, -0x515

    if-eq v0, v1, :cond_89

    const-string v1, "KnoxKeyguardScrimView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current send personaId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "KnoxKeyguardEventFlag"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_58

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.knox.securefolder"

    const-string v4, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    # getter for: Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->access$200(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_6d

    :cond_58
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.knox.containeragent"

    const-string v4, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    # getter for: Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->access$300(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6d} :catch_6e

    :goto_6d
    goto :goto_89

    :catch_6e
    move-exception v1

    const-string v2, "KnoxKeyguardScrimView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start: threw an exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_89
    :goto_89
    return-void
.end method
