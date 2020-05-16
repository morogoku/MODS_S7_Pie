.class Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;
.super Landroid/content/BroadcastReceiver;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PogoKeyboardChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/HardwareManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->register()V

    return-void
.end method

.method private register()V
    .registers 8

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->access$1700(Lcom/android/server/desktopmode/HardwareManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_3d

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sticky intent action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const-string v3, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string/jumbo v4, "status"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->updatePogoKeyboardStatus(Z)V
    invoke-static {v3, v4}, Lcom/android/server/desktopmode/HardwareManager;->access$1800(Lcom/android/server/desktopmode/HardwareManager;Z)V

    :cond_52
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_21

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive(), action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string/jumbo v2, "status"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # invokes: Lcom/android/server/desktopmode/HardwareManager;->updatePogoKeyboardStatus(Z)V
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/HardwareManager;->access$1800(Lcom/android/server/desktopmode/HardwareManager;Z)V

    :cond_36
    return-void
.end method
