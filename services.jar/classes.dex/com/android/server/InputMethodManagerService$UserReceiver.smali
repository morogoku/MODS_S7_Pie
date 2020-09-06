.class Lcom/android/server/InputMethodManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$3200(Lcom/android/server/InputMethodManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    # invokes: Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z
    invoke-static {v1, v2}, Lcom/android/server/InputMethodManagerService;->access$3300(Lcom/android/server/InputMethodManagerService;I)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_USER_PRESENT : current user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ef

    :cond_44
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-nez v1, :cond_ef

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$3200(Lcom/android/server/InputMethodManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8b

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$3200(Lcom/android/server/InputMethodManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    move v3, v4

    :goto_65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8b

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # invokes: Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z
    invoke-static {v5, v6}, Lcom/android/server/InputMethodManagerService;->access$3300(Lcom/android/server/InputMethodManagerService;I)Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_8b

    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    :cond_8b
    :goto_8b
    const/4 v3, -0x1

    if-eq v2, v3, :cond_ee

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->legacyKnoxProcess:I
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->access$3400(Lcom/android/server/InputMethodManagerService;)I

    move-result v5

    if-ne v5, v3, :cond_ee

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a1

    goto :goto_ee

    :cond_a1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isKnoxProcessRunning(I)Z
    invoke-static {v3, v2}, Lcom/android/server/InputMethodManagerService;->access$3500(Lcom/android/server/InputMethodManagerService;I)Z

    move-result v3

    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_USER_PRESENT : current user : 0 / Samsung workspace : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / isKnoxProcessRunning : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    if-nez v3, :cond_ea

    :try_start_cb
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d0} :catch_e1
    .catchall {:try_start_cb .. :try_end_d0} :catchall_df

    :try_start_d0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleKnoxKeyboard(II)Z
    invoke-static {v8, v2, v4}, Lcom/android/server/InputMethodManagerService;->access$3600(Lcom/android/server/InputMethodManagerService;II)Z

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # setter for: Lcom/android/server/InputMethodManagerService;->legacyKnoxProcess:I
    invoke-static {v4, v2}, Lcom/android/server/InputMethodManagerService;->access$3402(Lcom/android/server/InputMethodManagerService;I)I

    monitor-exit v7

    goto :goto_ea

    :catchall_dc
    move-exception v4

    monitor-exit v7
    :try_end_de
    .catchall {:try_start_d0 .. :try_end_de} :catchall_dc

    :try_start_de
    throw v4
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_df} :catch_e1
    .catchall {:try_start_de .. :try_end_df} :catchall_df

    :catchall_df
    move-exception v4

    goto :goto_e6

    :catch_e1
    move-exception v4

    :try_start_e2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_df

    goto :goto_ea

    :goto_e6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_ea
    :goto_ea
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ef

    :cond_ee
    :goto_ee
    return-void

    :cond_ef
    :goto_ef
    return-void
.end method
