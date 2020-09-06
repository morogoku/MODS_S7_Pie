.class final Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;
.super Landroid/os/Handler;
.source "GenericCoverServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/GenericCoverServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericPressServiceControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1a

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/GenericCoverServiceController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->access$100(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Bundle;)V

    goto :goto_1a

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/GenericCoverServiceController;->handleSendPowerKeyToCover(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->access$000(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Bundle;)V

    nop

    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
