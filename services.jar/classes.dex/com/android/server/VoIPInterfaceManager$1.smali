.class Lcom/android/server/VoIPInterfaceManager$1;
.super Ljava/lang/Object;
.source "VoIPInterfaceManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoIPInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VoIPInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/server/VoIPInterfaceManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$1;->this$0:Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$1;->this$0:Lcom/android/server/VoIPInterfaceManager;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/server/VoIPInterfaceManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->access$202(Lcom/android/server/VoIPInterfaceManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :cond_b
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$1;->this$0:Lcom/android/server/VoIPInterfaceManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/VoIPInterfaceManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->access$202(Lcom/android/server/VoIPInterfaceManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :cond_9
    return-void
.end method
