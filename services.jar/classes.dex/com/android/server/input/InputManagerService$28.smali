.class Lcom/android/server/input/InputManagerService$28;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$3600(Lcom/android/server/input/InputManagerService;)Z

    move-result v1

    if-eqz v1, :cond_10d

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$3700(Lcom/android/server/input/InputManagerService;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_4e

    :cond_39
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$3800(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V
    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->access$3900(Lcom/android/server/input/InputManagerService;)V

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    invoke-static {v5, v4}, Lcom/android/server/input/InputManagerService;->access$4000(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;
    invoke-static {v5, v1}, Lcom/android/server/input/InputManagerService;->access$3702(Lcom/android/server/input/InputManagerService;Ljava/util/Locale;)Ljava/util/Locale;

    :goto_4e
    goto/16 :goto_10d

    :cond_50
    const-string v1, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const-string/jumbo v1, "set"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "force"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "package"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    const/4 v5, 0x3

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "InputManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8f

    move-object v7, v3

    goto :goto_92

    :cond_8f
    const-string/jumbo v7, "null"

    :goto_92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    if-eqz v3, :cond_ae

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    :cond_ae
    const-string/jumbo v3, "retail"

    :cond_b1
    if-eqz v3, :cond_c0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c0

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v5, v1, v4, v2, v3}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    :cond_c0
    goto :goto_10d

    :cond_c1
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mDensity:I
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$4100(Lcom/android/server/input/InputManagerService;)I

    move-result v2

    if-eq v2, v1, :cond_e9

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mDensity:I
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->access$4102(Lcom/android/server/input/InputManagerService;I)I

    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    :cond_e9
    goto :goto_10d

    :cond_ea
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputKeyCounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/input/InputKeyCounter;->surveyEnabled()Z

    move-result v1

    if-eqz v1, :cond_10d

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputKeyCounter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$28;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputKeyCounter;->kickOldies(Landroid/content/Context;)V

    :cond_10d
    :goto_10d
    return-void
.end method
