.class Lcom/android/systemui/volume/SecVolumeDialogImpl$3;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$702(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$802(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$702(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$902(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$802(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1002(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;)Ljava/lang/String;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
