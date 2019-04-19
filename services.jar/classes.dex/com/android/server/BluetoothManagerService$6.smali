.class Lcom/android/server/BluetoothManagerService$6;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$6;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1d

    const/4 v0, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$6902(Z)Z

    const-string v0, "BluetoothManagerService -- enable(), China popup state : positive"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :try_start_c
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$6;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService;->enable(Ljava/lang/String;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "BluetoothManagerService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    goto :goto_22

    :cond_1d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->cancelChinaPopupState()V
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$7000(Lcom/android/server/BluetoothManagerService;)V

    :goto_22
    if-eqz p1, :cond_27

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_27
    return-void
.end method
