.class Lcom/android/server/display/WifiDisplayAdapter$10;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->updateDeviceState(Landroid/hardware/display/SemDeviceInfo;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$appToken:Landroid/os/IBinder;

.field final synthetic val$deviceInfo:Landroid/hardware/display/SemDeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDeviceInfo;Landroid/os/IBinder;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$deviceInfo:Landroid/hardware/display/SemDeviceInfo;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$appToken:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$deviceInfo:Landroid/hardware/display/SemDeviceInfo;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$deviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    goto :goto_34

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/DlnaController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$deviceInfo:Landroid/hardware/display/SemDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$appToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DlnaController;->updateDeviceState(Landroid/hardware/display/SemDeviceInfo;Landroid/os/IBinder;)V

    goto :goto_34

    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mGoogleCastController:Lcom/android/server/display/GoogleCastController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$300(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/GoogleCastController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$deviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/display/GoogleCastController;->updateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V

    goto :goto_34

    :pswitch_28
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$deviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayController;->updateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V

    nop

    :cond_34
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_1c
        :pswitch_e
    .end packed-switch
.end method
