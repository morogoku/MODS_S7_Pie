.class final Lcom/android/server/am/MultiDisplayManagerService$UiHandler;
.super Landroid/os/Handler;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiDisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# static fields
.field private static final SHOW_DISPLAY_CHOOSER_UI_MSG:I


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiDisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_51

    :cond_5
    const-string v0, "MultiDisplayManager"

    const-string/jumbo v1, "show DisplayChooser"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/DisplayChooserInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v2, v2, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;
    invoke-static {v3}, Lcom/android/server/am/MultiDisplayManagerService;->access$000(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mUiContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/MultiDisplayManagerService;->access$100(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;
    invoke-static {v4}, Lcom/android/server/am/MultiDisplayManagerService;->access$000(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    goto :goto_41

    :cond_3b
    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mUiContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/MultiDisplayManagerService;->access$100(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;

    move-result-object v3

    :goto_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    new-instance v2, Lcom/android/server/am/DisplayChooserDialog;

    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v4, v4, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/am/DisplayChooserDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/DisplayChooserInfo;I)V

    invoke-virtual {v2}, Lcom/android/server/am/DisplayChooserDialog;->show()V

    :goto_51
    return-void

    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method
