.class Lcom/android/server/policy/SamsungPhoneWindowManager$25;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->registerDesktopModeManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDesktopModeChanged$0(Lcom/android/server/policy/SamsungPhoneWindowManager$25;Z)V
    .registers 7

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bixby_enabled"

    const-string v4, "false"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/policy/SamsungPhoneWindowManager;->getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2300(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2202(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .registers 7

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopDockConnectionChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bixby_enabled"

    const-string v4, "false"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/policy/SamsungPhoneWindowManager;->getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2300(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2202(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .registers 5

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$25$4gknsyVrr1Q3MF5Hl2KlFMuHAqM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$25$4gknsyVrr1Q3MF5Hl2KlFMuHAqM;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager$25;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
