.class Lcom/samsung/android/knox/kiosk/KioskMode$3;
.super Ljava/lang/Object;
.source "KioskMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/kiosk/KioskMode;->disableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
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
.method constructor <init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/IKioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iput-object p3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3c

    new-instance v3, Lcom/samsung/android/knox/kiosk/KioskSetting;

    invoke-direct {v3}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    move-object v0, v3

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    iput v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    :cond_3c
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # invokes: Lcom/samsung/android/knox/kiosk/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$000(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v3

    if-nez v3, :cond_4d

    const-string v4, "KioskMode"

    const-string v5, "Failed talking with restriction service"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    :cond_4d
    :try_start_4d
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_62

    const-string v5, "KioskMode"

    const-string v6, "allow settings changes failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_62} :catch_63

    :cond_62
    goto :goto_6b

    :catch_63
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow settings changes"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6b
    :try_start_6b
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_80

    const-string v5, "KioskMode"

    const-string v6, "allow status bar expansion failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_80} :catch_81

    :cond_80
    goto :goto_89

    :catch_81
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow status bar expansion"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_89
    :try_start_89
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_9f

    const-string v5, "KioskMode"

    const-string/jumbo v6, "set home key state failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_9f} :catch_a0

    :cond_9f
    goto :goto_a8

    :catch_a0
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to set home key state"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a8
    :try_start_a8
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_bd

    const-string v5, "KioskMode"

    const-string v6, "allow smart clip mode failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_bd} :catch_be

    :cond_bd
    goto :goto_c6

    :catch_be
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow smart clip mode"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c6
    :try_start_c6
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_dd

    const-string v5, "KioskMode"

    const-string v6, "allow air command failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_dd} :catch_de

    :cond_dd
    goto :goto_e6

    :catch_de
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow air command mode"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e6
    :try_start_e6
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_fd

    const-string v5, "KioskMode"

    const-string v6, "allow air view failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_fd} :catch_fe

    :cond_fd
    goto :goto_106

    :catch_fe
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow air view mode"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_106
    iget-object v4, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    if-eqz v4, :cond_14a

    iget-object v4, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    nop

    :goto_113
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_12c

    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_113

    :cond_12c
    :try_start_12c
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    invoke-interface {v1, v5, v4, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object v1

    if-nez v1, :cond_141

    const-string v5, "KioskMode"

    const-string v6, "allowHardwareKeys failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_141} :catch_142

    :cond_141
    goto :goto_14a

    :catch_142
    move-exception v1

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow hardware keys"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14a
    :goto_14a
    :try_start_14a
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_162

    const-string v4, "KioskMode"

    const-string/jumbo v5, "set multiwindow mode failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catch Landroid/os/RemoteException; {:try_start_14a .. :try_end_162} :catch_163

    :cond_162
    goto :goto_16b

    :catch_163
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow multiwindow mode"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16b
    :try_start_16b
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_183

    const-string v4, "KioskMode"

    const-string/jumbo v5, "set task manager failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_183} :catch_184

    :cond_183
    goto :goto_18c

    :catch_184
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow task manager"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18c
    iget-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    if-eqz v1, :cond_1ae

    :try_start_190
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_1a5

    const-string v4, "KioskMode"

    const-string v5, "clear all notifications failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a5
    .catch Landroid/os/RemoteException; {:try_start_190 .. :try_end_1a5} :catch_1a6

    :cond_1a5
    goto :goto_1ae

    :catch_1a6
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to clear all notifications"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1ae
    :goto_1ae
    :try_start_1ae
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_1c5

    const-string v4, "KioskMode"

    const-string v5, "hide navigationbar failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c5
    .catch Landroid/os/RemoteException; {:try_start_1ae .. :try_end_1c5} :catch_1c6

    :cond_1c5
    goto :goto_1ce

    :catch_1c6
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to hide navigationbar"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1ce
    :try_start_1ce
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_1e5

    const-string v4, "KioskMode"

    const-string v5, "hide status bar failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1ce .. :try_end_1e5} :catch_1e6

    :cond_1e5
    goto :goto_1ee

    :catch_1e6
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to hide status bar"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1ee
    :try_start_1ee
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_205

    const-string v4, "KioskMode"

    const-string v5, "hide system bar failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_205
    .catch Landroid/os/RemoteException; {:try_start_1ee .. :try_end_205} :catch_206

    :cond_205
    goto :goto_20e

    :catch_206
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to hide system bar"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20e
    iget-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    if-eqz v1, :cond_231

    :try_start_212
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_228

    const-string v4, "KioskMode"

    const-string/jumbo v5, "wipe recent task failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_228
    .catch Landroid/os/RemoteException; {:try_start_212 .. :try_end_228} :catch_229

    :cond_228
    goto :goto_231

    :catch_229
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to wipe recent task"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_231
    :goto_231
    :try_start_231
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    # getter for: Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    invoke-interface {v1, v4, v5, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v1

    if-nez v1, :cond_248

    const-string v2, "KioskMode"

    const-string v4, "Allow edge functions failed"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_248
    .catch Landroid/os/RemoteException; {:try_start_231 .. :try_end_248} :catch_249

    :cond_248
    goto :goto_251

    :catch_249
    move-exception v1

    const-string v2, "KioskMode"

    const-string v4, "Failed to Allow Edge Functions"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_251
    return-void
.end method
