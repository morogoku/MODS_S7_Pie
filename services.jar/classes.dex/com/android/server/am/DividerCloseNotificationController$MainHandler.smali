.class Lcom/android/server/am/DividerCloseNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "DividerCloseNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DividerCloseNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DividerCloseNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DividerCloseNotificationController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/DividerCloseNotificationController$MainHandler;->this$0:Lcom/android/server/am/DividerCloseNotificationController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_10

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/DividerCloseNotificationController$MainHandler;->this$0:Lcom/android/server/am/DividerCloseNotificationController;

    iget-object v1, p0, Lcom/android/server/am/DividerCloseNotificationController$MainHandler;->this$0:Lcom/android/server/am/DividerCloseNotificationController;

    # getter for: Lcom/android/server/am/DividerCloseNotificationController;->mNotifyAlreadyRunningOnDockedStack:Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;
    invoke-static {v1}, Lcom/android/server/am/DividerCloseNotificationController;->access$000(Lcom/android/server/am/DividerCloseNotificationController;)Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/DividerCloseNotificationController;->forAllRemoteListeners(Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/DividerCloseNotificationController;->access$100(Lcom/android/server/am/DividerCloseNotificationController;Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;Landroid/os/Message;)V

    :goto_10
    return-void
.end method
