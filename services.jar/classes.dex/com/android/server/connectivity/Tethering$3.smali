.class Lcom/android/server/connectivity/Tethering$3;
.super Landroid/os/ResultReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iput p3, p0, Lcom/android/server/connectivity/Tethering$3;->val$type:I

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$3;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v1, p0, Lcom/android/server/connectivity/Tethering$3;->val$type:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$3;->val$receiver:Landroid/os/ResultReceiver;

    # invokes: Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V

    goto :goto_14

    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$3;->val$receiver:Landroid/os/ResultReceiver;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V
    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    :goto_14
    return-void
.end method
