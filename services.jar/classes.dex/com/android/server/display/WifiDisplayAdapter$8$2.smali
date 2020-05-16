.class Lcom/android/server/display/WifiDisplayAdapter$8$2;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayAdapter$8;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter$8;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothReceiverConnected:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "force to set as false and remove receiver(BluetoothReceiver)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothReceiverConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Z)Z

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v2, "com.samsung.intent.action.BLUETOOTH_RECEIVER_CONNECTION_CHANGED"

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->broadcastBluetoothState(Ljava/lang/String;I)V
    invoke-static {v0, v2, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;I)V

    :try_start_23
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$8$2;->this$1:Lcom/android/server/display/WifiDisplayAdapter$8;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_36} :catch_37

    goto :goto_40

    :catch_37
    move-exception v0

    const-string v1, "WifiDisplayAdapter"

    const-string/jumbo v2, "unregisterReceiver:: BluetoothBroadcastReceiver not registered!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    return-void
.end method
