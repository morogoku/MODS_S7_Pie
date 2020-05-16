.class Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexDualViewModeChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private restorePreviousUsedInputMethod()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DexDualViewModeChangeObserver : restorePreviousUsedInputMethod - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    if-eqz v0, :cond_30

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_30
    const-string v1, "InputMethodManagerService"

    const-string v2, "DexDualViewModeChangeObserver : Failed to return the previous IME becuase the stored info is null or do not need restore"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DexDualViewModeChangeObserver : Failed to return the previous IME becuase the stored ime is uninstalled pre imi id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_99

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    const-string v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    if-eqz v0, :cond_99

    const-string v2, "InputMethodManagerService"

    const-string v3, "Restore the Previous Used IME because KnoxDesktop Disconnected"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.sec.android.inputmethod.previous_inputmethod_dex"

    const-string v4, "-1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_bb

    :cond_99
    const-string v2, "InputMethodManagerService"

    const-string v3, "DexDualViewModeChangeObserver  restorePreviousUsedInputMethod reset Client because DualView option is change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    :try_start_a6
    const-string v2, "InputMethodManagerService"

    const-string v3, "DexDualViewModeChangeObserver startInputInnerLocked()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_b2
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_b2} :catch_b3

    goto :goto_bb

    :catch_b3
    move-exception v2

    const-string v3, "InputMethodManagerService"

    const-string v4, "Unexpected exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_bb
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_5
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DexDualViewModeChangeObserver- selfChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->getDisplayIdOfInputMethodWindowToBeAdded()I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$4600(Lcom/android/server/InputMethodManagerService;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz p1, :cond_75

    if-eqz v1, :cond_4b

    if-eqz v2, :cond_46

    const-string v4, "InputMethodManagerService"

    const-string v5, "DexDualViewModeChangeObserver  Client because DualView option is change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    goto/16 :goto_c7

    :cond_46
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->restorePreviousUsedInputMethod()V

    goto/16 :goto_c7

    :cond_4b
    if-eqz v2, :cond_c7

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "InputMethodManagerService"

    const-string v5, "DexDualViewModeChangeObserver set Default keyboard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setDefaultInputMethod()V
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;)V

    goto :goto_c7

    :cond_75
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService;->isDexDualViewModeEnable()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->restorePreviousUsedInputMethod()V

    goto :goto_c7

    :cond_81
    if-eqz v1, :cond_9e

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V
    :try_end_88
    .catchall {:try_start_5 .. :try_end_88} :catchall_c9

    :try_start_88
    const-string v3, "InputMethodManagerService"

    const-string v4, "DexDualViewModeChangeObserver startInputInnerLocked() When current keyboard is samsung keyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_88 .. :try_end_94} :catch_95
    .catchall {:try_start_88 .. :try_end_94} :catchall_c9

    goto :goto_9d

    :catch_95
    move-exception v3

    :try_start_96
    const-string v4, "InputMethodManagerService"

    const-string v5, "Unexpected exception"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9d
    goto :goto_c7

    :cond_9e
    if-eqz v2, :cond_c7

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "InputMethodManagerService"

    const-string v5, "DexDualViewModeChangeObserver set Default keyboard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setDefaultInputMethod()V
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;)V

    :cond_c7
    :goto_c7
    monitor-exit v0

    return-void

    :catchall_c9
    move-exception v1

    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_96 .. :try_end_cb} :catchall_c9

    throw v1
.end method
