.class Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "POGOKeyboardReceiver"
.end annotation


# instance fields
.field private mIsPOGOConnect:Z

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->mIsPOGOConnect:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputMethodManagerService onReceive() intentAction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->mIsPOGOConnect:Z

    const/16 v2, 0x30

    # |= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$976(I)I

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1000(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    # invokes: Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforJapaneseKeyboard()V

    goto :goto_5f

    :cond_42
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1200(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    # invokes: Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforChineseKeyboard()V

    goto :goto_5f

    :cond_5a
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    :goto_5f
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_SupportKcmForHwKeyboard"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a4

    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$1400()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a4

    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$1400()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    goto :goto_a4

    :cond_92
    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    const/16 v1, -0x31

    # &= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$972(I)I

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    :cond_a4
    :goto_a4
    return-void
.end method
