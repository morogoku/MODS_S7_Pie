.class Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "SideScreenChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SideScreenChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SideScreenChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SideScreenChangeNotificationController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_68

    goto :goto_66

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    # getter for: Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenMinimizedChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$800(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/SideScreenChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_66

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    # getter for: Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifyLidStateChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$700(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/SideScreenChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_66

    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    # getter for: Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenModeChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$600(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/SideScreenChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_66

    :pswitch_2a
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    # getter for: Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenDockSideChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$500(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/SideScreenChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_66

    :pswitch_36
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    # getter for: Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenWindowsDrawn:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$400(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/SideScreenChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_66

    :pswitch_42
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    # getter for: Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenTaskSwitched:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$300(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/SideScreenChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_66

    :pswitch_4e
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    # getter for: Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenMenuVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$200(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/SideScreenChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_66

    :pswitch_5a
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    # getter for: Lcom/android/server/am/SideScreenChangeNotificationController;->mNotifySideScreenVisibilityChanged:Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;
    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$000(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/SideScreenChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    nop

    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method
