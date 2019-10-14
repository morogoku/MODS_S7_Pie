.class Lcom/android/server/BluetoothManagerService$8;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;->enablePopupForBluetooth(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;

.field final synthetic val$keyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/app/KeyguardManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$8;->this$0:Lcom/android/server/BluetoothManagerService;

    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$8;->val$keyguardManager:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$8;->val$keyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$8;->val$keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$8;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->cancelChinaPopupState()V
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$7000(Lcom/android/server/BluetoothManagerService;)V

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1d
    :try_start_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x13a00000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$8;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return v0
.end method
