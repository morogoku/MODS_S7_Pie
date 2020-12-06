.class Lcom/samsung/android/knox/kiosk/KioskMode$1;
.super Ljava/lang/Object;
.source "KioskMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/kiosk/KioskMode;->enableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

.field final synthetic val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

.field final synthetic val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;Lcom/samsung/android/knox/kiosk/IKioskMode;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    iput-object p3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_28

    new-instance v2, Lcom/samsung/android/knox/kiosk/KioskSetting;

    invoke-direct {v2}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    move-object v0, v2

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    iput v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    :cond_28
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # invokes: Lcom/samsung/android/knox/kiosk/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$000(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    if-nez v2, :cond_39

    const-string v3, "KioskMode"

    const-string v4, "Failed talking with restriction service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget-boolean v4, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v4, "KioskMode"

    const-string v5, "allow settings changes failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4e} :catch_4f

    :cond_4e
    goto :goto_57

    :catch_4f
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow settings changes"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    :try_start_57
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget-boolean v4, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_6c

    const-string v4, "KioskMode"

    const-string v5, "allow status bar expansion failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_6c} :catch_6d

    :cond_6c
    goto :goto_75

    :catch_6d
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow status bar expansion"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_75
    :try_start_75
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget-boolean v4, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_8b

    const-string v4, "KioskMode"

    const-string/jumbo v5, "set home key state failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_8b} :catch_8c

    :cond_8b
    goto :goto_94

    :catch_8c
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to set home key state"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_94
    :try_start_94
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget-boolean v4, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_a9

    const-string v4, "KioskMode"

    const-string v5, "allow smart clip mode failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_a9} :catch_aa

    :cond_a9
    goto :goto_b2

    :catch_aa
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow smart clip mode"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b2
    :try_start_b2
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_ca

    const-string v4, "KioskMode"

    const-string/jumbo v5, "set air command mode failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_ca} :catch_cb

    :cond_ca
    goto :goto_d3

    :catch_cb
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow air command mode"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3
    :try_start_d3
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_eb

    const-string v4, "KioskMode"

    const-string/jumbo v5, "set air view mode failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_eb} :catch_ec

    :cond_eb
    goto :goto_f4

    :catch_ec
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow air view mode"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f4
    iget-object v3, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    if-eqz v3, :cond_138

    iget-object v3, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    move v4, v1

    :goto_101
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_11a

    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_101

    :cond_11a
    :try_start_11a
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    invoke-interface {v4, v5, v3, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object v4

    if-nez v4, :cond_12f

    const-string v5, "KioskMode"

    const-string v6, "allowHardwareKeys failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catch Landroid/os/RemoteException; {:try_start_11a .. :try_end_12f} :catch_130

    :cond_12f
    goto :goto_138

    :catch_130
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow hardware keys"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_138
    :goto_138
    :try_start_138
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_150

    const-string v4, "KioskMode"

    const-string/jumbo v5, "set multiwindow mode failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_150} :catch_151

    :cond_150
    goto :goto_159

    :catch_151
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow multiwindow mode"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_159
    :try_start_159
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_171

    const-string v4, "KioskMode"

    const-string/jumbo v5, "set task manager failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_171
    .catch Landroid/os/RemoteException; {:try_start_159 .. :try_end_171} :catch_172

    :cond_171
    goto :goto_17a

    :catch_172
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow task manager"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17a
    iget-boolean v3, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    if-eqz v3, :cond_19c

    :try_start_17e
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_193

    const-string v4, "KioskMode"

    const-string v5, "clear all notifications failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_193
    .catch Landroid/os/RemoteException; {:try_start_17e .. :try_end_193} :catch_194

    :cond_193
    goto :goto_19c

    :catch_194
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to clear all notifications"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19c
    :goto_19c
    :try_start_19c
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_1b3

    const-string v4, "KioskMode"

    const-string v5, "hide system bar failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_1b3} :catch_1b4

    :cond_1b3
    goto :goto_1bc

    :catch_1b4
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to hide system bar"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1bc
    :try_start_1bc
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_1d3

    const-string v4, "KioskMode"

    const-string v5, "hide navigationbar failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d3
    .catch Landroid/os/RemoteException; {:try_start_1bc .. :try_end_1d3} :catch_1d4

    :cond_1d3
    goto :goto_1dc

    :catch_1d4
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to hide navigationbar"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1dc
    :try_start_1dc
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_1f3

    const-string v4, "KioskMode"

    const-string v5, "hide status bar failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f3
    .catch Landroid/os/RemoteException; {:try_start_1dc .. :try_end_1f3} :catch_1f4

    :cond_1f3
    goto :goto_1fc

    :catch_1f4
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to hide status bar"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1fc
    iget-boolean v3, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    if-eqz v3, :cond_21f

    :try_start_200
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_216

    const-string v4, "KioskMode"

    const-string/jumbo v5, "wipe recent task failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_216
    .catch Landroid/os/RemoteException; {:try_start_200 .. :try_end_216} :catch_217

    :cond_216
    goto :goto_21f

    :catch_217
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Failed to wipe recent task"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21f
    :goto_21f
    :try_start_21f
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    invoke-interface {v3, v4, v5, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v1

    if-nez v1, :cond_236

    const-string v3, "KioskMode"

    const-string v4, "block edge functions failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_236
    .catch Landroid/os/RemoteException; {:try_start_21f .. :try_end_236} :catch_237

    :cond_236
    goto :goto_23f

    :catch_237
    move-exception v1

    const-string v3, "KioskMode"

    const-string v4, "Failed to Block Edge Functions"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23f
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v1

    if-nez v1, :cond_25d

    :try_start_247
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    const-string v4, "com.sec.android.kiosk"

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_254
    .catch Landroid/os/RemoteException; {:try_start_247 .. :try_end_254} :catch_255

    goto :goto_25d

    :catch_255
    move-exception v1

    const-string v3, "KioskMode"

    const-string v4, "Failed talking with kiosk mode service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25d
    :goto_25d
    return-void
.end method
